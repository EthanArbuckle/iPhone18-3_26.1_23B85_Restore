@interface HDWorkoutSessionRapportSyncController
+ (id)_decodedTransactionWithData:(id)data error:(id *)error;
- (BOOL)_isDataRateLimiterDisabledByUserDefaults;
- (HDWorkoutSessionRapportSyncController)initWithRapportMessenger:(id)messenger sessionServer:(id)server;
- (double)heartbeatInterval;
- (double)heartbeatReceiveTimeout;
- (id)sessionConfiguration;
- (id)sessionGlobalState;
- (void)_cancelReceiveHeartbeatTimeout;
- (void)_cancelSendHeartbeat;
- (void)_cancelSendHeartbeatTimeout;
- (void)_enqueueTransaction:(id)transaction requestName:(id)name;
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
- (void)rapportMessenger:(id)messenger didReceiveRequest:(id)request data:(id)data responseHandler:(id)handler;
- (void)receivedBackgroundRuntimeRequestWithCompletion:(id)completion;
- (void)receivedCurrentActivityUpdate:(id)update completion:(id)completion;
- (void)receivedDataFromRemoteWorkoutSession:(id)session completion:(id)completion;
- (void)receivedEventUpdate:(id)update completion:(id)completion;
- (void)receivedHeartbeatWithCompletion:(id)completion;
- (void)receivedMirroringStopRequestWithCompletion:(id)completion;
- (void)receivedRecoveryRequestWithResponseHandler:(id)handler;
- (void)receivedStateEvent:(id)event completion:(id)completion;
- (void)receivedStateUpdate:(id)update completion:(id)completion;
- (void)sendCurrentActivityUpdate:(id)update completion:(id)completion;
- (void)sendDataToRemoteWorkoutSession:(id)session completion:(id)completion;
- (void)sendEventUpdate:(id)update completion:(id)completion;
- (void)sendMirroringStartRequestWithCompletion:(id)completion;
- (void)sendMirroringStopRequestWithCompletion:(id)completion;
- (void)sendRequest:(id)request transaction:(id)transaction completion:(id)completion;
- (void)sendRequest:(id)request transaction:(id)transaction responseHandler:(id)handler;
- (void)sendStateEvent:(int64_t)event date:(id)date completion:(id)completion;
- (void)sendStateUpdate:(int64_t)update date:(id)date completion:(id)completion;
@end

@implementation HDWorkoutSessionRapportSyncController

- (HDWorkoutSessionRapportSyncController)initWithRapportMessenger:(id)messenger sessionServer:(id)server
{
  v24 = *MEMORY[0x277D85DE8];
  messengerCopy = messenger;
  serverCopy = server;
  v21.receiver = self;
  v21.super_class = HDWorkoutSessionRapportSyncController;
  v9 = [(HDWorkoutSessionRapportSyncController *)&v21 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_rapportMessenger, messenger);
    objc_storeWeak(&v10->_sessionServer, serverCopy);
    v11 = [objc_alloc(MEMORY[0x277CCD878]) initWithLimit:102400 timeInterval:10.0];
    dataRateLimiter = v10->_dataRateLimiter;
    v10->_dataRateLimiter = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lock_pendingTransactionsByRequest = v10->_lock_pendingTransactionsByRequest;
    v10->_lock_pendingTransactionsByRequest = v13;

    if ([serverCopy sessionType] == 1)
    {
      [(HDWorkoutSessionRapportSyncController *)v10 _scheduleReceiveHeartbeatTimeout];
    }

    if (![serverCopy sessionType] && objc_msgSend(serverCopy, "isMirroring"))
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

- (void)sendMirroringStartRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  [(HDWorkoutSessionRapportSyncController *)self _scheduleHeartbeat];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__HDWorkoutSessionRapportSyncController_sendMirroringStartRequestWithCompletion___block_invoke;
  v5[3] = &unk_27861EE38;
  v5[4] = self;
  [(HDWorkoutSessionRapportSyncController *)self sendRequest:@"startMirroring" transaction:v5 completion:completionCopy];
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
  workoutConfiguration = [WeakRetained workoutConfiguration];
  codableRepresentationForSync = [workoutConfiguration codableRepresentationForSync];
  [(HDCodableWorkoutSessionConfiguration *)v3 setWorkoutConfiguration:codableRepresentationForSync];

  v7 = objc_loadWeakRetained(&self->_sessionServer);
  taskServer = [v7 taskServer];
  client = [taskServer client];
  sourceBundleIdentifier = [client sourceBundleIdentifier];

  if ([sourceBundleIdentifier isEqualToString:*MEMORY[0x277CCE4A8]])
  {
    v11 = *MEMORY[0x277CCE340];

    sourceBundleIdentifier = v11;
  }

  [(HDCodableWorkoutSessionConfiguration *)v3 setSourceBundleIdentifier:sourceBundleIdentifier];

  return v3;
}

- (id)sessionGlobalState
{
  v3 = objc_alloc_init(HDCodableWorkoutSessionGlobalState);
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  -[HDCodableWorkoutSessionGlobalState setSessionState:](v3, "setSessionState:", [WeakRetained state]);

  v5 = objc_loadWeakRetained(&self->_sessionServer);
  startDate = [v5 startDate];

  if (startDate)
  {
    v7 = objc_loadWeakRetained(&self->_sessionServer);
    startDate2 = [v7 startDate];
    [startDate2 timeIntervalSinceReferenceDate];
    [(HDCodableWorkoutSessionGlobalState *)v3 setStartDate:?];
  }

  v9 = objc_loadWeakRetained(&self->_sessionServer);
  stopDate = [v9 stopDate];

  if (stopDate)
  {
    v11 = objc_loadWeakRetained(&self->_sessionServer);
    stopDate2 = [v11 stopDate];
    [stopDate2 timeIntervalSinceReferenceDate];
    [(HDCodableWorkoutSessionGlobalState *)v3 setEndDate:?];
  }

  v13 = objc_loadWeakRetained(&self->_sessionServer);
  currentActivity = [v13 currentActivity];
  codableRepresentationForSync = [currentActivity codableRepresentationForSync];
  [(HDCodableWorkoutSessionGlobalState *)v3 setCurrentActivity:codableRepresentationForSync];

  v16 = objc_loadWeakRetained(&self->_sessionServer);
  workoutDataAccumulator = [v16 workoutDataAccumulator];
  currentEvents = [workoutDataAccumulator currentEvents];
  v19 = [currentEvents hk_map:&__block_literal_global_82];
  v20 = [v19 mutableCopy];
  [(HDCodableWorkoutSessionGlobalState *)v3 setEvents:v20];

  return v3;
}

- (void)sendMirroringStopRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  [(HDWorkoutSessionRapportSyncController *)self _cancelSendHeartbeat];
  [(HDWorkoutSessionRapportSyncController *)self _cancelSendHeartbeatTimeout];
  [(HDWorkoutSessionRapportSyncController *)self sendRequest:@"stopMirroring" transaction:0 completion:completionCopy];
}

- (void)receivedMirroringStopRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  [(HDWorkoutSessionRapportSyncController *)self _cancelReceiveHeartbeatTimeout];
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  [WeakRetained didDisconnectFromRemoteWithError:0];

  completionCopy[2](completionCopy, 1, 0);
}

- (void)receivedRecoveryRequestWithResponseHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  if (([WeakRetained isMirroring] & 1) == 0)
  {

    goto LABEL_7;
  }

  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isCompanionCapable = [mEMORY[0x277CCDD30] isCompanionCapable];

  if (isCompanionCapable)
  {
LABEL_7:
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
    goto LABEL_8;
  }

  _HKInitializeLogging();
  v8 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = objc_loadWeakRetained(&self->_sessionServer);
    v24 = 138543618;
    selfCopy = self;
    v26 = 2114;
    v27 = v10;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@ Active mirroring session. Replying to recover request with workout %{public}@", &v24, 0x16u);
  }

  v11 = objc_alloc_init(HDCodableWorkoutSessionSyncTransaction);
  v12 = objc_loadWeakRetained(&self->_sessionServer);
  identifier = [v12 identifier];
  hk_dataForUUIDBytes = [identifier hk_dataForUUIDBytes];
  [(HDCodableWorkoutSessionSyncTransaction *)v11 setSessionUUID:hk_dataForUUIDBytes];

  v15 = objc_loadWeakRetained(&self->_sessionServer);
  syncController = [v15 syncController];
  sessionConfiguration = [syncController sessionConfiguration];
  [(HDCodableWorkoutSessionSyncTransaction *)v11 setConfiguration:sessionConfiguration];

  v18 = objc_loadWeakRetained(&self->_sessionServer);
  syncController2 = [v18 syncController];
  sessionGlobalState = [syncController2 sessionGlobalState];
  [(HDCodableWorkoutSessionSyncTransaction *)v11 setGlobalState:sessionGlobalState];

  data = [(HDCodableWorkoutSessionSyncTransaction *)v11 data];
  (*(handlerCopy + 2))(handlerCopy, data, 0);

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
  isMirroring = [WeakRetained isMirroring];

  if (isMirroring)
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

- (void)receivedHeartbeatWithCompletion:(id)completion
{
  completionCopy = completion;
  [(HDWorkoutSessionRapportSyncController *)self _scheduleReceiveHeartbeatTimeout];
  completionCopy[2](completionCopy, 1, 0);
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
    selfCopy = self;
    v11 = 2048;
    v12 = v8;
    _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: No heartbeat received in the last %f seconds, marking session as disconnected.", &v9, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  v5 = [MEMORY[0x277CCA9B8] hk_error:554 format:@"Primary session is unreachable."];
  [WeakRetained didDisconnectFromRemoteWithError:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendDataToRemoteWorkoutSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  if ([(HDWorkoutSessionRapportSyncController *)self _isDataRateLimiterDisabledByUserDefaults])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __83__HDWorkoutSessionRapportSyncController_sendDataToRemoteWorkoutSession_completion___block_invoke;
    v16[3] = &unk_27861EE38;
    v17 = sessionCopy;
    [(HDWorkoutSessionRapportSyncController *)self sendRequest:@"arbitraryData" transaction:v16 completion:completionCopy];
    v8 = v17;
  }

  else
  {
    dataRateLimiter = self->_dataRateLimiter;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__HDWorkoutSessionRapportSyncController_sendDataToRemoteWorkoutSession_completion___block_invoke_2;
    v12[3] = &unk_278614160;
    selfCopy = self;
    v14 = sessionCopy;
    v10 = completionCopy;
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

- (void)receivedDataFromRemoteWorkoutSession:(id)session completion:(id)completion
{
  v11[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  v11[0] = sessionCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  [WeakRetained didReceiveDataFromRemoteWorkoutSession:v9 completion:completionCopy];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendStateEvent:(int64_t)event date:(id)date completion:(id)completion
{
  dateCopy = date;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__HDWorkoutSessionRapportSyncController_sendStateEvent_date_completion___block_invoke;
  v10[3] = &unk_27861EE80;
  v11 = dateCopy;
  eventCopy = event;
  v9 = dateCopy;
  [(HDWorkoutSessionRapportSyncController *)self sendRequest:@"stateEvent" transaction:v10 completion:completion];
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

- (void)receivedStateEvent:(id)event completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  completionCopy = completion;
  if ([eventCopy hasSessionStateEventDate])
  {
    [eventCopy sessionStateEventDate];
    v8 = HDDecodeDateForValue();
    WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
    [WeakRetained syncSessionEvent:objc_msgSend(eventCopy date:{"sessionStateEvent"), v8}];

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      selfCopy = self;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Session event does not have an associated date", &v13, 0xCu);
    }

    v11 = [MEMORY[0x277CCA9B8] hk_error:3 format:@"Session event does not have an associated date"];
    (completionCopy)[2](completionCopy, 0, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendStateUpdate:(int64_t)update date:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  v10 = objc_alloc_init(HDCodableWorkoutSessionGlobalState);
  [(HDCodableWorkoutSessionGlobalState *)v10 setSessionState:update];
  date = dateCopy;
  if (!dateCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  [date timeIntervalSinceReferenceDate];
  [(HDCodableWorkoutSessionGlobalState *)v10 setSessionStateChangeDate:?];
  if (!dateCopy)
  {
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__HDWorkoutSessionRapportSyncController_sendStateUpdate_date_completion___block_invoke;
  v13[3] = &unk_27861EE38;
  v14 = v10;
  v12 = v10;
  [(HDWorkoutSessionRapportSyncController *)self sendRequest:@"stateUpdate" transaction:v13 completion:completionCopy];
}

- (void)receivedStateUpdate:(id)update completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  completionCopy = completion;
  if ([updateCopy hasSessionStateChangeDate])
  {
    [updateCopy sessionStateChangeDate];
    v8 = HDDecodeDateForValue();
    WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
    [WeakRetained syncTransitionToState:objc_msgSend(updateCopy date:"sessionState") completion:{v8, completionCopy}];
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      selfCopy = self;
      _os_log_error_impl(&dword_228986000, v10, OS_LOG_TYPE_ERROR, "[mirroring] %{public}@: Session state does not have an associated date", &v13, 0xCu);
    }

    v11 = [MEMORY[0x277CCA9B8] hk_error:3 format:@"Session state does not have an associated date"];
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendEventUpdate:(id)update completion:(id)completion
{
  v16[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  updateCopy = update;
  v8 = objc_alloc_init(HDCodableWorkoutSessionGlobalState);
  codableRepresentationForSync = [updateCopy codableRepresentationForSync];

  v16[0] = codableRepresentationForSync;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v11 = [v10 mutableCopy];
  [(HDCodableWorkoutSessionGlobalState *)v8 setEvents:v11];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__HDWorkoutSessionRapportSyncController_sendEventUpdate_completion___block_invoke;
  v14[3] = &unk_27861EE38;
  v15 = v8;
  v12 = v8;
  [(HDWorkoutSessionRapportSyncController *)self sendRequest:@"eventUpdate" transaction:v14 completion:completionCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)receivedEventUpdate:(id)update completion:(id)completion
{
  completionCopy = completion;
  v8 = [update hk_map:&__block_literal_global_345];
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  [WeakRetained syncWorkoutEvents:v8 completion:completionCopy];
}

- (void)receivedBackgroundRuntimeRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  [WeakRetained receivedBackgroundRuntimeRequestWithCompletion:completionCopy];
}

- (void)sendCurrentActivityUpdate:(id)update completion:(id)completion
{
  completionCopy = completion;
  updateCopy = update;
  v8 = objc_alloc_init(HDCodableWorkoutSessionGlobalState);
  codableRepresentationForSync = [updateCopy codableRepresentationForSync];

  [(HDCodableWorkoutSessionGlobalState *)v8 setCurrentActivity:codableRepresentationForSync];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__HDWorkoutSessionRapportSyncController_sendCurrentActivityUpdate_completion___block_invoke;
  v11[3] = &unk_27861EE38;
  v12 = v8;
  v10 = v8;
  [(HDWorkoutSessionRapportSyncController *)self sendRequest:@"activityUpdate" transaction:v11 completion:completionCopy];
}

- (void)receivedCurrentActivityUpdate:(id)update completion:(id)completion
{
  completionCopy = completion;
  updateCopy = update;
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  v8 = [MEMORY[0x277CCDBF0] createWithCodable:updateCopy];

  [WeakRetained syncCurrentActivity:v8 completion:completionCopy];
}

- (void)rapportMessenger:(id)messenger didReceiveRequest:(id)request data:(id)data responseHandler:(id)handler
{
  v69 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dataCopy = data;
  handlerCopy = handler;
  [(HDWorkoutSessionRapportSyncController *)self _resetHeartbeat];
  name = [requestCopy name];
  v13 = [name isEqualToString:@"recoverSession"];

  if (!v13)
  {
    v60 = 0;
    v14 = [objc_opt_class() _decodedTransactionWithData:dataCopy error:&v60];
    v15 = v60;
    if (!v14)
    {
      handlerCopy[2](handlerCopy, 0, v15);
LABEL_27:

      goto LABEL_28;
    }

    v16 = MEMORY[0x277CCAD78];
    sessionUUID = [v14 sessionUUID];
    v18 = [v16 hk_UUIDWithData:sessionUUID];

    WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
    identifier = [WeakRetained identifier];
    v21 = [v18 isEqual:identifier];

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
        v64 = requestCopy;
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
    v22 = handlerCopy;
    v59 = v22;
    v23 = _Block_copy(aBlock);
    name2 = [requestCopy name];
    v25 = [name2 isEqualToString:@"startMirroring"];

    if (v25)
    {
LABEL_25:

      v18 = v56;
LABEL_26:

      goto LABEL_27;
    }

    name3 = [requestCopy name];
    v27 = [name3 isEqualToString:@"heartbeat"];

    if (v27)
    {
      [(HDWorkoutSessionRapportSyncController *)self receivedHeartbeatWithCompletion:v23];
      goto LABEL_25;
    }

    name4 = [requestCopy name];
    v36 = [name4 isEqualToString:@"stopMirroring"];

    if (v36)
    {
      [(HDWorkoutSessionRapportSyncController *)self receivedMirroringStopRequestWithCompletion:v23];
      goto LABEL_25;
    }

    name5 = [requestCopy name];
    v38 = [name5 isEqualToString:@"arbitraryData"];

    if (v38)
    {
      arbitraryData = [v14 arbitraryData];
      [(HDWorkoutSessionRapportSyncController *)self receivedDataFromRemoteWorkoutSession:arbitraryData completion:v23];
    }

    else
    {
      name6 = [requestCopy name];
      v41 = [name6 isEqualToString:@"stateUpdate"];

      if (v41)
      {
        arbitraryData = [v14 globalState];
        [(HDWorkoutSessionRapportSyncController *)self receivedStateUpdate:arbitraryData completion:v23];
      }

      else
      {
        name7 = [requestCopy name];
        v43 = [name7 isEqualToString:@"stateEvent"];

        if (v43)
        {
          arbitraryData = [v14 globalState];
          [(HDWorkoutSessionRapportSyncController *)self receivedStateEvent:arbitraryData completion:v23];
        }

        else
        {
          name8 = [requestCopy name];
          v45 = [name8 isEqualToString:@"activityUpdate"];

          if (v45)
          {
            arbitraryData = [v14 globalState];
            currentActivity = [arbitraryData currentActivity];
            [(HDWorkoutSessionRapportSyncController *)self receivedCurrentActivityUpdate:currentActivity completion:v23];
          }

          else
          {
            name9 = [requestCopy name];
            v48 = [name9 isEqualToString:@"eventUpdate"];

            if (!v48)
            {
              name10 = [requestCopy name];
              v51 = [name10 isEqualToString:@"backgroundRuntime"];

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
                v64 = requestCopy;
                v55 = v54;
                _os_log_error_impl(&dword_228986000, v53, OS_LOG_TYPE_ERROR, " [mirroring] %{public}@: No handler available for request %{public}@", buf, 0x16u);
              }

              arbitraryData = [MEMORY[0x277CCA9B8] hk_error:3 description:@"Unknown request"];
              v22[2](v22, 0, arbitraryData);
              goto LABEL_24;
            }

            arbitraryData = [v14 globalState];
            currentActivity = [arbitraryData events];
            [(HDWorkoutSessionRapportSyncController *)self receivedEventUpdate:currentActivity completion:v23];
          }
        }
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  [(HDWorkoutSessionRapportSyncController *)self receivedRecoveryRequestWithResponseHandler:handlerCopy];
LABEL_28:

  v49 = *MEMORY[0x277D85DE8];
}

- (void)sendRequest:(id)request transaction:(id)transaction completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__HDWorkoutSessionRapportSyncController_sendRequest_transaction_completion___block_invoke;
  v10[3] = &unk_27861EEC8;
  v11 = completionCopy;
  v9 = completionCopy;
  [(HDWorkoutSessionRapportSyncController *)self sendRequest:request transaction:transaction responseHandler:v10];
}

- (void)sendRequest:(id)request transaction:(id)transaction responseHandler:(id)handler
{
  requestCopy = request;
  transactionCopy = transaction;
  handlerCopy = handler;
  v11 = objc_alloc_init(HDCodableWorkoutSessionSyncTransaction);
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  identifier = [WeakRetained identifier];
  hk_dataForUUIDBytes = [identifier hk_dataForUUIDBytes];
  [(HDCodableWorkoutSessionSyncTransaction *)v11 setSessionUUID:hk_dataForUUIDBytes];

  if (transactionCopy)
  {
    v15 = objc_alloc_init(HDCodableWorkoutSessionGlobalState);
    [(HDCodableWorkoutSessionSyncTransaction *)v11 setGlobalState:v15];

    transactionCopy[2](transactionCopy, v11);
  }

  os_unfair_lock_lock(&self->_lock);
  date = [MEMORY[0x277CBEAA8] date];
  lock_lastPingDate = self->_lock_lastPingDate;
  self->_lock_lastPingDate = date;

  v18 = [(NSMutableDictionary *)self->_lock_pendingTransactionsByRequest objectForKeyedSubscript:requestCopy];

  os_unfair_lock_unlock(&self->_lock);
  if (v18)
  {
    [(HDWorkoutSessionRapportSyncController *)self _enqueueTransaction:v11 requestName:requestCopy];
    handlerCopy[2](handlerCopy, v11, 0);
  }

  else
  {
    v19 = [[HDRapportRequestIdentifier alloc] initWithSchemaIdentifier:0 name:requestCopy];
    rapportMessenger = self->_rapportMessenger;
    data = [(HDCodableWorkoutSessionSyncTransaction *)v11 data];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __81__HDWorkoutSessionRapportSyncController_sendRequest_transaction_responseHandler___block_invoke;
    v22[3] = &unk_27861EEF0;
    v22[4] = self;
    v25 = handlerCopy;
    v23 = v11;
    v24 = requestCopy;
    [(HDRapportMessenger *)rapportMessenger sendRequest:v19 data:data completion:v22];
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

+ (id)_decodedTransactionWithData:(id)data error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v6 = [[HDCodableWorkoutSessionSyncTransaction alloc] initWithData:dataCopy];
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
      *&v14[14] = dataCopy;
      v9 = *&v14[4];
      _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Unable to decode incoming request transaction with data: %{public}@", v14, 0x16u);
    }

    v10 = [MEMORY[0x277CCA9B8] hk_error:100 description:{@"Unable to decode incoming request.", *v14, *&v14[16], v15}];
    if (v10)
    {
      if (error)
      {
        v11 = v10;
        *error = v10;
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
  date = [MEMORY[0x277CBEAA8] date];
  lock_lastPingDate = self->_lock_lastPingDate;
  self->_lock_lastPingDate = date;

  os_unfair_lock_unlock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  sessionType = [WeakRetained sessionType];

  if (sessionType == 1)
  {

    [(HDWorkoutSessionRapportSyncController *)self _scheduleReceiveHeartbeatTimeout];
  }
}

- (BOOL)_isDataRateLimiterDisabledByUserDefaults
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"WorkoutSessionDataRateLimiterDisabled"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)_enqueueTransaction:(id)transaction requestName:(id)name
{
  v21 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  nameCopy = name;
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  sessionType = [WeakRetained sessionType];

  if (!sessionType && ([nameCopy isEqualToString:@"heartbeat"] & 1) == 0 && (objc_msgSend(nameCopy, "isEqualToString:", @"arbitraryData") & 1) == 0)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      *v20 = 138543618;
      *&v20[4] = objc_opt_class();
      *&v20[12] = 2114;
      *&v20[14] = transactionCopy;
      v12 = *&v20[4];
      _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "[mirroring] %{public}@: Will enqueue failed transaction: %{public}@", v20, 0x16u);
    }

    os_unfair_lock_lock(&self->_lock);
    if ([nameCopy isEqualToString:@"eventUpdate"] && (-[NSMutableDictionary objectForKeyedSubscript:](self->_lock_pendingTransactionsByRequest, "objectForKeyedSubscript:", nameCopy), (v13 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = v13;
      globalState = [v13 globalState];
      events = [globalState events];
      globalState2 = [transactionCopy globalState];
      events2 = [globalState2 events];
      [events addObjectsFromArray:events2];

      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      [(NSMutableDictionary *)self->_lock_pendingTransactionsByRequest setObject:transactionCopy forKeyedSubscript:nameCopy, *v20, *&v20[16], v21];
      os_unfair_lock_unlock(&self->_lock);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_sendPendingTransactions
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionServer);
  sessionType = [WeakRetained sessionType];

  if (!sessionType)
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