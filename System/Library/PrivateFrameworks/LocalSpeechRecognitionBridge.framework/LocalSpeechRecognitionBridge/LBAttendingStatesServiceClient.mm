@interface LBAttendingStatesServiceClient
- (LBAttendingStatesServiceClient)initWithDelegate:(id)a3;
- (LBAttendingStatesServiceDelegate)delegate;
- (id)_connection;
- (id)_newConnection;
- (id)_service;
- (void)_invalidate;
- (void)dealloc;
- (void)directActionJarvisAnnounceMessageTriggerWithDeviceId:(id)a3;
- (void)dismissAttending;
- (void)invalidate;
- (void)localAttendingStartedWithRootRequestId:(id)a3;
- (void)localAttendingStopped;
- (void)localAttendingStoppedUnexpectedlyWithError:(id)a3;
- (void)localAttendingWillStartWithRootRequestId:(id)a3;
- (void)requestDismissed;
- (void)siriDidPrompt;
- (void)siriDidPromptWithRootRequestId:(id)a3;
- (void)siriPromptWillStart;
- (void)siriPromptWillStartWithRootRequestId:(id)a3;
- (void)speechRecognizerReadyForNewTurnWithSpeechStartDetectedAtHostTime:(unint64_t)a3 audioRecordType:(int64_t)a4 audioRecordDeviceId:(id)a5;
- (void)speechStartDetectedWithHostTime:(unint64_t)a3 audioRecordType:(int64_t)a4 audioRecordDeviceId:(id)a5;
- (void)startUpdateStates;
@end

@implementation LBAttendingStatesServiceClient

- (void)startUpdateStates
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__LBAttendingStatesServiceClient_startUpdateStates__block_invoke;
  block[3] = &unk_2798239B8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __51__LBAttendingStatesServiceClient_startUpdateStates__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[LBAttendingStatesServiceClient startUpdateStates]_block_invoke";
    _os_log_impl(&dword_256130000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  v3 = [*(a1 + 32) _service];
  [v3 startUpdateStates];

  v4 = *MEMORY[0x277D85DE8];
}

- (id)_service
{
  v2 = [(LBAttendingStatesServiceClient *)self _connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (id)_connection
{
  v31 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v4 UUIDString];
    xpcConnectionUUIDString = self->_xpcConnectionUUIDString;
    self->_xpcConnectionUUIDString = v5;

    v7 = LBLogContextFacilityLocalSRBridge;
    if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_xpcConnectionUUIDString;
      *buf = 136315394;
      v28 = "[LBAttendingStatesServiceClient _connection]";
      v29 = 2114;
      v30 = v8;
      _os_log_impl(&dword_256130000, v7, OS_LOG_TYPE_DEFAULT, "%s Creating new xpc connection %{public}@...", buf, 0x16u);
    }

    v9 = [(LBAttendingStatesServiceClient *)self _newConnection];
    v10 = self->_xpcConnection;
    self->_xpcConnection = v9;

    objc_initWeak(buf, self);
    v11 = self->_xpcConnectionUUIDString;
    v12 = self->_xpcConnection;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __45__LBAttendingStatesServiceClient__connection__block_invoke;
    v24[3] = &unk_279823918;
    v13 = v11;
    v25 = v13;
    objc_copyWeak(&v26, buf);
    [(NSXPCConnection *)v12 setInterruptionHandler:v24];
    v14 = self->_xpcConnection;
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __45__LBAttendingStatesServiceClient__connection__block_invoke_16;
    v21 = &unk_279823918;
    v15 = v13;
    v22 = v15;
    objc_copyWeak(&v23, buf);
    [(NSXPCConnection *)v14 setInvalidationHandler:&v18];
    [(NSXPCConnection *)self->_xpcConnection resume:v18];
    objc_destroyWeak(&v23);

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
    xpcConnection = self->_xpcConnection;
  }

  v16 = *MEMORY[0x277D85DE8];

  return xpcConnection;
}

- (id)_newConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.siri.attendingstates.xpc" options:0];
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286833858];
  [v3 setRemoteObjectInterface:v4];

  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2868336C8];
  [v3 setExportedInterface:v5];

  [v3 setExportedObject:self];
  [v3 _setQueue:self->_queue];
  return v3;
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__LBAttendingStatesServiceClient_invalidate__block_invoke;
  block[3] = &unk_2798239B8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_invalidate
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[LBAttendingStatesServiceClient _invalidate]";
    _os_log_impl(&dword_256130000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v8, 0xCu);
  }

  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = 0;

  remoteObjectProxy = self->_remoteObjectProxy;
  self->_remoteObjectProxy = 0;

  xpcConnectionUUIDString = self->_xpcConnectionUUIDString;
  self->_xpcConnectionUUIDString = 0;

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[LBAttendingStatesServiceClient dealloc]";
    _os_log_impl(&dword_256130000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  [(LBAttendingStatesServiceClient *)self _invalidate];
  v5.receiver = self;
  v5.super_class = LBAttendingStatesServiceClient;
  [(LBAttendingStatesServiceClient *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (LBAttendingStatesServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __45__LBAttendingStatesServiceClient__connection__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained xpcConnectionUUIDString];
    v18 = 136315906;
    v19 = "[LBAttendingStatesServiceClient _connection]_block_invoke";
    v20 = 2112;
    v21 = @"com.apple.siri.attendingstates.xpc";
    v22 = 2114;
    v23 = v3;
    v24 = 2114;
    v25 = v6;
    _os_log_impl(&dword_256130000, v4, OS_LOG_TYPE_DEFAULT, "%s xpc connection %@(%{public}@) Interrupted (current connection: %{public}@", &v18, 0x2Au);
  }

  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = v7;
  if (v7)
  {
    v9 = *(a1 + 32);
    v10 = [v7 xpcConnectionUUIDString];
    LOBYTE(v9) = [v9 isEqualToString:v10];

    if (v9)
    {
      [v8[3] setInvalidationHandler:0];
      [v8[3] invalidate];
      v11 = v8[3];
      v8[3] = 0;

      if (*(v8 + 8) == 1)
      {
        *(v8 + 8) = 0;
        v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.localsrbridge" code:501 userInfo:0];
        v13 = objc_loadWeakRetained(v8 + 5);
        [v13 localAttendingStoppedUnexpectedlyWithError:v12];
LABEL_9:

        goto LABEL_10;
      }

      v17 = LBLogContextFacilityLocalSRBridge;
      if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315138;
        v19 = "[LBAttendingStatesServiceClient _connection]_block_invoke";
        _os_log_impl(&dword_256130000, v17, OS_LOG_TYPE_DEFAULT, "%s Skip reporting unexpected stop due to xpc interruption, since Siri is not in attending state", &v18, 0xCu);
      }
    }

    else
    {
      v14 = LBLogContextFacilityLocalSRBridge;
      if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        v12 = v14;
        v13 = [v8 xpcConnectionUUIDString];
        v18 = 136315650;
        v19 = "[LBAttendingStatesServiceClient _connection]_block_invoke";
        v20 = 2112;
        v21 = v15;
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&dword_256130000, v12, OS_LOG_TYPE_INFO, "%s Ignore since the UUID of xpc connection not match : %@ vs. %@", &v18, 0x20u);
        goto LABEL_9;
      }
    }
  }

LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
}

void __45__LBAttendingStatesServiceClient__connection__block_invoke_16(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained xpcConnectionUUIDString];
    v18 = 136315906;
    v19 = "[LBAttendingStatesServiceClient _connection]_block_invoke";
    v20 = 2112;
    v21 = @"com.apple.siri.attendingstates.xpc";
    v22 = 2112;
    v23 = v3;
    v24 = 2114;
    v25 = v6;
    _os_log_impl(&dword_256130000, v4, OS_LOG_TYPE_DEFAULT, "%s xpc connection %@(%@) Invalidated (current connection: %{public}@", &v18, 0x2Au);
  }

  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = v7;
  if (v7)
  {
    v9 = *(a1 + 32);
    v10 = [v7 xpcConnectionUUIDString];
    LOBYTE(v9) = [v9 isEqualToString:v10];

    if (v9)
    {
      v11 = *(v8 + 3);
      *(v8 + 3) = 0;

      if (*(v8 + 8) == 1)
      {
        *(v8 + 8) = 0;
        v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.localsrbridge" code:501 userInfo:0];
        v13 = objc_loadWeakRetained(v8 + 5);
        [v13 localAttendingStoppedUnexpectedlyWithError:v12];
LABEL_9:

        goto LABEL_10;
      }

      v17 = LBLogContextFacilityLocalSRBridge;
      if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315138;
        v19 = "[LBAttendingStatesServiceClient _connection]_block_invoke";
        _os_log_impl(&dword_256130000, v17, OS_LOG_TYPE_DEFAULT, "%s Skip reporting unexpected stop due to xpc invalidation, since Siri is not in attending state", &v18, 0xCu);
      }
    }

    else
    {
      v14 = LBLogContextFacilityLocalSRBridge;
      if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        v12 = v14;
        v13 = [v8 xpcConnectionUUIDString];
        v18 = 136315650;
        v19 = "[LBAttendingStatesServiceClient _connection]_block_invoke";
        v20 = 2112;
        v21 = v15;
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&dword_256130000, v12, OS_LOG_TYPE_INFO, "%s Ignore since the UUID of xpc connection not match : %@ vs. %@", &v18, 0x20u);
        goto LABEL_9;
      }
    }
  }

LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)speechRecognizerReadyForNewTurnWithSpeechStartDetectedAtHostTime:(unint64_t)a3 audioRecordType:(int64_t)a4 audioRecordDeviceId:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v9 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315906;
    v15 = "[LBAttendingStatesServiceClient speechRecognizerReadyForNewTurnWithSpeechStartDetectedAtHostTime:audioRecordType:audioRecordDeviceId:]";
    v16 = 2048;
    v17 = a3;
    v18 = 2048;
    v19 = a4;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&dword_256130000, v9, OS_LOG_TYPE_DEFAULT, "%s hostTime : %llu, audioRecordType : %lld, deviceId : %{public}@", &v14, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 speechRecognizerReadyForNewTurnWithSpeechStartDetectedAtHostTime:a3 audioRecordType:a4 audioRecordDeviceId:v8];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)speechStartDetectedWithHostTime:(unint64_t)a3 audioRecordType:(int64_t)a4 audioRecordDeviceId:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v9 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315906;
    v15 = "[LBAttendingStatesServiceClient speechStartDetectedWithHostTime:audioRecordType:audioRecordDeviceId:]";
    v16 = 2048;
    v17 = a3;
    v18 = 2048;
    v19 = a4;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&dword_256130000, v9, OS_LOG_TYPE_DEFAULT, "%s hostTime : %llu, audioRecordType : %lld, deviceId : %{public}@", &v14, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 speechStartDetectedWithHostTime:a3 audioRecordType:a4 audioRecordDeviceId:v8];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)localAttendingStopped
{
  v7 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[LBAttendingStatesServiceClient localAttendingStopped]";
    _os_log_impl(&dword_256130000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  self->_isAttending = 0;
  v4 = *MEMORY[0x277D85DE8];
}

- (void)localAttendingStoppedUnexpectedlyWithError:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[LBAttendingStatesServiceClient localAttendingStoppedUnexpectedlyWithError:]";
    _os_log_impl(&dword_256130000, v6, OS_LOG_TYPE_DEFAULT, "%s ", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained localAttendingStoppedUnexpectedlyWithError:v5];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)localAttendingStartedWithRootRequestId:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[LBAttendingStatesServiceClient localAttendingStartedWithRootRequestId:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_256130000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v10, 0x16u);
  }

  self->_isAttending = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 localAttendingStartedWithRootRequestId:v4];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)localAttendingWillStartWithRootRequestId:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[LBAttendingStatesServiceClient localAttendingWillStartWithRootRequestId:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_256130000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 localAttendingWillStartWithRootRequestId:v4];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)requestDismissed
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__LBAttendingStatesServiceClient_requestDismissed__block_invoke;
  block[3] = &unk_2798239B8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __50__LBAttendingStatesServiceClient_requestDismissed__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[LBAttendingStatesServiceClient requestDismissed]_block_invoke";
    _os_log_impl(&dword_256130000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  v3 = [*(a1 + 32) _service];
  [v3 requestDismissed];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)dismissAttending
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__LBAttendingStatesServiceClient_dismissAttending__block_invoke;
  block[3] = &unk_2798239B8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __50__LBAttendingStatesServiceClient_dismissAttending__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[LBAttendingStatesServiceClient dismissAttending]_block_invoke";
    _os_log_impl(&dword_256130000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  v3 = [*(a1 + 32) _service];
  [v3 dismissAttending];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)directActionJarvisAnnounceMessageTriggerWithDeviceId:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __87__LBAttendingStatesServiceClient_directActionJarvisAnnounceMessageTriggerWithDeviceId___block_invoke;
  v7[3] = &unk_2798238E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __87__LBAttendingStatesServiceClient_directActionJarvisAnnounceMessageTriggerWithDeviceId___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[LBAttendingStatesServiceClient directActionJarvisAnnounceMessageTriggerWithDeviceId:]_block_invoke";
    _os_log_impl(&dword_256130000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  v3 = [*(a1 + 32) _service];
  [v3 directActionJarvisAnnounceMessageTriggerWithDeviceId:*(a1 + 40)];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)siriDidPromptWithRootRequestId:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__LBAttendingStatesServiceClient_siriDidPromptWithRootRequestId___block_invoke;
  v7[3] = &unk_2798238E8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __65__LBAttendingStatesServiceClient_siriDidPromptWithRootRequestId___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[LBAttendingStatesServiceClient siriDidPromptWithRootRequestId:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_256130000, v2, OS_LOG_TYPE_DEFAULT, "%s %@", &v6, 0x16u);
  }

  v4 = [*(a1 + 40) _service];
  [v4 siriDidPromptWithRootRequestId:*(a1 + 32)];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)siriPromptWillStartWithRootRequestId:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__LBAttendingStatesServiceClient_siriPromptWillStartWithRootRequestId___block_invoke;
  v7[3] = &unk_2798238E8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __71__LBAttendingStatesServiceClient_siriPromptWillStartWithRootRequestId___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[LBAttendingStatesServiceClient siriPromptWillStartWithRootRequestId:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_256130000, v2, OS_LOG_TYPE_DEFAULT, "%s %@", &v6, 0x16u);
  }

  v4 = [*(a1 + 40) _service];
  [v4 siriPromptWillStartWithRootRequestId:*(a1 + 32)];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)siriDidPrompt
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__LBAttendingStatesServiceClient_siriDidPrompt__block_invoke;
  block[3] = &unk_2798239B8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __47__LBAttendingStatesServiceClient_siriDidPrompt__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _service];
  [v1 siriDidPrompt];
}

- (void)siriPromptWillStart
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__LBAttendingStatesServiceClient_siriPromptWillStart__block_invoke;
  block[3] = &unk_2798239B8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __53__LBAttendingStatesServiceClient_siriPromptWillStart__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _service];
  [v1 siriPromptWillStart];
}

- (LBAttendingStatesServiceClient)initWithDelegate:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = LBAttendingStatesServiceClient;
  v5 = [(LBAttendingStatesServiceClient *)&v12 init];
  if (v5)
  {
    if (LBLogInitIfNeeded_once != -1)
    {
      dispatch_once(&LBLogInitIfNeeded_once, &__block_literal_global);
    }

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v7 = dispatch_queue_create("LBAttendingStatesServiceClient Queue", v6);
    queue = v5->_queue;
    v5->_queue = v7;

    objc_storeWeak(&v5->_delegate, v4);
  }

  v9 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[LBAttendingStatesServiceClient initWithDelegate:]";
    v15 = 2048;
    v16 = v5;
    _os_log_impl(&dword_256130000, v9, OS_LOG_TYPE_DEFAULT, "%s created %p", buf, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

@end