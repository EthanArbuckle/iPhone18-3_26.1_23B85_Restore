@interface HDDeepBreathingSessionServer
+ (id)requiredEntitlements;
- (HDDeepBreathingSessionServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_deactivate;
- (void)connectionInvalidated;
- (void)dealloc;
- (void)remote_endSessionWithEndReason:(int64_t)reason;
- (void)remote_startGuiding;
- (void)remote_startSessionWithStartDate:(id)date completion:(id)completion;
@end

@implementation HDDeepBreathingSessionServer

- (HDDeepBreathingSessionServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = HDDeepBreathingSessionServer;
  v11 = [(HDStandardTaskServer *)&v17 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    v12 = HKCreateSerialDispatchQueue();
    queue = v11->_queue;
    v11->_queue = v12;

    v14 = [configurationCopy copy];
    sessionConfiguration = v11->_sessionConfiguration;
    v11->_sessionConfiguration = v14;
  }

  return v11;
}

- (void)dealloc
{
  [(HKDaemonTransaction *)self->_daemonTransaction invalidate];
  v3.receiver = self;
  v3.super_class = HDDeepBreathingSessionServer;
  [(HDDeepBreathingSessionServer *)&v3 dealloc];
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)connectionInvalidated
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HDDeepBreathingSessionServer_connectionInvalidated__block_invoke;
  block[3] = &unk_278613968;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_queue_deactivate
{
  v9 = *MEMORY[0x277D85DE8];
  if (self)
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x277CCC2A8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A8], OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
      v7 = 138412290;
      v8 = objc_opt_class();
      v4 = v8;
      _os_log_impl(&dword_228986000, v3, OS_LOG_TYPE_DEFAULT, "%@ deactivate", &v7, 0xCu);
    }

    if (*(self + 64) == 1)
    {
      *(self + 64) = 2;
      [*(self + 48) invalidate];
      v5 = *(self + 48);
      *(self + 48) = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)remote_startSessionWithStartDate:(id)date completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  completionCopy = completion;
  _HKInitializeLogging();
  v9 = MEMORY[0x277CCC2A8];
  v10 = *MEMORY[0x277CCC2A8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    taskUUID = [(HDStandardTaskServer *)self taskUUID];
    sessionConfiguration = self->_sessionConfiguration;
    *buf = 138543874;
    *&buf[4] = taskUUID;
    *&buf[12] = 2114;
    *&buf[14] = dateCopy;
    *&buf[22] = 2112;
    v22 = sessionConfiguration;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "start session %{public}@ with start date: %{public}@, configuration: %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v22) = 0;
  queue = self->_queue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__HDDeepBreathingSessionServer_remote_startSessionWithStartDate_completion___block_invoke;
  v18[3] = &unk_278617198;
  v18[4] = self;
  v18[5] = buf;
  dispatch_sync(queue, v18);
  if (*(*&buf[8] + 24) == 1)
  {
    _HKInitializeLogging();
    v15 = *v9;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(a2);
      *v19 = 138412290;
      v20 = v16;
      _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "%@ called on server that has already been started. Returning early.", v19, 0xCu);
    }
  }

  completionCopy[2](completionCopy, 1, 0);
  _Block_object_dispose(buf, 8);

  v17 = *MEMORY[0x277D85DE8];
}

void __76__HDDeepBreathingSessionServer_remote_startSessionWithStartDate_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && !*(v2 + 48))
  {
    v3 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:v2];
    v4 = *(v2 + 48);
    *(v2 + 48) = v3;

    v2 = *(a1 + 32);
  }

  if (*(v2 + 64))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    *(v2 + 64) = 1;
  }
}

- (void)remote_startGuiding
{
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2A8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A8], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_228986000, v2, OS_LOG_TYPE_DEFAULT, "start guiding", v3, 2u);
  }
}

- (void)remote_endSessionWithEndReason:(int64_t)reason
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__HDDeepBreathingSessionServer_remote_endSessionWithEndReason___block_invoke;
  v4[3] = &unk_2786138F8;
  v4[4] = self;
  v4[5] = reason;
  dispatch_async(queue, v4);
}

void __63__HDDeepBreathingSessionServer_remote_endSessionWithEndReason___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 40);
    _HKInitializeLogging();
    v3 = MEMORY[0x277CCC2A8];
    v4 = *MEMORY[0x277CCC2A8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A8], OS_LOG_TYPE_DEFAULT))
    {
      v5 = MEMORY[0x277CCABB0];
      v6 = v4;
      v7 = [v5 numberWithInteger:v2];
      LODWORD(v19) = 138412290;
      *(&v19 + 4) = v7;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "ending session with endReason=%@", &v19, 0xCu);
    }

    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableDemoMode", @"com.apple.DeepBreathing", 0);
    v9 = 0;
    if (([MEMORY[0x277CCDD30] isRunningStoreDemoMode] & 1) == 0 && !AppBooleanValue)
    {
      v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v11 = [v10 persistentDomainForName:*MEMORY[0x277CCE500]];

      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCE518]];
      v13 = v12;
      if (v12)
      {
        v9 = [v12 BOOLValue];
      }

      else
      {
        v9 = 1;
      }
    }

    _HKInitializeLogging();
    v14 = *v3;
    v15 = os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v15)
      {
        LOWORD(v19) = 0;
        _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "returning fake heartrate for simulator", &v19, 2u);
      }

      v16 = 72.0;
    }

    else
    {
      v16 = 0.0;
      if (v15)
      {
        LOWORD(v19) = 0;
        _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "not using healthlite, returning no heartrate", &v19, 2u);
      }
    }

    *&v19 = MEMORY[0x277D85DD0];
    *(&v19 + 1) = 3221225472;
    v20 = __77__HDDeepBreathingSessionServer__queue_alertClientSessionDidReceiveHeartRate___block_invoke;
    v21 = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v22 = sel__queue_alertClientSessionDidReceiveHeartRate_;
    v17 = [v1 remoteObjectProxyWithErrorHandler:&v19];
    [v17 clientRemote_sessionDidReceiveHeartRate:v16];

    [(HDDeepBreathingSessionServer *)v1 _queue_deactivate];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __77__HDDeepBreathingSessionServer__queue_alertClientSessionDidReceiveHeartRate___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2A8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A8], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = v4;
    v8 = NSStringFromSelector(v6);
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "(%@) error fetching client proxy: %@", &v9, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end