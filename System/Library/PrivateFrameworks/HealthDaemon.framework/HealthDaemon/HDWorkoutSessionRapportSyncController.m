@interface HDWorkoutSessionRapportSyncController
+ (id)_decodedTransactionWithData:(id)a3 error:(id *)a4;
- (BOOL)_isDataRateLimiterDisabledByUserDefaults;
- (HDWorkoutSessionRapportSyncController)initWithRapportMessenger:(id)a3 sessionServer:(id)a4;
- (double)heartbeatInterval;
- (double)heartbeatReceiveTimeout;
- (id)sessionConfiguration;
- (id)sessionGlobalState;
- (void)_cancelReceiveHeartbeatTimeout;
- (void)_cancelSendHeartbeat;
- (void)_cancelSendHeartbeatTimeout;
- (void)_enqueueTransaction:(id)a3 requestName:(id)a4;
- (void)_lock_cancelReceiveHeartbeatTimeout;
- (void)_lock_cancelSendHeartbeat;
- (void)_lock_cancelSendHeartbeatTimeout;
- (void)_receiveHeartbeatDidTimeout;
- (void)_resetHeartbeat;
- (void)_scheduleHeartbeat;
- (void)_scheduleReceiveHeartbeatTimeout;
- (void)_scheduleSendHeartbeatTimeout;
- (void)_sendHeartbeat;
- (void)_sendPendingTransactions;
- (void)rapportMessenger:(id)a3 didReceiveRequest:(id)a4 data:(id)a5 responseHandler:(id)a6;
- (void)receivedBackgroundRuntimeRequestWithCompletion:(id)a3;
- (void)receivedCurrentActivityUpdate:(id)a3 completion:(id)a4;
- (void)receivedDataFromRemoteWorkoutSession:(id)a3 completion:(id)a4;
- (void)receivedEventUpdate:(id)a3 completion:(id)a4;
- (void)receivedHeartbeatWithCompletion:(id)a3;
- (void)receivedMirroringStopRequestWithCompletion:(id)a3;
- (void)receivedRecoveryRequestWithResponseHandler:(id)a3;
- (void)receivedStateEvent:(id)a3 completion:(id)a4;
- (void)receivedStateUpdate:(id)a3 completion:(id)a4;
- (void)sendCurrentActivityUpdate:(id)a3 completion:(id)a4;
- (void)sendDataToRemoteWorkoutSession:(id)a3 completion:(id)a4;
- (void)sendEventUpdate:(id)a3 completion:(id)a4;
- (void)sendMirroringStartRequestWithCompletion:(id)a3;
- (void)sendMirroringStopRequestWithCompletion:(id)a3;
- (void)sendRequest:(id)a3 transaction:(id)a4 completion:(id)a5;
- (void)sendRequest:(id)a3 transaction:(id)a4 responseHandler:(id)a5;
- (void)sendStateEvent:(int64_t)a3 date:(id)a4 completion:(id)a5;
- (void)sendStateUpdate:(int64_t)a3 date:(id)a4 completion:(id)a5;
@end

@implementation HDWorkoutSessionRapportSyncController

- (HDWorkoutSessionRapportSyncController)initWithRapportMessenger:(id)a3 sessionServer:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = HDWorkoutSessionRapportSyncController;
  v9 = [(HDWorkoutSessionRapportSyncController *)&v21 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_rapportMessenger, a3);
    objc_storeWeak(&v10->_sessionServer, v8);
    v11 = [objc_alloc(MEMORY[0x277CCD878]) initWithLimit:102400 timeInterval:10.0];
    dataRateLimiter = v10->_dataRateLimiter;
    v10->_dataRateLimiter = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lock_pendingTransactionsByRequest = v10->_lock_pendingTransactionsByRequest;
    v10->_lock_pendingTransactionsByRequest = v13;

    if ([v8 sessionType] == 1)
    {
      [(HDWorkoutSessionRapportSyncController *)v10 _scheduleReceiveHeartbeatTimeout];
    }

    if (![v8 sessionType] && objc_msgSend(v8, "isMirroring"))
    {
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        v18 = v15;
        v19 = objc_opt_class();
        *buf = 138543362;
        v23 = v19;
        v20 = v19;
        _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Session was previously mirroring, resume heartbeats", buf, 0xCu);
      }

      [(HDWorkoutSessionRapportSyncController *)v10 _scheduleHeartbeat];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)sendMirroringStartRequestWithCompletion:(id)a3
{
  v4 = a3;
  [(HDWorkoutSessionRapportSyncController *)self _scheduleHeartbeat];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__HDWorkoutSessionRapportSyncController_sendMirroringStartRequestWithCompletion___block_invoke;
  v5[3] = &unk_27861EE38;
  v5[4] = self;
  [(HDWorkoutSessionRapportSyncController *)self sendRequest:@"startMirroring" transaction:v5 completion:v4];
}

void __81__HDWorkoutSessionRapportSyncController_sendMirroringStartRequestWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 sessionConfiguration];
  [v4 setConfiguration:v5];

  v6 = [*(a1 + 32) sessionGlobalState];
  [v4 setGlobalState:v6];
}

- (id)sessionConfiguration
{
  v3 = objc_alloc_init(HDCodableWorkoutSessionConfiguration);
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  v5 = [WeakRetained workoutConfiguration];
  v6 = [v5 codableRepresentationForSync];
  [(HDCodableWorkoutSessionConfiguration *)v3 setWorkoutConfiguration:v6];

  v7 = objc_loadWeakRetained(&self->_sessionServer);
  v8 = [v7 taskServer];
  v9 = [v8 client];
  v10 = [v9 sourceBundleIdentifier];

  if ([v10 isEqualToString:*MEMORY[0x277CCE4A8]])
  {
    v11 = *MEMORY[0x277CCE340];

    v10 = v11;
  }

  [(HDCodableWorkoutSessionConfiguration *)v3 setSourceBundleIdentifier:v10];

  return v3;
}

- (id)sessionGlobalState
{
  v3 = objc_alloc_init(HDCodableWorkoutSessionGlobalState);
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  -[HDCodableWorkoutSessionGlobalState setSessionState:](v3, "setSessionState:", [WeakRetained state]);

  v5 = objc_loadWeakRetained(&self->_sessionServer);
  v6 = [v5 startDate];

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_sessionServer);
    v8 = [v7 startDate];
    [v8 timeIntervalSinceReferenceDate];
    [(HDCodableWorkoutSessionGlobalState *)v3 setStartDate:?];
  }

  v9 = objc_loadWeakRetained(&self->_sessionServer);
  v10 = [v9 stopDate];

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_sessionServer);
    v12 = [v11 stopDate];
    [v12 timeIntervalSinceReferenceDate];
    [(HDCodableWorkoutSessionGlobalState *)v3 setEndDate:?];
  }

  v13 = objc_loadWeakRetained(&self->_sessionServer);
  v14 = [v13 currentActivity];
  v15 = [v14 codableRepresentationForSync];
  [(HDCodableWorkoutSessionGlobalState *)v3 setCurrentActivity:v15];

  v16 = objc_loadWeakRetained(&self->_sessionServer);
  v17 = [v16 workoutDataAccumulator];
  v18 = [v17 currentEvents];
  v19 = [v18 hk_map:&__block_literal_global_82];
  v20 = [v19 mutableCopy];
  [(HDCodableWorkoutSessionGlobalState *)v3 setEvents:v20];

  return v3;
}

- (void)sendMirroringStopRequestWithCompletion:(id)a3
{
  v4 = a3;
  [(HDWorkoutSessionRapportSyncController *)self _cancelSendHeartbeat];
  [(HDWorkoutSessionRapportSyncController *)self _cancelSendHeartbeatTimeout];
  [(HDWorkoutSessionRapportSyncController *)self sendRequest:@"stopMirroring" transaction:0 completion:v4];
}

- (void)receivedMirroringStopRequestWithCompletion:(id)a3
{
  v5 = a3;
  [(HDWorkoutSessionRapportSyncController *)self _cancelReceiveHeartbeatTimeout];
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  [WeakRetained didDisconnectFromRemoteWithError:0];

  v5[2](v5, 1, 0);
}

- (void)receivedRecoveryRequestWithResponseHandler:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  if (([WeakRetained isMirroring] & 1) == 0)
  {

    goto LABEL_7;
  }

  v6 = [MEMORY[0x277CCDD30] sharedBehavior];
  v7 = [v6 isCompanionCapable];

  if (v7)
  {
LABEL_7:
    (*(v4 + 2))(v4, 0, 0);
    goto LABEL_8;
  }

  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = objc_loadWeakRetained(&self->_sessionServer);
    v24 = 138543618;
    v25 = self;
    v26 = 2114;
    v27 = v10;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@ Active mirroring session. Replying to recover request with workout %{public}@", &v24, 0x16u);
  }

  v11 = objc_alloc_init(HDCodableWorkoutSessionSyncTransaction);
  v12 = objc_loadWeakRetained(&self->_sessionServer);
  v13 = [v12 identifier];
  v14 = [v13 hk_dataForUUIDBytes];
  [(HDCodableWorkoutSessionSyncTransaction *)v11 setSessionUUID:v14];

  v15 = objc_loadWeakRetained(&self->_sessionServer);
  v16 = [v15 syncController];
  v17 = [v16 sessionConfiguration];
  [(HDCodableWorkoutSessionSyncTransaction *)v11 setConfiguration:v17];

  v18 = objc_loadWeakRetained(&self->_sessionServer);
  v19 = [v18 syncController];
  v20 = [v19 sessionGlobalState];
  [(HDCodableWorkoutSessionSyncTransaction *)v11 setGlobalState:v20];

  v21 = [(HDCodableWorkoutSessionSyncTransaction *)v11 data];
  (*(v4 + 2))(v4, v21, 0);

  v22 = objc_loadWeakRetained(&self->_sessionServer);
  [v22 remoteSessionDidRecover];

LABEL_8:
  v23 = *MEMORY[0x277D85DE8];
}

- (double)heartbeatInterval
{
  result = 0.5;
  if (!_HDIsUnitTesting)
  {
    return 5.0;
  }

  return result;
}

- (void)_scheduleHeartbeat
{
  os_unfair_lock_lock(&self->_lock);
  [(HDWorkoutSessionRapportSyncController *)self _lock_cancelSendHeartbeatTimeout];
  [(HDWorkoutSessionRapportSyncController *)self _lock_cancelSendHeartbeat];
  v3 = dispatch_get_global_queue(0, 0);
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
  heartbeatSource = self->_heartbeatSource;
  self->_heartbeatSource = v4;

  v6 = self->_heartbeatSource;
  [(HDWorkoutSessionRapportSyncController *)self heartbeatInterval];
  v8 = dispatch_time(0, (v7 * 1000000000.0));
  dispatch_source_set_timer(v6, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(&location, self);
  v9 = self->_heartbeatSource;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HDWorkoutSessionRapportSyncController__scheduleHeartbeat__block_invoke;
  v10[3] = &unk_278616F38;
  objc_copyWeak(&v11, &location);
  dispatch_source_set_event_handler(v9, v10);
  dispatch_resume(self->_heartbeatSource);
  os_unfair_lock_unlock(&self->_lock);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __59__HDWorkoutSessionRapportSyncController__scheduleHeartbeat__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendHeartbeat];
}

- (void)_sendHeartbeat
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  v4 = [WeakRetained isMirroring];

  if (v4)
  {
    [(HDWorkoutSessionRapportSyncController *)self _sendPendingTransactions];
    os_unfair_lock_lock(&self->_lock);
    v5 = self->_lock_lastPingDate;
    os_unfair_lock_unlock(&self->_lock);
    if (v5 && ([MEMORY[0x277CBEAA8] date], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "timeIntervalSinceDate:", v5), v8 = v7, v6, -[HDWorkoutSessionRapportSyncController heartbeatInterval](self, "heartbeatInterval"), v8 < v9))
    {
      [(HDWorkoutSessionRapportSyncController *)self _scheduleHeartbeat];
    }

    else
    {
      [(HDWorkoutSessionRapportSyncController *)self _scheduleSendHeartbeatTimeout];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __55__HDWorkoutSessionRapportSyncController__sendHeartbeat__block_invoke;
      v10[3] = &unk_2786130B0;
      v10[4] = self;
      [(HDWorkoutSessionRapportSyncController *)self sendRequest:@"heartbeat" transaction:0 completion:v10];
    }
  }
}

void __55__HDWorkoutSessionRapportSyncController__sendHeartbeat__block_invoke(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      *v11 = 138543618;
      *&v11[4] = objc_opt_class();
      *&v11[12] = 2114;
      *&v11[14] = v5;
      v10 = *&v11[4];
      _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Heartbeat failed with error %{public}@", v11, 0x16u);
    }
  }

  [*(a1 + 32) _scheduleHeartbeat];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleSendHeartbeatTimeout
{
  os_unfair_lock_lock(&self->_lock);
  [(HDWorkoutSessionRapportSyncController *)self _lock_cancelSendHeartbeatTimeout];
  v3 = dispatch_get_global_queue(0, 0);
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
  sendHeartbeatTimeoutSource = self->_sendHeartbeatTimeoutSource;
  self->_sendHeartbeatTimeoutSource = v4;

  v6 = self->_sendHeartbeatTimeoutSource;
  [(HDWorkoutSessionRapportSyncController *)self heartbeatInterval];
  v8 = dispatch_time(0, (v7 * 1000000000.0));
  dispatch_source_set_timer(v6, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(&location, self);
  v9 = self->_sendHeartbeatTimeoutSource;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __70__HDWorkoutSessionRapportSyncController__scheduleSendHeartbeatTimeout__block_invoke;
  handler[3] = &unk_2786177F8;
  handler[4] = self;
  objc_copyWeak(&v11, &location);
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(self->_sendHeartbeatTimeoutSource);
  os_unfair_lock_unlock(&self->_lock);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __70__HDWorkoutSessionRapportSyncController__scheduleSendHeartbeatTimeout__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = v2;
    v9 = 138543362;
    v10 = objc_opt_class();
    v8 = v10;
    _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Heartbeat timed out. Retrying now.", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained recordHeartbeatFailure];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 _sendHeartbeat];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_cancelSendHeartbeat
{
  os_unfair_lock_lock(&self->_lock);
  [(HDWorkoutSessionRapportSyncController *)self _lock_cancelSendHeartbeat];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_cancelSendHeartbeat
{
  heartbeatSource = self->_heartbeatSource;
  if (heartbeatSource)
  {
    dispatch_source_cancel(heartbeatSource);
    v4 = self->_heartbeatSource;
    self->_heartbeatSource = 0;
  }
}

- (void)_cancelSendHeartbeatTimeout
{
  os_unfair_lock_lock(&self->_lock);
  [(HDWorkoutSessionRapportSyncController *)self _lock_cancelSendHeartbeatTimeout];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_cancelSendHeartbeatTimeout
{
  sendHeartbeatTimeoutSource = self->_sendHeartbeatTimeoutSource;
  if (sendHeartbeatTimeoutSource)
  {
    dispatch_source_cancel(sendHeartbeatTimeoutSource);
    v4 = self->_sendHeartbeatTimeoutSource;
    self->_sendHeartbeatTimeoutSource = 0;
  }
}

- (double)heartbeatReceiveTimeout
{
  result = 1.5;
  if (!_HDIsUnitTesting)
  {
    return 30.0;
  }

  return result;
}

- (void)receivedHeartbeatWithCompletion:(id)a3
{
  v4 = a3;
  [(HDWorkoutSessionRapportSyncController *)self _scheduleReceiveHeartbeatTimeout];
  v4[2](v4, 1, 0);
}

- (void)_scheduleReceiveHeartbeatTimeout
{
  os_unfair_lock_lock(&self->_lock);
  [(HDWorkoutSessionRapportSyncController *)self _lock_cancelReceiveHeartbeatTimeout];
  v3 = dispatch_get_global_queue(0, 0);
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
  receiveHeartbeatTimeoutSource = self->_receiveHeartbeatTimeoutSource;
  self->_receiveHeartbeatTimeoutSource = v4;

  v6 = self->_receiveHeartbeatTimeoutSource;
  [(HDWorkoutSessionRapportSyncController *)self heartbeatReceiveTimeout];
  v8 = dispatch_time(0, (v7 * 1000000000.0));
  dispatch_source_set_timer(v6, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(&location, self);
  v9 = self->_receiveHeartbeatTimeoutSource;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__HDWorkoutSessionRapportSyncController__scheduleReceiveHeartbeatTimeout__block_invoke;
  v10[3] = &unk_278616F38;
  objc_copyWeak(&v11, &location);
  dispatch_source_set_event_handler(v9, v10);
  dispatch_resume(self->_receiveHeartbeatTimeoutSource);
  os_unfair_lock_unlock(&self->_lock);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __73__HDWorkoutSessionRapportSyncController__scheduleReceiveHeartbeatTimeout__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _receiveHeartbeatDidTimeout];
}

- (void)_cancelReceiveHeartbeatTimeout
{
  os_unfair_lock_lock(&self->_lock);
  [(HDWorkoutSessionRapportSyncController *)self _lock_cancelReceiveHeartbeatTimeout];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_cancelReceiveHeartbeatTimeout
{
  receiveHeartbeatTimeoutSource = self->_receiveHeartbeatTimeoutSource;
  if (receiveHeartbeatTimeoutSource)
  {
    dispatch_source_cancel(receiveHeartbeatTimeoutSource);
    v4 = self->_receiveHeartbeatTimeoutSource;
    self->_receiveHeartbeatTimeoutSource = 0;
  }
}

- (void)_receiveHeartbeatDidTimeout
{
  v13 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
  {
    v7 = v3;
    [(HDWorkoutSessionRapportSyncController *)self heartbeatReceiveTimeout];
    v9 = 138543618;
    v10 = self;
    v11 = 2048;
    v12 = v8;
    _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: No heartbeat received in the last %f seconds, marking session as disconnected.", &v9, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  v5 = [MEMORY[0x277CCA9B8] hk_error:554 format:@"Primary session is unreachable."];
  [WeakRetained didDisconnectFromRemoteWithError:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendDataToRemoteWorkoutSession:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(HDWorkoutSessionRapportSyncController *)self _isDataRateLimiterDisabledByUserDefaults])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __83__HDWorkoutSessionRapportSyncController_sendDataToRemoteWorkoutSession_completion___block_invoke;
    v16[3] = &unk_27861EE38;
    v17 = v6;
    [(HDWorkoutSessionRapportSyncController *)self sendRequest:@"arbitraryData" transaction:v16 completion:v7];
    v8 = v17;
  }

  else
  {
    dataRateLimiter = self->_dataRateLimiter;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__HDWorkoutSessionRapportSyncController_sendDataToRemoteWorkoutSession_completion___block_invoke_2;
    v12[3] = &unk_278614160;
    v13 = self;
    v14 = v6;
    v10 = v7;
    v15 = v10;
    if ((-[HKRateLimiter perform:cost:](dataRateLimiter, "perform:cost:", v12, [v14 length]) & 1) == 0)
    {
      v11 = [MEMORY[0x277CCA9B8] hk_error:13 description:@"Data sent over the past 10 seconds exceeded the 100 KB size limit"];
      (*(v10 + 2))(v10, 0, v11);
    }

    v8 = v14;
  }
}

void __83__HDWorkoutSessionRapportSyncController_sendDataToRemoteWorkoutSession_completion___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __83__HDWorkoutSessionRapportSyncController_sendDataToRemoteWorkoutSession_completion___block_invoke_3;
  v3[3] = &unk_27861EE38;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 sendRequest:@"arbitraryData" transaction:v3 completion:*(a1 + 48)];
}

- (void)receivedDataFromRemoteWorkoutSession:(id)a3 completion:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  v11[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  [WeakRetained didReceiveDataFromRemoteWorkoutSession:v9 completion:v6];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendStateEvent:(int64_t)a3 date:(id)a4 completion:(id)a5
{
  v8 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__HDWorkoutSessionRapportSyncController_sendStateEvent_date_completion___block_invoke;
  v10[3] = &unk_27861EE80;
  v11 = v8;
  v12 = a3;
  v9 = v8;
  [(HDWorkoutSessionRapportSyncController *)self sendRequest:@"stateEvent" transaction:v10 completion:a5];
}

void __72__HDWorkoutSessionRapportSyncController_sendStateEvent_date_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v4 globalState];
  [v5 setSessionStateEvent:v3];

  [*(a1 + 32) timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = [v4 globalState];

  [v8 setSessionStateEventDate:v7];
}

- (void)receivedStateEvent:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 hasSessionStateEventDate])
  {
    [v6 sessionStateEventDate];
    v8 = HDDecodeDateForValue();
    WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
    [WeakRetained syncSessionEvent:objc_msgSend(v6 date:{"sessionStateEvent"), v8}];

    v7[2](v7, 1, 0);
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      v14 = self;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Session event does not have an associated date", &v13, 0xCu);
    }

    v11 = [MEMORY[0x277CCA9B8] hk_error:3 format:@"Session event does not have an associated date"];
    (v7)[2](v7, 0, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendStateUpdate:(int64_t)a3 date:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(HDCodableWorkoutSessionGlobalState);
  [(HDCodableWorkoutSessionGlobalState *)v10 setSessionState:a3];
  v11 = v8;
  if (!v8)
  {
    v11 = [MEMORY[0x277CBEAA8] date];
  }

  [v11 timeIntervalSinceReferenceDate];
  [(HDCodableWorkoutSessionGlobalState *)v10 setSessionStateChangeDate:?];
  if (!v8)
  {
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__HDWorkoutSessionRapportSyncController_sendStateUpdate_date_completion___block_invoke;
  v13[3] = &unk_27861EE38;
  v14 = v10;
  v12 = v10;
  [(HDWorkoutSessionRapportSyncController *)self sendRequest:@"stateUpdate" transaction:v13 completion:v9];
}

- (void)receivedStateUpdate:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 hasSessionStateChangeDate])
  {
    [v6 sessionStateChangeDate];
    v8 = HDDecodeDateForValue();
    WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
    [WeakRetained syncTransitionToState:objc_msgSend(v6 date:"sessionState") completion:{v8, v7}];
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      v14 = self;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Session state does not have an associated date", &v13, 0xCu);
    }

    v11 = [MEMORY[0x277CCA9B8] hk_error:3 format:@"Session state does not have an associated date"];
    (*(v7 + 2))(v7, 0, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendEventUpdate:(id)a3 completion:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(HDCodableWorkoutSessionGlobalState);
  v9 = [v7 codableRepresentationForSync];

  v16[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v11 = [v10 mutableCopy];
  [(HDCodableWorkoutSessionGlobalState *)v8 setEvents:v11];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__HDWorkoutSessionRapportSyncController_sendEventUpdate_completion___block_invoke;
  v14[3] = &unk_27861EE38;
  v15 = v8;
  v12 = v8;
  [(HDWorkoutSessionRapportSyncController *)self sendRequest:@"eventUpdate" transaction:v14 completion:v6];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)receivedEventUpdate:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8 = [a3 hk_map:&__block_literal_global_345];
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  [WeakRetained syncWorkoutEvents:v8 completion:v6];
}

- (void)receivedBackgroundRuntimeRequestWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  [WeakRetained receivedBackgroundRuntimeRequestWithCompletion:v4];
}

- (void)sendCurrentActivityUpdate:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(HDCodableWorkoutSessionGlobalState);
  v9 = [v7 codableRepresentationForSync];

  [(HDCodableWorkoutSessionGlobalState *)v8 setCurrentActivity:v9];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__HDWorkoutSessionRapportSyncController_sendCurrentActivityUpdate_completion___block_invoke;
  v11[3] = &unk_27861EE38;
  v12 = v8;
  v10 = v8;
  [(HDWorkoutSessionRapportSyncController *)self sendRequest:@"activityUpdate" transaction:v11 completion:v6];
}

- (void)receivedCurrentActivityUpdate:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  v8 = [MEMORY[0x277CCDBF0] createWithCodable:v7];

  [WeakRetained syncCurrentActivity:v8 completion:v6];
}

- (void)rapportMessenger:(id)a3 didReceiveRequest:(id)a4 data:(id)a5 responseHandler:(id)a6
{
  v69 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [(HDWorkoutSessionRapportSyncController *)self _resetHeartbeat];
  v12 = [v9 name];
  v13 = [v12 isEqualToString:@"recoverSession"];

  if (!v13)
  {
    v60 = 0;
    v14 = [objc_opt_class() _decodedTransactionWithData:v10 error:&v60];
    v15 = v60;
    if (!v14)
    {
      v11[2](v11, 0, v15);
LABEL_27:

      goto LABEL_28;
    }

    v16 = MEMORY[0x277CCAD78];
    v17 = [v14 sessionUUID];
    v18 = [v16 hk_UUIDWithData:v17];

    WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
    v20 = [WeakRetained identifier];
    v21 = [v18 isEqual:v20];

    if ((v21 & 1) == 0)
    {
      _HKInitializeLogging();
      v28 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v29 = v28;
        v30 = objc_opt_class();
        v57 = v30;
        v31 = objc_loadWeakRetained(&self->_sessionServer);
        [v31 identifier];
        v32 = v15;
        v34 = v33 = v18;
        *buf = 138544130;
        v62 = v30;
        v63 = 2114;
        v64 = v9;
        v65 = 2114;
        v66 = v33;
        v67 = 2114;
        v68 = v34;
        _os_log_impl(&dword_228986000, v29, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Ignoring incoming request %{public}@ because session UUID is different. Request UUID: %{public}@, local UUID: %{public}@", buf, 0x2Au);

        v18 = v33;
        v15 = v32;
      }

      goto LABEL_26;
    }

    v56 = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __97__HDWorkoutSessionRapportSyncController_rapportMessenger_didReceiveRequest_data_responseHandler___block_invoke;
    aBlock[3] = &unk_2786130D8;
    v22 = v11;
    v59 = v22;
    v23 = _Block_copy(aBlock);
    v24 = [v9 name];
    v25 = [v24 isEqualToString:@"startMirroring"];

    if (v25)
    {
LABEL_25:

      v18 = v56;
LABEL_26:

      goto LABEL_27;
    }

    v26 = [v9 name];
    v27 = [v26 isEqualToString:@"heartbeat"];

    if (v27)
    {
      [(HDWorkoutSessionRapportSyncController *)self receivedHeartbeatWithCompletion:v23];
      goto LABEL_25;
    }

    v35 = [v9 name];
    v36 = [v35 isEqualToString:@"stopMirroring"];

    if (v36)
    {
      [(HDWorkoutSessionRapportSyncController *)self receivedMirroringStopRequestWithCompletion:v23];
      goto LABEL_25;
    }

    v37 = [v9 name];
    v38 = [v37 isEqualToString:@"arbitraryData"];

    if (v38)
    {
      v39 = [v14 arbitraryData];
      [(HDWorkoutSessionRapportSyncController *)self receivedDataFromRemoteWorkoutSession:v39 completion:v23];
    }

    else
    {
      v40 = [v9 name];
      v41 = [v40 isEqualToString:@"stateUpdate"];

      if (v41)
      {
        v39 = [v14 globalState];
        [(HDWorkoutSessionRapportSyncController *)self receivedStateUpdate:v39 completion:v23];
      }

      else
      {
        v42 = [v9 name];
        v43 = [v42 isEqualToString:@"stateEvent"];

        if (v43)
        {
          v39 = [v14 globalState];
          [(HDWorkoutSessionRapportSyncController *)self receivedStateEvent:v39 completion:v23];
        }

        else
        {
          v44 = [v9 name];
          v45 = [v44 isEqualToString:@"activityUpdate"];

          if (v45)
          {
            v39 = [v14 globalState];
            v46 = [v39 currentActivity];
            [(HDWorkoutSessionRapportSyncController *)self receivedCurrentActivityUpdate:v46 completion:v23];
          }

          else
          {
            v47 = [v9 name];
            v48 = [v47 isEqualToString:@"eventUpdate"];

            if (!v48)
            {
              v50 = [v9 name];
              v51 = [v50 isEqualToString:@"backgroundRuntime"];

              if (v51)
              {
                [(HDWorkoutSessionRapportSyncController *)self receivedBackgroundRuntimeRequestWithCompletion:v23];
                goto LABEL_25;
              }

              _HKInitializeLogging();
              v52 = *MEMORY[0x277CCC330];
              if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
              {
                v53 = v52;
                v54 = objc_opt_class();
                *buf = 138543618;
                v62 = v54;
                v63 = 2114;
                v64 = v9;
                v55 = v54;
                _os_log_error_impl(&dword_228986000, v53, OS_LOG_TYPE_ERROR, " [mirroring] %{public}@: No handler available for request %{public}@", buf, 0x16u);
              }

              v39 = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Unknown request"];
              v22[2](v22, 0, v39);
              goto LABEL_24;
            }

            v39 = [v14 globalState];
            v46 = [v39 events];
            [(HDWorkoutSessionRapportSyncController *)self receivedEventUpdate:v46 completion:v23];
          }
        }
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  [(HDWorkoutSessionRapportSyncController *)self receivedRecoveryRequestWithResponseHandler:v11];
LABEL_28:

  v49 = *MEMORY[0x277D85DE8];
}

- (void)sendRequest:(id)a3 transaction:(id)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__HDWorkoutSessionRapportSyncController_sendRequest_transaction_completion___block_invoke;
  v10[3] = &unk_27861EEC8;
  v11 = v8;
  v9 = v8;
  [(HDWorkoutSessionRapportSyncController *)self sendRequest:a3 transaction:a4 responseHandler:v10];
}

- (void)sendRequest:(id)a3 transaction:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(HDCodableWorkoutSessionSyncTransaction);
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  v13 = [WeakRetained identifier];
  v14 = [v13 hk_dataForUUIDBytes];
  [(HDCodableWorkoutSessionSyncTransaction *)v11 setSessionUUID:v14];

  if (v9)
  {
    v15 = objc_alloc_init(HDCodableWorkoutSessionGlobalState);
    [(HDCodableWorkoutSessionSyncTransaction *)v11 setGlobalState:v15];

    v9[2](v9, v11);
  }

  os_unfair_lock_lock(&self->_lock);
  v16 = [MEMORY[0x277CBEAA8] date];
  lock_lastPingDate = self->_lock_lastPingDate;
  self->_lock_lastPingDate = v16;

  v18 = [(NSMutableDictionary *)self->_lock_pendingTransactionsByRequest objectForKeyedSubscript:v8];

  os_unfair_lock_unlock(&self->_lock);
  if (v18)
  {
    [(HDWorkoutSessionRapportSyncController *)self _enqueueTransaction:v11 requestName:v8];
    v10[2](v10, v11, 0);
  }

  else
  {
    v19 = [[HDRapportRequestIdentifier alloc] initWithSchemaIdentifier:0 name:v8];
    rapportMessenger = self->_rapportMessenger;
    v21 = [(HDCodableWorkoutSessionSyncTransaction *)v11 data];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __81__HDWorkoutSessionRapportSyncController_sendRequest_transaction_responseHandler___block_invoke;
    v22[3] = &unk_27861EEF0;
    v22[4] = self;
    v25 = v10;
    v23 = v11;
    v24 = v8;
    [(HDRapportMessenger *)rapportMessenger sendRequest:v19 data:v21 completion:v22];
  }
}

void __81__HDWorkoutSessionRapportSyncController_sendRequest_transaction_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 hk_isObjectNotFoundError])
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
      v9 = [WeakRetained sessionType];

      if (v9 == 1)
      {
        [*(a1 + 32) _cancelReceiveHeartbeatTimeout];
        v10 = objc_loadWeakRetained((*(a1 + 32) + 16));
        [v10 didDisconnectFromRemoteWithError:0];

LABEL_12:
        (*(*(a1 + 56) + 16))();
        goto LABEL_13;
      }
    }

    if ([v7 hk_isHealthKitErrorWithCode:8])
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        *buf = 138543362;
        v20 = v12;
        _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Stopping mirroring due to another session started on companion", buf, 0xCu);
      }

      v13 = objc_loadWeakRetained((*(a1 + 32) + 16));
      [v13 stopMirroringToCompanionDeviceWithCompletion:&__block_literal_global_356_1];
    }

    [*(a1 + 32) _enqueueTransaction:*(a1 + 40) requestName:*(a1 + 48)];
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    [*(a1 + 32) _resetHeartbeat];
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  v14 = *(a1 + 32);
  v18 = 0;
  v15 = [objc_opt_class() _decodedTransactionWithData:v5 error:&v18];
  v16 = v18;
  (*(*(a1 + 56) + 16))();

LABEL_13:
  v17 = *MEMORY[0x277D85DE8];
}

void __81__HDWorkoutSessionRapportSyncController_sendRequest_transaction_responseHandler___block_invoke_354(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[mirroring] Failed to stop mirroring with error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)_decodedTransactionWithData:(id)a3 error:(id *)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [[HDCodableWorkoutSessionSyncTransaction alloc] initWithData:v5];
  if (!v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      *v14 = 138543618;
      *&v14[4] = objc_opt_class();
      *&v14[12] = 2114;
      *&v14[14] = v5;
      v9 = *&v14[4];
      _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Unable to decode incoming request transaction with data: %{public}@", v14, 0x16u);
    }

    v10 = [MEMORY[0x277CCA9B8] hk_error:100 description:{@"Unable to decode incoming request.", *v14, *&v14[16], v15}];
    if (v10)
    {
      if (a4)
      {
        v11 = v10;
        *a4 = v10;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_resetHeartbeat
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CBEAA8] date];
  lock_lastPingDate = self->_lock_lastPingDate;
  self->_lock_lastPingDate = v3;

  os_unfair_lock_unlock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  v6 = [WeakRetained sessionType];

  if (v6 == 1)
  {

    [(HDWorkoutSessionRapportSyncController *)self _scheduleReceiveHeartbeatTimeout];
  }
}

- (BOOL)_isDataRateLimiterDisabledByUserDefaults
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"WorkoutSessionDataRateLimiterDisabled"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)_enqueueTransaction:(id)a3 requestName:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  v9 = [WeakRetained sessionType];

  if (!v9 && ([v7 isEqualToString:@"heartbeat"] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"arbitraryData") & 1) == 0)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      *v20 = 138543618;
      *&v20[4] = objc_opt_class();
      *&v20[12] = 2114;
      *&v20[14] = v6;
      v12 = *&v20[4];
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Will enqueue failed transaction: %{public}@", v20, 0x16u);
    }

    os_unfair_lock_lock(&self->_lock);
    if ([v7 isEqualToString:@"eventUpdate"] && (-[NSMutableDictionary objectForKeyedSubscript:](self->_lock_pendingTransactionsByRequest, "objectForKeyedSubscript:", v7), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = v13;
      v15 = [v13 globalState];
      v16 = [v15 events];
      v17 = [v6 globalState];
      v18 = [v17 events];
      [v16 addObjectsFromArray:v18];

      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      [(NSMutableDictionary *)self->_lock_pendingTransactionsByRequest setObject:v6 forKeyedSubscript:v7, *v20, *&v20[16], v21];
      os_unfair_lock_unlock(&self->_lock);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_sendPendingTransactions
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  v4 = [WeakRetained sessionType];

  if (!v4)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(NSMutableDictionary *)self->_lock_pendingTransactionsByRequest copy];
    [(NSMutableDictionary *)self->_lock_pendingTransactionsByRequest removeAllObjects];
    os_unfair_lock_unlock(&self->_lock);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __65__HDWorkoutSessionRapportSyncController__sendPendingTransactions__block_invoke;
    v6[3] = &unk_27861EF18;
    v6[4] = self;
    [v5 enumerateKeysAndObjectsUsingBlock:v6];
  }
}

void __65__HDWorkoutSessionRapportSyncController__sendPendingTransactions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v7;
    *buf = 138543618;
    v17 = objc_opt_class();
    v18 = 2114;
    v19 = v5;
    v10 = v17;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Will send pending transaction: %{public}@", buf, 0x16u);
  }

  v11 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__HDWorkoutSessionRapportSyncController__sendPendingTransactions__block_invoke_362;
  v14[3] = &unk_27861EE38;
  v15 = v5;
  v12 = v5;
  [v11 sendRequest:v6 transaction:v14 completion:&__block_literal_global_364_0];

  v13 = *MEMORY[0x277D85DE8];
}

void __65__HDWorkoutSessionRapportSyncController__sendPendingTransactions__block_invoke_362(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 configuration];
  [v4 setConfiguration:v5];

  v6 = [*(a1 + 32) globalState];
  [v4 setGlobalState:v6];
}

@end