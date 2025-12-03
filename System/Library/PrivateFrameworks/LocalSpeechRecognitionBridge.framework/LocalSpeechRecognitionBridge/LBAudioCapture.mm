@interface LBAudioCapture
- (LBAudioCapture)initWithQueue:(id)queue;
- (id)_stopStreamOptionWithReason:(unint64_t)reason forRequestId:(id)id;
- (void)CSXPCClient:(id)client didDisconnect:(BOOL)disconnect;
- (void)_startRequestWithAudioContext:(id)context streamOption:(id)option streamProvider:(id)provider completion:(id)completion;
- (void)startAudioCaptureWithRecordContext:(id)context startHostTime:(unint64_t)time siriSessionUUID:(id)d completion:(id)completion;
- (void)stopAudioCaptureWithReason:(unint64_t)reason requestId:(id)id completion:(id)completion;
@end

@implementation LBAudioCapture

- (void)CSXPCClient:(id)client didDisconnect:(BOOL)disconnect
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__LBAudioCapture_CSXPCClient_didDisconnect___block_invoke;
  block[3] = &unk_2798239B8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __44__LBAudioCapture_CSXPCClient_didDisconnect___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[LBAudioCapture CSXPCClient:didDisconnect:]_block_invoke";
    _os_log_impl(&dword_256130000, v2, OS_LOG_TYPE_DEFAULT, "%s Received xpc disconnection", &v7, 0xCu);
  }

  v3 = *(*(a1 + 32) + 24);
  if (v3)
  {
    [v3 disconnect];
    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
    *(v4 + 24) = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_stopStreamOptionWithReason:(unint64_t)reason forRequestId:(id)id
{
  if (reason == 1)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  v5 = MEMORY[0x277D01698];
  idCopy = id;
  v7 = [[v5 alloc] initWithTimeout:8 clientIdentity:0 requireRecordModeLock:1 requireListeningMicIndicatorLock:1.0];
  v8 = [objc_alloc(MEMORY[0x277D01680]) initWithStopRecordingReason:v4 expectedStopHostTime:0 trailingSilenceDurationAtEndpoint:v7 holdRequest:1 supportsMagus:idCopy requestId:0.0];

  return v8;
}

- (void)stopAudioCaptureWithReason:(unint64_t)reason requestId:(id)id completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  idCopy = id;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v10 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[LBAudioCapture stopAudioCaptureWithReason:requestId:completion:]";
    _os_log_impl(&dword_256130000, v10, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__LBAudioCapture_stopAudioCaptureWithReason_requestId_completion___block_invoke;
  v19[3] = &unk_279823940;
  v11 = completionCopy;
  v20 = v11;
  v12 = MEMORY[0x259C5B300](v19);
  audioStream = [(LBAudioCapture *)self audioStream];

  if (audioStream)
  {
    v14 = [(LBAudioCapture *)self _stopStreamOptionWithReason:reason forRequestId:idCopy];
    audioStream2 = [(LBAudioCapture *)self audioStream];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __66__LBAudioCapture_stopAudioCaptureWithReason_requestId_completion___block_invoke_5;
    v17[3] = &unk_279823990;
    v17[4] = self;
    v18 = v12;
    [audioStream2 stopAudioStreamWithOption:v14 completion:v17];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.localsrbridge" code:202 userInfo:0];
    (v12)[2](v12, 0, v14);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __66__LBAudioCapture_stopAudioCaptureWithReason_requestId_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 localizedDescription];
    v11 = 136315650;
    v12 = "[LBAudioCapture stopAudioCaptureWithReason:requestId:completion:]_block_invoke";
    v13 = 1024;
    v14 = a2;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_256130000, v7, OS_LOG_TYPE_DEFAULT, "%s Calling didStop with result : %d, error : %{public}@", &v11, 0x1Cu);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __66__LBAudioCapture_stopAudioCaptureWithReason_requestId_completion___block_invoke_5(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__LBAudioCapture_stopAudioCaptureWithReason_requestId_completion___block_invoke_2;
  block[3] = &unk_279823968;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)_startRequestWithAudioContext:(id)context streamOption:(id)option streamProvider:(id)provider completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  optionCopy = option;
  providerCopy = provider;
  completionCopy = completion;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __87__LBAudioCapture__startRequestWithAudioContext_streamOption_streamProvider_completion___block_invoke;
  v29[3] = &unk_279823940;
  v14 = completionCopy;
  v30 = v14;
  v15 = MEMORY[0x259C5B300](v29);
  if (providerCopy)
  {
    v25 = optionCopy;
    v16 = [MEMORY[0x277D016A0] defaultRequestWithContext:contextCopy];
    [v16 setClientIdentity:4];
    [v16 setRequestListeningMicIndicatorLock:1];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v28 = 0;
    v19 = [providerCopy audioStreamWithRequest:v16 streamName:v18 error:&v28];
    v20 = v28;

    if (v19)
    {
      [(LBAudioCapture *)self setAudioStream:v19];
      [v19 setDelegate:0];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __87__LBAudioCapture__startRequestWithAudioContext_streamOption_streamProvider_completion___block_invoke_4;
      v26[3] = &unk_279823940;
      v27 = v15;
      optionCopy = v25;
      [v19 startAudioStreamWithOption:v25 completion:v26];
    }

    else
    {
      v21 = LBLogContextFacilityLocalSRBridge;
      optionCopy = v25;
      if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_ERROR))
      {
        v23 = v21;
        localizedDescription = [v20 localizedDescription];
        *buf = 136315394;
        v32 = "[LBAudioCapture _startRequestWithAudioContext:streamOption:streamProvider:completion:]";
        v33 = 2114;
        v34 = localizedDescription;
        _os_log_error_impl(&dword_256130000, v23, OS_LOG_TYPE_ERROR, "%s AudioStreamRequest has failed : %{public}@", buf, 0x16u);

        optionCopy = v25;
      }

      (v15)[2](v15, 0, v20);
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.localsrbridge" code:202 userInfo:0];
    (v15)[2](v15, 0, v20);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __87__LBAudioCapture__startRequestWithAudioContext_streamOption_streamProvider_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 localizedDescription];
    v11 = 136315650;
    v12 = "[LBAudioCapture _startRequestWithAudioContext:streamOption:streamProvider:completion:]_block_invoke";
    v13 = 1024;
    v14 = a2;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_256130000, v7, OS_LOG_TYPE_DEFAULT, "%s Calling didStart with result : %d, error : %{public}@", &v11, 0x1Cu);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)startAudioCaptureWithRecordContext:(id)context startHostTime:(unint64_t)time siriSessionUUID:(id)d completion:(id)completion
{
  v40[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dCopy = d;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v13 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [contextCopy description];
    *buf = 136315906;
    *&buf[4] = "[LBAudioCapture startAudioCaptureWithRecordContext:startHostTime:siriSessionUUID:completion:]";
    *&buf[12] = 2114;
    *&buf[14] = v15;
    *&buf[22] = 2048;
    timeCopy = time;
    LOWORD(v40[0]) = 2112;
    *(v40 + 2) = dCopy;
    _os_log_impl(&dword_256130000, v14, OS_LOG_TYPE_DEFAULT, "%s start audio capture with recordContext : %{public}@, hostTime : %llu siriSessionUUID:%@", buf, 0x2Au);
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __94__LBAudioCapture_startAudioCaptureWithRecordContext_startHostTime_siriSessionUUID_completion___block_invoke;
  v32[3] = &unk_279823940;
  v16 = completionCopy;
  v33 = v16;
  v17 = MEMORY[0x259C5B300](v32);
  xpcClient = self->_xpcClient;
  if (!xpcClient)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2050000000;
    v19 = getCSXPCClientClass_softClass;
    v37 = getCSXPCClientClass_softClass;
    if (!getCSXPCClientClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCSXPCClientClass_block_invoke;
      timeCopy = &unk_279823A60;
      v40[0] = &v34;
      __getCSXPCClientClass_block_invoke(buf);
      v19 = v35[3];
    }

    v20 = v19;
    _Block_object_dispose(&v34, 8);
    v21 = [[v19 alloc] initWithType:1];
    v22 = self->_xpcClient;
    self->_xpcClient = v21;

    [(CSXPCClient *)self->_xpcClient setDelegate:self];
    [(CSXPCClient *)self->_xpcClient connect];
    xpcClient = self->_xpcClient;
  }

  v31 = 0;
  v23 = [(CSXPCClient *)xpcClient prepareAudioProviderWithContext:contextCopy clientType:4 error:&v31];
  v24 = v31;
  if (v23)
  {
    v25 = self->_xpcClient;
    if (v25)
    {
      noAlertOption = [MEMORY[0x277D01678] noAlertOption];
      [noAlertOption setRequestHistoricalAudioDataWithHostTime:1];
      [noAlertOption setStartRecordingHostTime:time];
      [noAlertOption setSiriSessionUUID:dCopy];
      [noAlertOption setDisableRCSelection:1];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      [noAlertOption setRequestMHUUID:uUIDString];
      v29 = LBLogContextFacilityLocalSRBridge;
      if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "[LBAudioCapture startAudioCaptureWithRecordContext:startHostTime:siriSessionUUID:completion:]";
        *&buf[12] = 2112;
        *&buf[14] = uUIDString;
        *&buf[22] = 2112;
        timeCopy = dCopy;
        _os_log_impl(&dword_256130000, v29, OS_LOG_TYPE_DEFAULT, "%s Minting MHId %@ for requestId %@", buf, 0x20u);
      }

      [(LBAudioCapture *)self _startRequestWithAudioContext:contextCopy streamOption:noAlertOption streamProvider:v25 completion:v17];
    }

    else
    {
      noAlertOption = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.localsrbridge" code:202 userInfo:0];
      (v17)[2](v17, 0, noAlertOption);
    }
  }

  else
  {
    (v17)[2](v17, 0, v24);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __94__LBAudioCapture_startAudioCaptureWithRecordContext_startHostTime_siriSessionUUID_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 localizedDescription];
    v11 = 136315650;
    v12 = "[LBAudioCapture startAudioCaptureWithRecordContext:startHostTime:siriSessionUUID:completion:]_block_invoke";
    v13 = 1024;
    v14 = a2;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_256130000, v7, OS_LOG_TYPE_DEFAULT, "%s audio capture start with result : %d, error : %{public}@", &v11, 0x1Cu);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (LBAudioCapture)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = LBAudioCapture;
  v6 = [(LBAudioCapture *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

@end