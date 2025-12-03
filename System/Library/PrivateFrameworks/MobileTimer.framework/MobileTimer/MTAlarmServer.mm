@interface MTAlarmServer
- (BOOL)_isSystemReady;
- (MTAlarmServer)initWithStorage:(id)storage;
- (MTAlarmServer)initWithStorage:(id)storage connectionListenerProvider:(id)provider;
- (MTEventReporting)analyticsCoordinator;
- (id)_systemNotReadyError;
- (id)gatherDiagnostics;
- (void)addAlarm:(id)alarm withCompletion:(id)completion;
- (void)didAlertNotificationWithID:(id)d;
- (void)didDuckPlaybackForAttentionAwarenessWithId:(id)id;
- (void)didPostToneAlertWithIdentifier:(id)identifier;
- (void)didRenderSceneForAlarm:(id)alarm withType:(id)type;
- (void)didShowCoversheetForIdentifier:(id)identifier;
- (void)didStopSoundPlaybackWithId:(id)id;
- (void)didTearDownToneAlertWithIdentifier:(id)identifier;
- (void)didTriggerSoundPlaybackWithId:(id)id;
- (void)didUpdateAudioReporterId:(id)id;
- (void)dismissAlarmWithIdentifier:(id)identifier dismissAction:(unint64_t)action withCompletion:(id)completion;
- (void)getAlarmsWithCompletion:(id)completion;
- (void)handleSystemReady;
- (void)nextSleepAlarmWithCompletion:(id)completion;
- (void)printDiagnostics;
- (void)registerAnalyticsDelegate:(id)delegate;
- (void)removeAlarm:(id)alarm withCompletion:(id)completion;
- (void)resetSleepAlarmSnoozeStateWithCompletion:(id)completion;
- (void)snoozeAlarmWithIdentifier:(id)identifier snoozeAction:(unint64_t)action withCompletion:(id)completion;
- (void)source:(id)source didAddAlarms:(id)alarms;
- (void)source:(id)source didChangeNextAlarm:(id)alarm;
- (void)source:(id)source didDismissAlarm:(id)alarm dismissAction:(unint64_t)action;
- (void)source:(id)source didFireAlarm:(id)alarm triggerType:(unint64_t)type;
- (void)source:(id)source didRemoveAlarms:(id)alarms;
- (void)source:(id)source didSnoozeAlarm:(id)alarm snoozeAction:(unint64_t)action;
- (void)source:(id)source didUpdateAlarms:(id)alarms;
- (void)startListening;
- (void)stopListening;
- (void)updateAlarm:(id)alarm withCompletion:(id)completion;
- (void)updateSleepAlarmsWithCompletion:(id)completion;
@end

@implementation MTAlarmServer

- (BOOL)_isSystemReady
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = dispatch_semaphore_create(0);
  serializer = [(MTAlarmServer *)self serializer];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__MTAlarmServer__isSystemReady__block_invoke;
  v7[3] = &unk_1E7B0CB10;
  v9 = &v10;
  v7[4] = self;
  v5 = v3;
  v8 = v5;
  [serializer performBlock:v7];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(serializer) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return serializer;
}

- (MTAlarmServer)initWithStorage:(id)storage
{
  storageCopy = storage;
  v5 = MTAlarmClientInterface();
  v6 = MTAlarmServerInterface();
  v7 = [MTXPCConnectionInfo infoForMachServiceName:@"com.apple.MobileTimer.alarmserver" remoteObjectInterface:v5 exportedObject:self exportedObjectInterface:v6 lifecycleNotification:@"com.apple.MTAlarmServer.wakeup" requiredEntitlement:@"com.apple.private.mobiletimerd" options:0];

  v8 = [MTXPCConnectionListenerProvider providerWithConnectionInfo:v7 errorHandler:0];
  v9 = [(MTAlarmServer *)self initWithStorage:storageCopy connectionListenerProvider:v8];

  return v9;
}

- (MTAlarmServer)initWithStorage:(id)storage connectionListenerProvider:(id)provider
{
  v20 = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  providerCopy = provider;
  v17.receiver = self;
  v17.super_class = MTAlarmServer;
  v9 = [(MTAlarmServer *)&v17 init];
  if (v9)
  {
    v10 = MTLogForCategory(3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v9;
      _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "Initializing %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&v9->_storage, storage);
    [storageCopy registerObserver:v9];
    objc_storeStrong(&v9->_connectionListenerProvider, provider);
    v11 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.MTAlarmServer.ready-queue", +[MTScheduler defaultPriority]);
    serializer = v9->_serializer;
    v9->_serializer = v11;

    v13 = objc_opt_new();
    conductor = v9->_conductor;
    v9->_conductor = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)registerAnalyticsDelegate:(id)delegate
{
  v11 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v5 = MTLogForCategory(3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2114;
    v10 = delegateCopy;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ registering analytics coordinator: %{public}@", &v7, 0x16u);
  }

  objc_storeWeak(&self->_analyticsCoordinator, delegateCopy);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)startListening
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "Starting %{public}@", &v5, 0xCu);
  }

  [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider startListening];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)stopListening
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "Stopping %{public}@", &v5, 0xCu);
  }

  [(MTXPCConnectionListenerProvider *)self->_connectionListenerProvider stopListening];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)handleSystemReady
{
  serializer = [(MTAlarmServer *)self serializer];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__MTAlarmServer_handleSystemReady__block_invoke;
  v4[3] = &unk_1E7B0C9D8;
  v4[4] = self;
  [serializer performBlock:v4];
}

void __34__MTAlarmServer_handleSystemReady__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = MTLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "System is ready: %{public}@.  Will post MTAlarmServerReadyNotification.", &v6, 0xCu);
  }

  *(*(a1 + 32) + 8) = 1;
  [*(*(a1 + 32) + 48) send];
  v4 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v4 postNotificationName:@"com.apple.MTAlarmServer.ready" object:0 userInfo:0 deliverImmediately:1];

  v5 = *MEMORY[0x1E69E9840];
}

- (id)_systemNotReadyError
{
  v2 = MTLogForCategory(3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(MTSessionServer *)v2 _systemNotReadyError];
  }

  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.mobiletimerd.MTAlarmServer" code:1 userInfo:0];

  return v3;
}

- (void)getAlarmsWithCompletion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__MTAlarmServer_getAlarmsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7B0CA00;
  aBlock[4] = self;
  v5 = completionCopy;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  if ([(MTAlarmServer *)self _isSystemReady])
  {
    v6[2](v6);
  }

  else
  {
    v7 = MTLogForCategory(3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_INFO, "%{public}@ getAlarmsWithCompletion system not ready, registering reply publisher", buf, 0xCu);
    }

    conductor = self->_conductor;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__MTAlarmServer_getAlarmsWithCompletion___block_invoke_16;
    v10[3] = &unk_1E7B0FE00;
    v10[4] = self;
    v11 = v6;
    v12 = v5;
    [(VoidConductor *)conductor registerReplyPublisherWithTimeOut:v10 completion:5.0];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __41__MTAlarmServer_getAlarmsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) storage];
  [v2 getAlarmsWithCompletion:*(a1 + 40)];
}

void __41__MTAlarmServer_getAlarmsWithCompletion___block_invoke_16(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ getAlarmsWithCompletion reply publisher ready, proceeding with request", &v12, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __41__MTAlarmServer_getAlarmsWithCompletion___block_invoke_16_cold_1(a1);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      v9 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      v10 = [*(a1 + 32) _systemNotReadyError];
      (*(v7 + 16))(v7, v8, v9, 0, v10);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addAlarm:(id)alarm withCompletion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__MTAlarmServer_addAlarm_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7B0C5D8;
  aBlock[4] = self;
  v8 = alarmCopy;
  v18 = v8;
  v9 = completionCopy;
  v19 = v9;
  v10 = _Block_copy(aBlock);
  if ([(MTAlarmServer *)self _isSystemReady])
  {
    v10[2](v10);
  }

  else
  {
    v11 = MTLogForCategory(3);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_INFO, "%{public}@ addAlarm system not ready, registering reply publisher", buf, 0xCu);
    }

    conductor = self->_conductor;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __41__MTAlarmServer_addAlarm_withCompletion___block_invoke_19;
    v14[3] = &unk_1E7B0FE00;
    v14[4] = self;
    v15 = v10;
    v16 = v9;
    [(VoidConductor *)conductor registerReplyPublisherWithTimeOut:v14 completion:5.0];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __41__MTAlarmServer_addAlarm_withCompletion___block_invoke(uint64_t a1)
{
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTAlarmServer - Adding Alarm", v7, 2u);
  }

  v3 = [*(a1 + 32) storage];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = [*(*(a1 + 32) + 24) currentClient];
  [v3 addAlarm:v5 withCompletion:v4 source:v6];
}

void __41__MTAlarmServer_addAlarm_withCompletion___block_invoke_19(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ addAlarm reply publisher ready, proceeding with request", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __41__MTAlarmServer_addAlarm_withCompletion___block_invoke_19_cold_1(a1);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [*(a1 + 32) _systemNotReadyError];
      (*(v7 + 16))(v7, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)updateAlarm:(id)alarm withCompletion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__MTAlarmServer_updateAlarm_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7B0C5D8;
  aBlock[4] = self;
  v8 = alarmCopy;
  v18 = v8;
  v9 = completionCopy;
  v19 = v9;
  v10 = _Block_copy(aBlock);
  if ([(MTAlarmServer *)self _isSystemReady])
  {
    v10[2](v10);
  }

  else
  {
    v11 = MTLogForCategory(3);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_INFO, "%{public}@ updateAlarm system not ready, registering reply publisher", buf, 0xCu);
    }

    conductor = self->_conductor;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __44__MTAlarmServer_updateAlarm_withCompletion___block_invoke_20;
    v14[3] = &unk_1E7B0FE00;
    v14[4] = self;
    v15 = v10;
    v16 = v9;
    [(VoidConductor *)conductor registerReplyPublisherWithTimeOut:v14 completion:5.0];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __44__MTAlarmServer_updateAlarm_withCompletion___block_invoke(uint64_t a1)
{
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTAlarmServer - Updating Alarm", v7, 2u);
  }

  v3 = [*(a1 + 32) storage];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = [*(*(a1 + 32) + 24) currentClient];
  [v3 updateAlarm:v5 withCompletion:v4 source:v6];
}

void __44__MTAlarmServer_updateAlarm_withCompletion___block_invoke_20(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ updateAlarm reply publisher ready, proceeding with request", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44__MTAlarmServer_updateAlarm_withCompletion___block_invoke_20_cold_1(a1);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [*(a1 + 32) _systemNotReadyError];
      (*(v7 + 16))(v7, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeAlarm:(id)alarm withCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  alarmCopy = alarm;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__MTAlarmServer_removeAlarm_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7B0C5D8;
  aBlock[4] = self;
  v8 = alarmCopy;
  v19 = v8;
  v9 = completionCopy;
  v20 = v9;
  v10 = _Block_copy(aBlock);
  if ([(MTAlarmServer *)self _isSystemReady])
  {
    v11 = MTLogForCategory(9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_INFO, "MTAlarmServer - Removing Alarm", buf, 2u);
    }

    v10[2](v10);
  }

  else
  {
    v12 = MTLogForCategory(3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_INFO, "%{public}@ removeAlarm system not ready, registering reply publisher", buf, 0xCu);
    }

    conductor = self->_conductor;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__MTAlarmServer_removeAlarm_withCompletion___block_invoke_21;
    v15[3] = &unk_1E7B0FE00;
    v15[4] = self;
    v16 = v10;
    v17 = v9;
    [(VoidConductor *)conductor registerReplyPublisherWithTimeOut:v15 completion:5.0];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __44__MTAlarmServer_removeAlarm_withCompletion___block_invoke(uint64_t a1)
{
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTAlarmServer - Removing Alarm", v7, 2u);
  }

  v3 = [*(a1 + 32) storage];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = [*(*(a1 + 32) + 24) currentClient];
  [v3 removeAlarm:v5 withCompletion:v4 source:v6];
}

void __44__MTAlarmServer_removeAlarm_withCompletion___block_invoke_21(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ removeAlarm reply publisher ready, proceeding with request", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44__MTAlarmServer_removeAlarm_withCompletion___block_invoke_21_cold_1(a1);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [*(a1 + 32) _systemNotReadyError];
      (*(v7 + 16))(v7, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)snoozeAlarmWithIdentifier:(id)identifier snoozeAction:(unint64_t)action withCompletion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__MTAlarmServer_snoozeAlarmWithIdentifier_snoozeAction_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7B0FE28;
  aBlock[4] = self;
  v10 = identifierCopy;
  v20 = v10;
  actionCopy = action;
  v11 = completionCopy;
  v21 = v11;
  v12 = _Block_copy(aBlock);
  if ([(MTAlarmServer *)self _isSystemReady])
  {
    v12[2](v12);
  }

  else
  {
    v13 = MTLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_INFO, "%{public}@ snoozeAlarmWithIdentifier system not ready, registering reply publisher", buf, 0xCu);
    }

    conductor = self->_conductor;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__MTAlarmServer_snoozeAlarmWithIdentifier_snoozeAction_withCompletion___block_invoke_24;
    v16[3] = &unk_1E7B0FE00;
    v16[4] = self;
    v17 = v12;
    v18 = v11;
    [(VoidConductor *)conductor registerReplyPublisherWithTimeOut:v16 completion:5.0];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __71__MTAlarmServer_snoozeAlarmWithIdentifier_snoozeAction_withCompletion___block_invoke(uint64_t a1)
{
  kdebug_trace();
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTAlarmServer - Snoozing Alarm", buf, 2u);
  }

  v3 = [*(a1 + 32) storage];
  v4 = *(a1 + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__MTAlarmServer_snoozeAlarmWithIdentifier_snoozeAction_withCompletion___block_invoke_22;
  v7[3] = &unk_1E7B0C688;
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v6 = [*(*(a1 + 32) + 24) currentClient];
  [v3 snoozeAlarmWithIdentifier:v5 snoozeAction:v4 withCompletion:v7 source:v6];
}

void __71__MTAlarmServer_snoozeAlarmWithIdentifier_snoozeAction_withCompletion___block_invoke_22(uint64_t a1, void *a2)
{
  v4 = a2;
  kdebug_trace();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __71__MTAlarmServer_snoozeAlarmWithIdentifier_snoozeAction_withCompletion___block_invoke_24(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ snoozeAlarmWithIdentifier reply publisher ready, proceeding with request", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__MTAlarmServer_snoozeAlarmWithIdentifier_snoozeAction_withCompletion___block_invoke_24_cold_1(a1);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [*(a1 + 32) _systemNotReadyError];
      (*(v7 + 16))(v7, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)dismissAlarmWithIdentifier:(id)identifier dismissAction:(unint64_t)action withCompletion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__MTAlarmServer_dismissAlarmWithIdentifier_dismissAction_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7B0FE28;
  aBlock[4] = self;
  v10 = identifierCopy;
  v20 = v10;
  actionCopy = action;
  v11 = completionCopy;
  v21 = v11;
  v12 = _Block_copy(aBlock);
  if ([(MTAlarmServer *)self _isSystemReady])
  {
    v12[2](v12);
  }

  else
  {
    v13 = MTLogForCategory(3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v13, OS_LOG_TYPE_INFO, "%{public}@ dismissAlarmWithIdentifier system not ready, registering reply publisher", buf, 0xCu);
    }

    conductor = self->_conductor;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __73__MTAlarmServer_dismissAlarmWithIdentifier_dismissAction_withCompletion___block_invoke_26;
    v16[3] = &unk_1E7B0FE00;
    v16[4] = self;
    v17 = v12;
    v18 = v11;
    [(VoidConductor *)conductor registerReplyPublisherWithTimeOut:v16 completion:5.0];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __73__MTAlarmServer_dismissAlarmWithIdentifier_dismissAction_withCompletion___block_invoke(uint64_t a1)
{
  kdebug_trace();
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTAlarmServer - Dismissing Alarm", buf, 2u);
  }

  v3 = [*(a1 + 32) storage];
  v4 = *(a1 + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__MTAlarmServer_dismissAlarmWithIdentifier_dismissAction_withCompletion___block_invoke_25;
  v7[3] = &unk_1E7B0C688;
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v6 = [*(*(a1 + 32) + 24) currentClient];
  [v3 dismissAlarmWithIdentifier:v5 dismissAction:v4 withCompletion:v7 source:v6];
}

void __73__MTAlarmServer_dismissAlarmWithIdentifier_dismissAction_withCompletion___block_invoke_25(uint64_t a1, void *a2)
{
  v4 = a2;
  kdebug_trace();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void __73__MTAlarmServer_dismissAlarmWithIdentifier_dismissAction_withCompletion___block_invoke_26(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ dismissAlarmWithIdentifier reply publisher ready, proceeding with request", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __73__MTAlarmServer_dismissAlarmWithIdentifier_dismissAction_withCompletion___block_invoke_26_cold_1(a1);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [*(a1 + 32) _systemNotReadyError];
      (*(v7 + 16))(v7, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)nextSleepAlarmWithCompletion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__MTAlarmServer_nextSleepAlarmWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7B0D6F0;
  v5 = completionCopy;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  if ([(MTAlarmServer *)self _isSystemReady])
  {
    v6[2](v6);
  }

  else
  {
    v7 = MTLogForCategory(3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_INFO, "%{public}@ nextSleepAlarmWithCompletion system not ready, registering reply publisher", buf, 0xCu);
    }

    conductor = self->_conductor;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__MTAlarmServer_nextSleepAlarmWithCompletion___block_invoke_28;
    v10[3] = &unk_1E7B0FE00;
    v10[4] = self;
    v11 = v6;
    v12 = v5;
    [(VoidConductor *)conductor registerReplyPublisherWithTimeOut:v10 completion:5.0];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __46__MTAlarmServer_nextSleepAlarmWithCompletion___block_invoke(uint64_t a1)
{
  v2 = MTLogForCategory(9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_INFO, "MTAlarmServer - Updating Alarm", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = +[MTSleepManager nextSleepAlarm];
  (*(v3 + 16))(v3, v4, 0);
}

void __46__MTAlarmServer_nextSleepAlarmWithCompletion___block_invoke_28(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ nextSleepAlarmWithCompletion reply publisher ready, proceeding with request", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __46__MTAlarmServer_nextSleepAlarmWithCompletion___block_invoke_28_cold_1(a1);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [*(a1 + 32) _systemNotReadyError];
      (*(v7 + 16))(v7, 0, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)source didAddAlarms:(id)alarms
{
  alarmsCopy = alarms;
  sourceCopy = source;
  connectionListenerProvider = [(MTAlarmServer *)self connectionListenerProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__MTAlarmServer_source_didAddAlarms___block_invoke;
  v10[3] = &unk_1E7B0FE50;
  v11 = alarmsCopy;
  v9 = alarmsCopy;
  [connectionListenerProvider performBlockOnAllClients:v10 excludingClient:sourceCopy];
}

- (void)source:(id)source didUpdateAlarms:(id)alarms
{
  alarmsCopy = alarms;
  sourceCopy = source;
  connectionListenerProvider = [(MTAlarmServer *)self connectionListenerProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__MTAlarmServer_source_didUpdateAlarms___block_invoke;
  v10[3] = &unk_1E7B0FE50;
  v11 = alarmsCopy;
  v9 = alarmsCopy;
  [connectionListenerProvider performBlockOnAllClients:v10 excludingClient:sourceCopy];
}

- (void)source:(id)source didRemoveAlarms:(id)alarms
{
  alarmsCopy = alarms;
  sourceCopy = source;
  connectionListenerProvider = [(MTAlarmServer *)self connectionListenerProvider];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__MTAlarmServer_source_didRemoveAlarms___block_invoke;
  v10[3] = &unk_1E7B0FE50;
  v11 = alarmsCopy;
  v9 = alarmsCopy;
  [connectionListenerProvider performBlockOnAllClients:v10 excludingClient:sourceCopy];
}

- (void)source:(id)source didSnoozeAlarm:(id)alarm snoozeAction:(unint64_t)action
{
  alarmCopy = alarm;
  connectionListenerProvider = [(MTAlarmServer *)self connectionListenerProvider];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__MTAlarmServer_source_didSnoozeAlarm_snoozeAction___block_invoke;
  v9[3] = &unk_1E7B0FE50;
  v10 = alarmCopy;
  v8 = alarmCopy;
  [connectionListenerProvider performBlockOnAllClients:v9];
}

- (void)source:(id)source didDismissAlarm:(id)alarm dismissAction:(unint64_t)action
{
  alarmCopy = alarm;
  connectionListenerProvider = [(MTAlarmServer *)self connectionListenerProvider];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__MTAlarmServer_source_didDismissAlarm_dismissAction___block_invoke;
  v9[3] = &unk_1E7B0FE50;
  v10 = alarmCopy;
  v8 = alarmCopy;
  [connectionListenerProvider performBlockOnAllClients:v9];
}

- (void)source:(id)source didFireAlarm:(id)alarm triggerType:(unint64_t)type
{
  alarmCopy = alarm;
  if ([objc_opt_class() _notifyClientsForTriggerType:type])
  {
    connectionListenerProvider = [(MTAlarmServer *)self connectionListenerProvider];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__MTAlarmServer_source_didFireAlarm_triggerType___block_invoke;
    v9[3] = &unk_1E7B0FE50;
    v10 = alarmCopy;
    [connectionListenerProvider performBlockOnAllClients:v9];
  }
}

- (void)source:(id)source didChangeNextAlarm:(id)alarm
{
  alarmCopy = alarm;
  connectionListenerProvider = [(MTAlarmServer *)self connectionListenerProvider];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__MTAlarmServer_source_didChangeNextAlarm___block_invoke;
  v8[3] = &unk_1E7B0FE50;
  v9 = alarmCopy;
  v7 = alarmCopy;
  [connectionListenerProvider performBlockOnAllClients:v8];
}

- (void)didShowCoversheetForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(MTAlarmServer *)self _isSystemReady])
  {
    analyticsCoordinator = [(MTAlarmServer *)self analyticsCoordinator];
    [analyticsCoordinator didShowCoversheetForIdentifier:identifierCopy];
  }
}

- (void)didPostToneAlertWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(MTAlarmServer *)self _isSystemReady])
  {
    analyticsCoordinator = [(MTAlarmServer *)self analyticsCoordinator];
    [analyticsCoordinator didPostToneAlertWithIdentifier:identifierCopy];
  }
}

- (void)didTearDownToneAlertWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(MTAlarmServer *)self _isSystemReady])
  {
    analyticsCoordinator = [(MTAlarmServer *)self analyticsCoordinator];
    [analyticsCoordinator didTearDownToneAlertWithIdentifier:identifierCopy];
  }
}

- (void)didDuckPlaybackForAttentionAwarenessWithId:(id)id
{
  idCopy = id;
  if ([(MTAlarmServer *)self _isSystemReady])
  {
    analyticsCoordinator = [(MTAlarmServer *)self analyticsCoordinator];
    [analyticsCoordinator didDuckPlaybackForAttentionAwarenessWithId:idCopy];
  }
}

- (void)didTriggerSoundPlaybackWithId:(id)id
{
  idCopy = id;
  if ([(MTAlarmServer *)self _isSystemReady])
  {
    analyticsCoordinator = [(MTAlarmServer *)self analyticsCoordinator];
    [analyticsCoordinator didTriggerSoundPlaybackWithId:idCopy];
  }
}

- (void)didUpdateAudioReporterId:(id)id
{
  idCopy = id;
  if ([(MTAlarmServer *)self _isSystemReady])
  {
    analyticsCoordinator = [(MTAlarmServer *)self analyticsCoordinator];
    [analyticsCoordinator didUpdateAudioReporterId:{objc_msgSend(idCopy, "unsignedIntegerValue")}];
  }
}

- (void)didStopSoundPlaybackWithId:(id)id
{
  idCopy = id;
  if ([(MTAlarmServer *)self _isSystemReady])
  {
    analyticsCoordinator = [(MTAlarmServer *)self analyticsCoordinator];
    [analyticsCoordinator didStopSoundPlaybackWithId:idCopy];
  }
}

- (void)didRenderSceneForAlarm:(id)alarm withType:(id)type
{
  alarmCopy = alarm;
  typeCopy = type;
  if ([(MTAlarmServer *)self _isSystemReady])
  {
    analyticsCoordinator = [(MTAlarmServer *)self analyticsCoordinator];
    [analyticsCoordinator didRenderSceneForAlarm:alarmCopy withType:typeCopy];
  }
}

- (void)didAlertNotificationWithID:(id)d
{
  dCopy = d;
  if ([(MTAlarmServer *)self _isSystemReady])
  {
    v5 = +[MTAgent agent];
    alarmKit = [v5 alarmKit];
    [alarmKit didAlertNotificationWithID:dCopy];

    v7 = +[MTAgent agent];
    activityCoordinator = [v7 activityCoordinator];
    [activityCoordinator didAlertNotificationWithID:dCopy];
  }

  else
  {
    v9 = MTLogForCategory(3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MTAlarmServer didAlertNotificationWithID:?];
    }
  }
}

- (void)updateSleepAlarmsWithCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__MTAlarmServer_updateSleepAlarmsWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7B0D6F0;
  v5 = completionCopy;
  v15 = v5;
  v6 = _Block_copy(aBlock);
  v7 = MTLogForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ calling to refresh sleep alarms", buf, 0xCu);
  }

  if ([(MTAlarmServer *)self _isSystemReady])
  {
    v6[2](v6);
  }

  else
  {
    v8 = MTLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ updateSleepAlarmsWithCompletion system not ready, registering reply publisher", buf, 0xCu);
    }

    conductor = self->_conductor;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__MTAlarmServer_updateSleepAlarmsWithCompletion___block_invoke_31;
    v11[3] = &unk_1E7B0FE00;
    v11[4] = self;
    v12 = v6;
    v13 = v5;
    [(VoidConductor *)conductor registerReplyPublisherWithTimeOut:v11 completion:5.0];
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __49__MTAlarmServer_updateSleepAlarmsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = +[MTAgent agent];
  v3 = [v2 sleepManager];
  [v3 updateSleepAlarms];

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __49__MTAlarmServer_updateSleepAlarmsWithCompletion___block_invoke_31(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ updateSleepAlarmsWithCompletion reply publisher ready, proceeding with request", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49__MTAlarmServer_updateSleepAlarmsWithCompletion___block_invoke_31_cold_1(a1);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [*(a1 + 32) _systemNotReadyError];
      (*(v7 + 16))(v7, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)resetSleepAlarmSnoozeStateWithCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__MTAlarmServer_resetSleepAlarmSnoozeStateWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7B0D6F0;
  v5 = completionCopy;
  v15 = v5;
  v6 = _Block_copy(aBlock);
  v7 = MTLogForCategory(3);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ calling to reset sleep alarms snooze state", buf, 0xCu);
  }

  if ([(MTAlarmServer *)self _isSystemReady])
  {
    v6[2](v6);
  }

  else
  {
    v8 = MTLogForCategory(3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_INFO, "%{public}@ resetSleepAlarmSnoozeStateWithCompletion system not ready, registering reply publisher", buf, 0xCu);
    }

    conductor = self->_conductor;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__MTAlarmServer_resetSleepAlarmSnoozeStateWithCompletion___block_invoke_32;
    v11[3] = &unk_1E7B0FE00;
    v11[4] = self;
    v12 = v6;
    v13 = v5;
    [(VoidConductor *)conductor registerReplyPublisherWithTimeOut:v11 completion:5.0];
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __58__MTAlarmServer_resetSleepAlarmSnoozeStateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = +[MTAgent agent];
  v3 = [v2 sleepManager];
  [v3 resetSleepAlarmSnoozeState];

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __58__MTAlarmServer_resetSleepAlarmSnoozeStateWithCompletion___block_invoke_32(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = MTLogForCategory(3);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_INFO, "%{public}@ resetSleepAlarmSnoozeStateWithCompletion reply publisher ready, proceeding with request", &v10, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __58__MTAlarmServer_resetSleepAlarmSnoozeStateWithCompletion___block_invoke_32_cold_1(a1);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = [*(a1 + 32) _systemNotReadyError];
      (*(v7 + 16))(v7, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)printDiagnostics
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "-----MTAlarmServer-----", &v10, 2u);
  }

  v4 = MTLogForCategory(1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[MTAlarmServer _isSystemReady](self, "_isSystemReady")}];
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "System Ready: %@", &v10, 0xCu);
  }

  v6 = MTLogForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    connectionListenerProvider = [(MTAlarmServer *)self connectionListenerProvider];
    connectedClients = [connectionListenerProvider connectedClients];
    v10 = 138543362;
    v11 = connectedClients;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "Clients: %{public}@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)gatherDiagnostics
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"Alarm system ready";
  if ([(MTAlarmServer *)self _isSystemReady])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v11[1] = @"Alarm clients";
  v12[0] = v3;
  connectionListenerProvider = [(MTAlarmServer *)self connectionListenerProvider];
  connectedClients = [connectionListenerProvider connectedClients];
  v6 = [connectedClients valueForKey:@"processName"];
  v7 = [v6 componentsJoinedByString:{@", "}];
  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (MTEventReporting)analyticsCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsCoordinator);

  return WeakRetained;
}

void __41__MTAlarmServer_getAlarmsWithCompletion___block_invoke_16_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v1, v2, "%{public}@ getAlarmsWithCompletion reply publisher timed out, replying with error", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __41__MTAlarmServer_addAlarm_withCompletion___block_invoke_19_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v1, v2, "%{public}@ addAlarm reply publisher timed out, replying with error", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __44__MTAlarmServer_updateAlarm_withCompletion___block_invoke_20_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v1, v2, "%{public}@ updateAlarm reply publisher timed out, replying with error", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __44__MTAlarmServer_removeAlarm_withCompletion___block_invoke_21_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v1, v2, "%{public}@ removeAlarm reply publisher timed out, replying with error", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __71__MTAlarmServer_snoozeAlarmWithIdentifier_snoozeAction_withCompletion___block_invoke_24_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v1, v2, "%{public}@ snoozeAlarmWithIdentifier reply publisher timed out, replying with error", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __73__MTAlarmServer_dismissAlarmWithIdentifier_dismissAction_withCompletion___block_invoke_26_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v1, v2, "%{public}@ dismissAlarmWithIdentifier reply publisher timed out, replying with error", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __46__MTAlarmServer_nextSleepAlarmWithCompletion___block_invoke_28_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_1(&dword_1B1F9F000, v1, v2, "%{public}@ nextSleepAlarmWithCompletion reply publisher timed out, replying with error", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)didAlertNotificationWithID:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 _systemNotReadyError];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_2(&dword_1B1F9F000, v2, v3, "%{public}@ failed to inform AlarmKit of notification post: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __49__MTAlarmServer_updateSleepAlarmsWithCompletion___block_invoke_31_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) _systemNotReadyError];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_2(&dword_1B1F9F000, v2, v3, "%{public}@ updateSleepAlarmsWithCompletion could not refresh sleep alarms:%{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __58__MTAlarmServer_resetSleepAlarmSnoozeStateWithCompletion___block_invoke_32_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) _systemNotReadyError];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_2(&dword_1B1F9F000, v2, v3, "%{public}@ resetSleepAlarmSnoozeStateWithCompletion could not reset sleep alarms snooze state:%{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end