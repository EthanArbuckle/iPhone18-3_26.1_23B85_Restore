@interface LBLocalSpeechRecognizerClient
- (LBLocalSpeechRecognizerClient)initWithDelegate:(id)delegate xpcListenerEndpoint:(id)endpoint audioCapture:(id)capture;
- (LBLocalSpeechRecognizerClientDelegate)delegate;
- (id)_connection;
- (id)_newConnection;
- (id)_service;
- (void)_invalidate;
- (void)_stopSpeechRecognitionTaskWithReason:(unint64_t)reason requestId:(id)id shouldInvalidateAfterStop:(BOOL)stop completion:(id)completion;
- (void)connectToServiceIfNeeded;
- (void)dealloc;
- (void)disableLocalSpeechRecognitionForRequestId:(id)id;
- (void)invalidate;
- (void)localSpeechServiceDidCompletionRecognitionWithStatistics:(id)statistics requestId:(id)id endpointMode:(int64_t)mode error:(id)error;
- (void)localSpeechServiceDidDetectedFinalEndpointAtTime:(double)time;
- (void)localSpeechServiceDidReceiveContinuityEndDetected:(id)detected;
- (void)localSpeechServiceDidReceiveMultiUserTRPCandidatePackage:(id)package;
- (void)localSpeechServiceDidReceiveTCUStateUpdate:(id)update;
- (void)localSpeechServiceDidReceiveTRPCandidatePackage:(id)package;
- (void)localSpeechServiceDidReceiveTRPDetected:(id)detected;
- (void)localSpeechServiceDidReceivedEagerRecognitionCandidateWithRequestId:(id)id rcId:(unint64_t)rcId speechPackage:(id)package duration:(double)duration;
- (void)localSpeechServiceDidReceivedEagerRecognitionCandidateWithRequestId:(id)id rcId:(unint64_t)rcId speechPackage:(id)package duration:(double)duration metadata:(id)metadata;
- (void)localSpeechServiceDidReceivedFinalResultCandidateWithRequestId:(id)id speechPackage:(id)package;
- (void)localSpeechServiceDidReceivedFinalResultWithRequestId:(id)id speechPackage:(id)package;
- (void)localSpeechServiceDidReceivedFinalResultWithRequestId:(id)id speechPackage:(id)package metadata:(id)metadata;
- (void)localSpeechServiceDidReceivedPartialResultWithRequestId:(id)id language:(id)language speechPackage:(id)package metadata:(id)metadata;
- (void)localSpeechServiceDidReceivedPartialResultWithRequestId:(id)id language:(id)language tokens:(id)tokens;
- (void)localSpeechServiceDidReceivedPartialResultWithRequestId:(id)id language:(id)language tokens:(id)tokens metadata:(id)metadata;
- (void)localSpeechServiceDidReceivedVoiceCommandCandidateWithRequestId:(id)id speechPackage:(id)package metadata:(id)metadata;
- (void)localSpeechServiceDidReceivedVoiceIdScoreCard:(id)card;
- (void)localSpeechServiceRequestAttentionAssetDownload;
- (void)pauseLocalSpeechRecognitionForRequestId:(id)id;
- (void)preheatLocalSpeechRecognitionWithLanguage:(id)language source:(unint64_t)source;
- (void)resetCacheAndCompileAllAssets;
- (void)resumeLocalRecognitionWithRequestId:(id)id prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText;
- (void)sendSpeechCorrectionInfo:(id)info interactionIdentifier:(id)identifier;
- (void)sendVisualContextAndCorrectionsInfo:(id)info interactionIdentifier:(id)identifier;
- (void)setLocalSpeechRecognizerClientDelegate:(id)delegate;
- (void)startSpeechRecognitionResultsWithSettings:(id)settings;
- (void)stopSpeechRecognitionTaskAndInvalidateWithReason:(unint64_t)reason requestId:(id)id completion:(id)completion;
- (void)stopSpeechRecognitionTaskWithReason:(unint64_t)reason requestId:(id)id completion:(id)completion;
- (void)trpCandidateReadyForExecutionForRequestId:(id)id withTrpId:(id)trpId;
- (void)updateTCUState:(id)state;
- (void)updateVoiceCommandContextWithRequestId:(id)id prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)self0 undoEvent:(id)self1;
@end

@implementation LBLocalSpeechRecognizerClient

- (id)_connection
{
  v35 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    xpcConnectionUUIDString = self->_xpcConnectionUUIDString;
    self->_xpcConnectionUUIDString = uUIDString;

    v7 = LBLogContextFacilityLocalSRBridge;
    if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      uuidString = [(LBLocalSpeechRecognizerClient *)self uuidString];
      xpcConnectionUUIDString = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
      *buf = 136315650;
      v30 = "[LBLocalSpeechRecognizerClient _connection]";
      v31 = 2112;
      v32 = uuidString;
      v33 = 2112;
      v34 = xpcConnectionUUIDString;
      _os_log_impl(&dword_256130000, v8, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:Creating new xpc connection...", buf, 0x20u);
    }

    _newConnection = [(LBLocalSpeechRecognizerClient *)self _newConnection];
    v12 = self->_xpcConnection;
    self->_xpcConnection = _newConnection;

    objc_initWeak(buf, self);
    v13 = self->_xpcConnectionUUIDString;
    v14 = self->_xpcConnection;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __44__LBLocalSpeechRecognizerClient__connection__block_invoke;
    v26[3] = &unk_279823918;
    objc_copyWeak(&v28, buf);
    v15 = v13;
    v27 = v15;
    [(NSXPCConnection *)v14 setInterruptionHandler:v26];
    v16 = self->_xpcConnection;
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __44__LBLocalSpeechRecognizerClient__connection__block_invoke_328;
    v23 = &unk_279823918;
    objc_copyWeak(&v25, buf);
    v17 = v15;
    v24 = v17;
    [(NSXPCConnection *)v16 setInvalidationHandler:&v20];
    [(NSXPCConnection *)self->_xpcConnection resume:v20];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v28);

    objc_destroyWeak(buf);
    xpcConnection = self->_xpcConnection;
  }

  v18 = *MEMORY[0x277D85DE8];

  return xpcConnection;
}

- (id)_newConnection
{
  xpcListenerEndpoint = self->_xpcListenerEndpoint;
  v4 = objc_alloc(MEMORY[0x277CCAE80]);
  if (xpcListenerEndpoint)
  {
    v5 = [v4 initWithListenerEndpoint:self->_xpcListenerEndpoint];
  }

  else
  {
    v5 = [v4 initWithMachServiceName:@"com.apple.siri.localspeechrecognitionbridge.xpc" options:0];
  }

  v6 = v5;
  v7 = LBLocalSpeechServiceGetXPCInterface();
  [v6 setRemoteObjectInterface:v7];

  v8 = LBLocalSpeechServiceDelegateGetXPCInterface();
  [v6 setExportedInterface:v8];

  [v6 setExportedObject:self];
  [v6 _setQueue:self->_queue];
  return v6;
}

- (id)_service
{
  _connection = [(LBLocalSpeechRecognizerClient *)self _connection];
  remoteObjectProxy = [_connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (LBLocalSpeechRecognizerClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __44__LBLocalSpeechRecognizerClient__connection__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[LBLocalSpeechRecognizerClient _connection]_block_invoke";
    v17 = 2112;
    v18 = @"com.apple.siri.localspeechrecognitionbridge.xpc";
    _os_log_impl(&dword_256130000, v2, OS_LOG_TYPE_DEFAULT, "%s xpc connection %@ Interrupted", &v15, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6 = [WeakRetained xpcConnectionUUIDString];
    LOBYTE(v5) = [v5 isEqualToString:v6];

    if (v5)
    {
      [v4[2] invalidate];
      v7 = v4[2];
      v4[2] = 0;

      v8 = objc_loadWeakRetained(v4 + 6);
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = objc_loadWeakRetained(v4 + 6);
        v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.localsrbridge" code:102 userInfo:0];
        [v10 localSpeechRecognizerClient:v4 didCompletionRecognitionWithStatistics:0 requestId:0 endpointMode:0 error:v11];
LABEL_9:
      }
    }

    else
    {
      v12 = LBLogContextFacilityLocalSRBridge;
      if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        v10 = v12;
        v11 = [v4 xpcConnectionUUIDString];
        v15 = 136315650;
        v16 = "[LBLocalSpeechRecognizerClient _connection]_block_invoke";
        v17 = 2112;
        v18 = v13;
        v19 = 2112;
        v20 = v11;
        _os_log_impl(&dword_256130000, v10, OS_LOG_TYPE_INFO, "%s Ignore since the UUID of xpc connection not match : %@ vs. %@", &v15, 0x20u);
        goto LABEL_9;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __44__LBLocalSpeechRecognizerClient__connection__block_invoke_328(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[LBLocalSpeechRecognizerClient _connection]_block_invoke";
    v17 = 2112;
    v18 = @"com.apple.siri.localspeechrecognitionbridge.xpc";
    _os_log_impl(&dword_256130000, v2, OS_LOG_TYPE_DEFAULT, "%s xpc connection %@ Invalidated", &v15, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6 = [WeakRetained xpcConnectionUUIDString];
    LOBYTE(v5) = [v5 isEqualToString:v6];

    if (v5)
    {
      v7 = *(v4 + 2);
      *(v4 + 2) = 0;

      v8 = objc_loadWeakRetained(v4 + 6);
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = objc_loadWeakRetained(v4 + 6);
        v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.localsrbridge" code:102 userInfo:0];
        [v10 localSpeechRecognizerClient:v4 didCompletionRecognitionWithStatistics:0 requestId:0 endpointMode:0 error:v11];
LABEL_9:
      }
    }

    else
    {
      v12 = LBLogContextFacilityLocalSRBridge;
      if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        v10 = v12;
        v11 = [v4 xpcConnectionUUIDString];
        v15 = 136315650;
        v16 = "[LBLocalSpeechRecognizerClient _connection]_block_invoke";
        v17 = 2112;
        v18 = v13;
        v19 = 2112;
        v20 = v11;
        _os_log_impl(&dword_256130000, v10, OS_LOG_TYPE_INFO, "%s Ignore since the UUID of xpc connection not match : %@ vs. %@", &v15, 0x20u);
        goto LABEL_9;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)localSpeechServiceRequestAttentionAssetDownload
{
  v17 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    uuidString = [(LBLocalSpeechRecognizerClient *)self uuidString];
    xpcConnectionUUIDString = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
    v11 = 136315650;
    v12 = "[LBLocalSpeechRecognizerClient localSpeechServiceRequestAttentionAssetDownload]";
    v13 = 2112;
    v14 = uuidString;
    v15 = 2112;
    v16 = xpcConnectionUUIDString;
    _os_log_impl(&dword_256130000, v4, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:", &v11, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 localSpeechRecognizerClient:self requestAttentionAssetDownload:1];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)localSpeechServiceDidDetectedFinalEndpointAtTime:(double)time
{
  v24 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v5 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uuidString = [(LBLocalSpeechRecognizerClient *)self uuidString];
    xpcConnectionUUIDString = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
    *buf = 136315906;
    v17 = "[LBLocalSpeechRecognizerClient localSpeechServiceDidDetectedFinalEndpointAtTime:]";
    v18 = 2112;
    v19 = uuidString;
    v20 = 2112;
    v21 = xpcConnectionUUIDString;
    v22 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_256130000, v6, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:time = %f", buf, 0x2Au);
  }

  if (self->_shouldEnableAudioCapture)
  {
    audioCapture = self->_audioCapture;
    requestId = self->_requestId;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __82__LBLocalSpeechRecognizerClient_localSpeechServiceDidDetectedFinalEndpointAtTime___block_invoke;
    v15[3] = &unk_2798238C0;
    v15[4] = self;
    [(LBAudioCapture *)audioCapture stopAudioCaptureWithReason:0 requestId:requestId completion:v15];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 localSpeechRecognizerClient:self receivedFinalEndpointDetectedAtTime:time];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __82__LBLocalSpeechRecognizerClient_localSpeechServiceDidDetectedFinalEndpointAtTime___block_invoke(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = LBLogContextFacilityLocalSRBridge;
    if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_ERROR))
    {
      v10 = v6;
      v11 = [v5 localizedDescription];
      v12 = 136315394;
      v13 = "[LBLocalSpeechRecognizerClient localSpeechServiceDidDetectedFinalEndpointAtTime:]_block_invoke";
      v14 = 2112;
      v15 = v11;
      _os_log_error_impl(&dword_256130000, v10, OS_LOG_TYPE_ERROR, "%s Failed to stop audio capture, error : %@", &v12, 0x16u);
    }
  }

  *(*(a1 + 32) + 40) = 0;
  v7 = *(a1 + 32);
  v8 = *(v7 + 72);
  *(v7 + 72) = 0;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)localSpeechServiceDidReceiveMultiUserTRPCandidatePackage:(id)package
{
  v21 = *MEMORY[0x277D85DE8];
  packageCopy = package;
  dispatch_assert_queue_V2(self->_queue);
  v5 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uuidString = [(LBLocalSpeechRecognizerClient *)self uuidString];
    xpcConnectionUUIDString = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
    v13 = 136315906;
    v14 = "[LBLocalSpeechRecognizerClient localSpeechServiceDidReceiveMultiUserTRPCandidatePackage:]";
    v15 = 2112;
    v16 = uuidString;
    v17 = 2112;
    v18 = xpcConnectionUUIDString;
    v19 = 2112;
    v20 = packageCopy;
    _os_log_impl(&dword_256130000, v6, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:Received MultiUserTRP candidate: %@", &v13, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 localSpeechRecognizerClient:self receivedMultiUserTRPCandidatePackage:packageCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)localSpeechServiceDidReceiveTRPDetected:(id)detected
{
  v21 = *MEMORY[0x277D85DE8];
  detectedCopy = detected;
  dispatch_assert_queue_V2(self->_queue);
  v5 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uuidString = [(LBLocalSpeechRecognizerClient *)self uuidString];
    xpcConnectionUUIDString = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
    v13 = 136315906;
    v14 = "[LBLocalSpeechRecognizerClient localSpeechServiceDidReceiveTRPDetected:]";
    v15 = 2112;
    v16 = uuidString;
    v17 = 2112;
    v18 = xpcConnectionUUIDString;
    v19 = 2112;
    v20 = detectedCopy;
    _os_log_impl(&dword_256130000, v6, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:Received TRP Detected: %@", &v13, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 localSpeechRecognizerClient:self receivedTRPDetected:detectedCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)localSpeechServiceDidReceiveTCUStateUpdate:(id)update
{
  v21 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  dispatch_assert_queue_V2(self->_queue);
  v5 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uuidString = [(LBLocalSpeechRecognizerClient *)self uuidString];
    xpcConnectionUUIDString = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
    v13 = 136315906;
    v14 = "[LBLocalSpeechRecognizerClient localSpeechServiceDidReceiveTCUStateUpdate:]";
    v15 = 2112;
    v16 = uuidString;
    v17 = 2112;
    v18 = xpcConnectionUUIDString;
    v19 = 2112;
    v20 = updateCopy;
    _os_log_impl(&dword_256130000, v6, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:Received TCU state update: %@", &v13, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 localSpeechRecognizerClient:self receivedTCUStateUpdate:updateCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)localSpeechServiceDidReceiveContinuityEndDetected:(id)detected
{
  v25 = *MEMORY[0x277D85DE8];
  detectedCopy = detected;
  dispatch_assert_queue_V2(self->_queue);
  v5 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uuidString = [(LBLocalSpeechRecognizerClient *)self uuidString];
    xpcConnectionUUIDString = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
    v17 = 136315906;
    v18 = "[LBLocalSpeechRecognizerClient localSpeechServiceDidReceiveContinuityEndDetected:]";
    v19 = 2112;
    v20 = uuidString;
    v21 = 2112;
    v22 = xpcConnectionUUIDString;
    v23 = 2112;
    v24 = detectedCopy;
    _os_log_impl(&dword_256130000, v6, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:Received Continuity End Detected: %@", &v17, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = LBLogContextFacilityLocalSRBridge;
    if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      uuidString2 = [(LBLocalSpeechRecognizerClient *)self uuidString];
      xpcConnectionUUIDString2 = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
      v17 = 136315906;
      v18 = "[LBLocalSpeechRecognizerClient localSpeechServiceDidReceiveContinuityEndDetected:]";
      v19 = 2112;
      v20 = uuidString2;
      v21 = 2112;
      v22 = xpcConnectionUUIDString2;
      v23 = 2112;
      v24 = detectedCopy;
      _os_log_impl(&dword_256130000, v12, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:Delegate - Received Continuity End Detected: %@", &v17, 0x2Au);
    }

    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 localSpeechRecognizerClient:self receivedContinuityEndDetected:detectedCopy];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)localSpeechServiceDidReceiveTRPCandidatePackage:(id)package
{
  v19 = *MEMORY[0x277D85DE8];
  packageCopy = package;
  dispatch_assert_queue_V2(self->_queue);
  v5 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uuidString = [(LBLocalSpeechRecognizerClient *)self uuidString];
    xpcConnectionUUIDString = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
    v13 = 136315650;
    v14 = "[LBLocalSpeechRecognizerClient localSpeechServiceDidReceiveTRPCandidatePackage:]";
    v15 = 2112;
    v16 = uuidString;
    v17 = 2112;
    v18 = xpcConnectionUUIDString;
    _os_log_impl(&dword_256130000, v6, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:Received TRP Candidate Package", &v13, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 localSpeechRecognizerClient:self receivedTRPCandidatePackage:packageCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)localSpeechServiceDidReceivedVoiceIdScoreCard:(id)card
{
  v22 = *MEMORY[0x277D85DE8];
  cardCopy = card;
  dispatch_assert_queue_V2(self->_queue);
  v5 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    uuidString = [(LBLocalSpeechRecognizerClient *)self uuidString];
    xpcConnectionUUIDString = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
    spIdKnownUserScores = [cardCopy spIdKnownUserScores];
    v14 = 136315906;
    v15 = "[LBLocalSpeechRecognizerClient localSpeechServiceDidReceivedVoiceIdScoreCard:]";
    v16 = 2112;
    v17 = uuidString;
    v18 = 2112;
    v19 = xpcConnectionUUIDString;
    v20 = 2112;
    v21 = spIdKnownUserScores;
    _os_log_impl(&dword_256130000, v6, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:Client received voiceId scores: %@", &v14, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 localSpeechRecognizerClient:self receivedVoiceIdScoreCard:cardCopy];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)localSpeechServiceDidCompletionRecognitionWithStatistics:(id)statistics requestId:(id)id endpointMode:(int64_t)mode error:(id)error
{
  v36 = *MEMORY[0x277D85DE8];
  statisticsCopy = statistics;
  idCopy = id;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  v13 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    uuidString = [(LBLocalSpeechRecognizerClient *)self uuidString];
    xpcConnectionUUIDString = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
    localizedDescription = [errorCopy localizedDescription];
    v24 = 136316418;
    v25 = "[LBLocalSpeechRecognizerClient localSpeechServiceDidCompletionRecognitionWithStatistics:requestId:endpointMode:error:]";
    v26 = 2112;
    v27 = uuidString;
    v28 = 2112;
    v29 = xpcConnectionUUIDString;
    v30 = 2112;
    v31 = idCopy;
    v32 = 2050;
    modeCopy = mode;
    v34 = 2114;
    v35 = localizedDescription;
    _os_log_impl(&dword_256130000, v14, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:Notify task %@ completed with endpointMode %{public}ld, error : %{public}@", &v24, 0x3Eu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = objc_opt_respondsToSelector();

  v20 = objc_loadWeakRetained(&self->_delegate);
  v21 = v20;
  if (v19)
  {
    [v20 localSpeechRecognizerClient:self didCompletionRecognitionWithStatistics:statisticsCopy requestId:idCopy endpointMode:mode error:errorCopy];
LABEL_7:

    goto LABEL_8;
  }

  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    v21 = objc_loadWeakRetained(&self->_delegate);
    [v21 localSpeechRecognizerClient:self didCompletionRecognitionWithStatistics:statisticsCopy requestId:idCopy error:errorCopy];
    goto LABEL_7;
  }

LABEL_8:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)localSpeechServiceDidReceivedEagerRecognitionCandidateWithRequestId:(id)id rcId:(unint64_t)rcId speechPackage:(id)package duration:(double)duration metadata:(id)metadata
{
  idCopy = id;
  packageCopy = package;
  metadataCopy = metadata;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = objc_loadWeakRetained(&self->_delegate);
    [v16 localSpeechRecognizerClient:self receivedEagerRecognitionCandidateWithRequestId:idCopy rcId:rcId speechPackage:packageCopy duration:metadataCopy metadata:duration];
  }
}

- (void)localSpeechServiceDidReceivedEagerRecognitionCandidateWithRequestId:(id)id rcId:(unint64_t)rcId speechPackage:(id)package duration:(double)duration
{
  idCopy = id;
  packageCopy = package;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 localSpeechRecognizerClient:self receivedEagerRecognitionCandidateWithRequestId:idCopy rcId:rcId speechPackage:packageCopy duration:duration];
  }
}

- (void)localSpeechServiceDidReceivedFinalResultWithRequestId:(id)id speechPackage:(id)package metadata:(id)metadata
{
  idCopy = id;
  packageCopy = package;
  metadataCopy = metadata;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 localSpeechRecognizerClient:self receivedFinalResultWithRequestId:idCopy speechPackage:packageCopy metadata:metadataCopy];
  }
}

- (void)localSpeechServiceDidReceivedFinalResultWithRequestId:(id)id speechPackage:(id)package
{
  queue = self->_queue;
  packageCopy = package;
  idCopy = id;
  dispatch_assert_queue_V2(queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained localSpeechRecognizerClient:self receivedFinalResultWithRequestId:idCopy speechPackage:packageCopy];
}

- (void)localSpeechServiceDidReceivedVoiceCommandCandidateWithRequestId:(id)id speechPackage:(id)package metadata:(id)metadata
{
  idCopy = id;
  packageCopy = package;
  metadataCopy = metadata;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 localSpeechRecognizerClient:self receivedVoiceCommandCandidateWithRequestId:idCopy speechPackage:packageCopy metadata:metadataCopy];
  }
}

- (void)localSpeechServiceDidReceivedFinalResultCandidateWithRequestId:(id)id speechPackage:(id)package
{
  idCopy = id;
  packageCopy = package;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 localSpeechRecognizerClient:self receivedFinalResultCandidateWithRequestId:idCopy speechPackage:packageCopy];
  }
}

- (void)localSpeechServiceDidReceivedPartialResultWithRequestId:(id)id language:(id)language speechPackage:(id)package metadata:(id)metadata
{
  idCopy = id;
  languageCopy = language;
  packageCopy = package;
  metadataCopy = metadata;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 localSpeechRecognizerClient:self receivedPartialResultWithRequestId:idCopy language:languageCopy speechPackage:packageCopy metadata:metadataCopy];
  }
}

- (void)localSpeechServiceDidReceivedPartialResultWithRequestId:(id)id language:(id)language tokens:(id)tokens metadata:(id)metadata
{
  idCopy = id;
  languageCopy = language;
  tokensCopy = tokens;
  metadataCopy = metadata;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 localSpeechRecognizerClient:self receivedPartialResultWithRequestId:idCopy language:languageCopy tokens:tokensCopy metadata:metadataCopy];
  }
}

- (void)localSpeechServiceDidReceivedPartialResultWithRequestId:(id)id language:(id)language tokens:(id)tokens
{
  queue = self->_queue;
  tokensCopy = tokens;
  languageCopy = language;
  idCopy = id;
  dispatch_assert_queue_V2(queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained localSpeechRecognizerClient:self receivedPartialResultWithRequestId:idCopy language:languageCopy tokens:tokensCopy];
}

- (void)_invalidate
{
  v10 = *MEMORY[0x277D85DE8];
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    v4 = LBLogContextFacilityLocalSRBridge;
    if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[LBLocalSpeechRecognizerClient _invalidate]";
      _os_log_impl(&dword_256130000, v4, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
      xpcConnection = self->_xpcConnection;
    }

    [(NSXPCConnection *)xpcConnection setInvalidationHandler:0];
    [(NSXPCConnection *)self->_xpcConnection invalidate];
    v5 = self->_xpcConnection;
    self->_xpcConnection = 0;

    xpcConnectionUUIDString = self->_xpcConnectionUUIDString;
    self->_xpcConnectionUUIDString = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[LBLocalSpeechRecognizerClient invalidate]";
    _os_log_impl(&dword_256130000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__LBLocalSpeechRecognizerClient_invalidate__block_invoke;
  block[3] = &unk_2798239B8;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)trpCandidateReadyForExecutionForRequestId:(id)id withTrpId:(id)trpId
{
  idCopy = id;
  trpIdCopy = trpId;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__LBLocalSpeechRecognizerClient_trpCandidateReadyForExecutionForRequestId_withTrpId___block_invoke;
  block[3] = &unk_279823898;
  block[4] = self;
  v12 = idCopy;
  v13 = trpIdCopy;
  v9 = trpIdCopy;
  v10 = idCopy;
  dispatch_async(queue, block);
}

void __85__LBLocalSpeechRecognizerClient_trpCandidateReadyForExecutionForRequestId_withTrpId___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 uuidString];
    v6 = [*(a1 + 32) xpcConnectionUUIDString];
    v9 = 136315650;
    v10 = "[LBLocalSpeechRecognizerClient trpCandidateReadyForExecutionForRequestId:withTrpId:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_256130000, v4, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:", &v9, 0x20u);
  }

  v7 = [*(a1 + 32) _service];
  [v7 trpCandidateReadyForExecutionForRequestId:*(a1 + 40) withTrpId:*(a1 + 48)];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateTCUState:(id)state
{
  stateCopy = state;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__LBLocalSpeechRecognizerClient_updateTCUState___block_invoke;
  v7[3] = &unk_2798238E8;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(queue, v7);
}

void __48__LBLocalSpeechRecognizerClient_updateTCUState___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 uuidString];
    v6 = [*(a1 + 32) xpcConnectionUUIDString];
    v9 = 136315650;
    v10 = "[LBLocalSpeechRecognizerClient updateTCUState:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_256130000, v4, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:", &v9, 0x20u);
  }

  v7 = [*(a1 + 32) _service];
  [v7 updateTCUState:*(a1 + 40)];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendVisualContextAndCorrectionsInfo:(id)info interactionIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__LBLocalSpeechRecognizerClient_sendVisualContextAndCorrectionsInfo_interactionIdentifier___block_invoke;
  block[3] = &unk_279823898;
  block[4] = self;
  v12 = infoCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = infoCopy;
  dispatch_async(queue, block);
}

void __91__LBLocalSpeechRecognizerClient_sendVisualContextAndCorrectionsInfo_interactionIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  [v2 sendVisualContextAndCorrectionsInfo:*(a1 + 40) interactionIdentifier:*(a1 + 48)];
}

- (void)sendSpeechCorrectionInfo:(id)info interactionIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__LBLocalSpeechRecognizerClient_sendSpeechCorrectionInfo_interactionIdentifier___block_invoke;
  block[3] = &unk_279823898;
  block[4] = self;
  v12 = infoCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = infoCopy;
  dispatch_async(queue, block);
}

void __80__LBLocalSpeechRecognizerClient_sendSpeechCorrectionInfo_interactionIdentifier___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 uuidString];
    v6 = [*(a1 + 32) xpcConnectionUUIDString];
    v9 = 136315650;
    v10 = "[LBLocalSpeechRecognizerClient sendSpeechCorrectionInfo:interactionIdentifier:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_256130000, v4, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:", &v9, 0x20u);
  }

  v7 = [*(a1 + 32) _service];
  [v7 sendSpeechCorrectionInfo:*(a1 + 40) interactionIdentifier:*(a1 + 48)];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)resetCacheAndCompileAllAssets
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "[LBLocalSpeechRecognizerClient resetCacheAndCompileAllAssets]";
    _os_log_debug_impl(&dword_256130000, v2, OS_LOG_TYPE_DEBUG, "%s No longer supported.", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)updateVoiceCommandContextWithRequestId:(id)id prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)suppression abortCommandSuppression:(id)self0 undoEvent:(id)self1
{
  idCopy = id;
  textCopy = text;
  postfixTextCopy = postfixText;
  selectedTextCopy = selectedText;
  activeCopy = active;
  visibleTextCopy = visibleText;
  suppressionCopy = suppression;
  commandSuppressionCopy = commandSuppression;
  eventCopy = event;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __207__LBLocalSpeechRecognizerClient_updateVoiceCommandContextWithRequestId_prefixText_postfixText_selectedText_disambiguationActive_cursorInVisibleText_favorCommandSuppression_abortCommandSuppression_undoEvent___block_invoke;
  block[3] = &unk_279823870;
  block[4] = self;
  v37 = idCopy;
  v38 = textCopy;
  v39 = postfixTextCopy;
  v40 = selectedTextCopy;
  v41 = activeCopy;
  v42 = visibleTextCopy;
  v43 = suppressionCopy;
  v44 = commandSuppressionCopy;
  v45 = eventCopy;
  v26 = eventCopy;
  v27 = commandSuppressionCopy;
  v28 = suppressionCopy;
  v29 = visibleTextCopy;
  v30 = activeCopy;
  v31 = selectedTextCopy;
  v32 = postfixTextCopy;
  v33 = textCopy;
  v34 = idCopy;
  dispatch_async(queue, block);
}

void __207__LBLocalSpeechRecognizerClient_updateVoiceCommandContextWithRequestId_prefixText_postfixText_selectedText_disambiguationActive_cursorInVisibleText_favorCommandSuppression_abortCommandSuppression_undoEvent___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 uuidString];
    v6 = [*(a1 + 32) xpcConnectionUUIDString];
    v7 = *(a1 + 40);
    *buf = 136315906;
    v11 = "[LBLocalSpeechRecognizerClient updateVoiceCommandContextWithRequestId:prefixText:postfixText:selectedText:disambiguationActive:cursorInVisibleText:favorCommandSuppression:abortCommandSuppression:undoEvent:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_256130000, v4, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:requestId : %@", buf, 0x2Au);
  }

  v8 = [*(a1 + 32) _service];
  [v8 updateVoiceCommandContextWithRequestId:*(a1 + 40) prefixText:*(a1 + 48) postfixText:*(a1 + 56) selectedText:*(a1 + 64) disambiguationActive:*(a1 + 72) cursorInVisibleText:*(a1 + 80) favorCommandSuppression:*(a1 + 88) abortCommandSuppression:*(a1 + 96) undoEvent:*(a1 + 104)];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)resumeLocalRecognitionWithRequestId:(id)id prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText
{
  idCopy = id;
  textCopy = text;
  postfixTextCopy = postfixText;
  selectedTextCopy = selectedText;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105__LBLocalSpeechRecognizerClient_resumeLocalRecognitionWithRequestId_prefixText_postfixText_selectedText___block_invoke;
  block[3] = &unk_279823848;
  block[4] = self;
  v20 = idCopy;
  v21 = textCopy;
  v22 = postfixTextCopy;
  v23 = selectedTextCopy;
  v15 = selectedTextCopy;
  v16 = postfixTextCopy;
  v17 = textCopy;
  v18 = idCopy;
  dispatch_async(queue, block);
}

void __105__LBLocalSpeechRecognizerClient_resumeLocalRecognitionWithRequestId_prefixText_postfixText_selectedText___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 uuidString];
    v6 = [*(a1 + 32) xpcConnectionUUIDString];
    v7 = *(a1 + 40);
    v10 = 136315906;
    v11 = "[LBLocalSpeechRecognizerClient resumeLocalRecognitionWithRequestId:prefixText:postfixText:selectedText:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_256130000, v4, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:requestId : %@", &v10, 0x2Au);
  }

  v8 = [*(a1 + 32) _service];
  [v8 resumeLocalRecognitionWithRequestId:*(a1 + 40) prefixText:*(a1 + 48) postfixText:*(a1 + 56) selectedText:*(a1 + 64)];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)pauseLocalSpeechRecognitionForRequestId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__LBLocalSpeechRecognizerClient_pauseLocalSpeechRecognitionForRequestId___block_invoke;
  v7[3] = &unk_2798238E8;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

void __73__LBLocalSpeechRecognizerClient_pauseLocalSpeechRecognitionForRequestId___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 uuidString];
    v6 = [*(a1 + 32) xpcConnectionUUIDString];
    v7 = *(a1 + 40);
    v10 = 136315906;
    v11 = "[LBLocalSpeechRecognizerClient pauseLocalSpeechRecognitionForRequestId:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_256130000, v4, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:requestId : %@", &v10, 0x2Au);
  }

  v8 = [*(a1 + 32) _service];
  [v8 pauseLocalSpeechRecognitionForRequestId:*(a1 + 40)];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)disableLocalSpeechRecognitionForRequestId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__LBLocalSpeechRecognizerClient_disableLocalSpeechRecognitionForRequestId___block_invoke;
  v7[3] = &unk_2798238E8;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

void __75__LBLocalSpeechRecognizerClient_disableLocalSpeechRecognitionForRequestId___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 uuidString];
    v6 = [*(a1 + 32) xpcConnectionUUIDString];
    v7 = *(a1 + 40);
    v10 = 136315906;
    v11 = "[LBLocalSpeechRecognizerClient disableLocalSpeechRecognitionForRequestId:]_block_invoke";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_256130000, v4, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:requestId : %@", &v10, 0x2Au);
  }

  v8 = [*(a1 + 32) _service];
  [v8 disableLocalSpeechRecognitionForRequestId:*(a1 + 40)];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_stopSpeechRecognitionTaskWithReason:(unint64_t)reason requestId:(id)id shouldInvalidateAfterStop:(BOOL)stop completion:(id)completion
{
  stopCopy = stop;
  v36 = *MEMORY[0x277D85DE8];
  idCopy = id;
  completionCopy = completion;
  v12 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    uuidString = [(LBLocalSpeechRecognizerClient *)self uuidString];
    xpcConnectionUUIDString = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
    *buf = 136316418;
    v25 = "[LBLocalSpeechRecognizerClient _stopSpeechRecognitionTaskWithReason:requestId:shouldInvalidateAfterStop:completion:]";
    v26 = 2112;
    v27 = uuidString;
    v28 = 2112;
    v29 = xpcConnectionUUIDString;
    v30 = 2050;
    reasonCopy = reason;
    v32 = 2112;
    v33 = idCopy;
    v34 = 1024;
    v35 = stopCopy;
    _os_log_impl(&dword_256130000, v13, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:reason : %{public}lu, requestId %@, shouldInvalidate %d", buf, 0x3Au);
  }

  if (self->_shouldEnableAudioCapture && (audioCapture = self->_audioCapture) != 0)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __117__LBLocalSpeechRecognizerClient__stopSpeechRecognitionTaskWithReason_requestId_shouldInvalidateAfterStop_completion___block_invoke;
    v19[3] = &unk_279823820;
    v19[4] = self;
    reasonCopy2 = reason;
    v20 = idCopy;
    v23 = stopCopy;
    v21 = completionCopy;
    [(LBAudioCapture *)audioCapture stopAudioCaptureWithReason:reason requestId:v20 completion:v19];
  }

  else
  {
    _service = [(LBLocalSpeechRecognizerClient *)self _service];
    [_service stopSpeechRecognitionWithReason:reason requestId:idCopy];

    if (stopCopy)
    {
      [(LBLocalSpeechRecognizerClient *)self _invalidate];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1, 0);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __117__LBLocalSpeechRecognizerClient__stopSpeechRecognitionTaskWithReason_requestId_shouldInvalidateAfterStop_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) _service];
  [v5 stopSpeechRecognitionWithReason:*(a1 + 56) requestId:*(a1 + 40)];

  *(*(a1 + 32) + 40) = 0;
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) _invalidate];
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v8);
  }

  return MEMORY[0x2821F9730]();
}

- (void)stopSpeechRecognitionTaskAndInvalidateWithReason:(unint64_t)reason requestId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __103__LBLocalSpeechRecognizerClient_stopSpeechRecognitionTaskAndInvalidateWithReason_requestId_completion___block_invoke;
  v13[3] = &unk_2798237F8;
  v13[4] = self;
  v14 = idCopy;
  v15 = completionCopy;
  reasonCopy = reason;
  v11 = completionCopy;
  v12 = idCopy;
  dispatch_async(queue, v13);
}

- (void)stopSpeechRecognitionTaskWithReason:(unint64_t)reason requestId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__LBLocalSpeechRecognizerClient_stopSpeechRecognitionTaskWithReason_requestId_completion___block_invoke;
  v13[3] = &unk_2798237F8;
  v13[4] = self;
  v14 = idCopy;
  v15 = completionCopy;
  reasonCopy = reason;
  v11 = completionCopy;
  v12 = idCopy;
  dispatch_async(queue, v13);
}

- (void)startSpeechRecognitionResultsWithSettings:(id)settings
{
  settingsCopy = settings;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__LBLocalSpeechRecognizerClient_startSpeechRecognitionResultsWithSettings___block_invoke;
  v7[3] = &unk_2798238E8;
  v7[4] = self;
  v8 = settingsCopy;
  v6 = settingsCopy;
  dispatch_async(queue, v7);
}

void __75__LBLocalSpeechRecognizerClient_startSpeechRecognitionResultsWithSettings___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 uuidString];
    v6 = [*(a1 + 32) xpcConnectionUUIDString];
    v7 = [*(a1 + 40) description];
    *buf = 136315906;
    v30 = "[LBLocalSpeechRecognizerClient startSpeechRecognitionResultsWithSettings:]_block_invoke";
    v31 = 2112;
    v32 = v5;
    v33 = 2112;
    v34 = v6;
    v35 = 2114;
    v36 = v7;
    _os_log_impl(&dword_256130000, v4, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:settings : %{public}@", buf, 0x2Au);
  }

  *(*(a1 + 32) + 40) = [*(a1 + 40) shouldStartAudioCapture];
  v8 = [*(a1 + 40) requestId];
  v9 = *(a1 + 32);
  v10 = *(v9 + 72);
  *(v9 + 72) = v8;

  v11 = *(a1 + 32);
  if (v11[40] == 1)
  {
    v12 = objc_alloc(MEMORY[0x277D01648]);
    v13 = [*(a1 + 40) audioRecordType];
    v14 = [*(a1 + 40) audioRecordDeviceId];
    v15 = [v12 initWithRecordType:v13 deviceId:v14];

    v16 = [*(a1 + 40) audioCaptureStartHostTime];
    v17 = LBLogContextFacilityLocalSRBridge;
    if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v19 = v17;
      v20 = [v18 uuidString];
      v21 = [*(a1 + 32) xpcConnectionUUIDString];
      v22 = [v15 description];
      *buf = 136316162;
      v30 = "[LBLocalSpeechRecognizerClient startSpeechRecognitionResultsWithSettings:]_block_invoke";
      v31 = 2112;
      v32 = v20;
      v33 = 2112;
      v34 = v21;
      v35 = 2114;
      v36 = v22;
      v37 = 2048;
      v38 = v16;
      _os_log_impl(&dword_256130000, v19, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:start audio capture in parallel with record context : %{public}@, startTime : %llu", buf, 0x34u);
    }

    if ([*(a1 + 32) _shouldSetSpeechEventForRecordType:{objc_msgSend(*(a1 + 40), "audioRecordType")}])
    {
      [v15 setSpeechEvent:{+[CSRecordTypeSpeechEventConverter getSpeechEventForRecordType:](CSRecordTypeSpeechEventConverter, "getSpeechEventForRecordType:", objc_msgSend(*(a1 + 40), "audioRecordType"))}];
    }

    v23 = *(*(a1 + 32) + 32);
    v24 = [*(a1 + 40) requestId];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __75__LBLocalSpeechRecognizerClient_startSpeechRecognitionResultsWithSettings___block_invoke_287;
    v27[3] = &unk_2798237D0;
    v25 = *(a1 + 40);
    v27[4] = *(a1 + 32);
    v28 = v25;
    [v23 startAudioCaptureWithRecordContext:v15 startHostTime:v16 siriSessionUUID:v24 completion:v27];
  }

  else
  {
    v15 = [v11 _service];
    [v15 startSpeechRecognitionResultsWithSettings:*(a1 + 40)];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __75__LBLocalSpeechRecognizerClient_startSpeechRecognitionResultsWithSettings___block_invoke_287(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__LBLocalSpeechRecognizerClient_startSpeechRecognitionResultsWithSettings___block_invoke_2;
  v10[3] = &unk_2798237A8;
  v13 = a2;
  v10[4] = v7;
  v11 = v6;
  v12 = v5;
  v9 = v5;
  dispatch_async(v8, v10);
}

void __75__LBLocalSpeechRecognizerClient_startSpeechRecognitionResultsWithSettings___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) == 1)
  {
    v10 = [*(a1 + 32) _service];
    [v10 startSpeechRecognitionResultsWithSettings:*(a1 + 40)];
    v2 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v3 = LBLogContextFacilityLocalSRBridge;
    if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 48);
      v8 = v3;
      v9 = [v7 localizedDescription];
      *buf = 136315394;
      v12 = "[LBLocalSpeechRecognizerClient startSpeechRecognitionResultsWithSettings:]_block_invoke_2";
      v13 = 2112;
      v14 = v9;
      _os_log_error_impl(&dword_256130000, v8, OS_LOG_TYPE_ERROR, "%s Failed to start audio capture with error : %@", buf, 0x16u);
    }

    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) requestId];
    [v4 localSpeechServiceDidCompletionRecognitionWithStatistics:0 requestId:v5 endpointMode:0 error:*(a1 + 48)];

    v6 = *MEMORY[0x277D85DE8];
  }
}

- (void)preheatLocalSpeechRecognitionWithLanguage:(id)language source:(unint64_t)source
{
  languageCopy = language;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__LBLocalSpeechRecognizerClient_preheatLocalSpeechRecognitionWithLanguage_source___block_invoke;
  block[3] = &unk_279823780;
  block[4] = self;
  v10 = languageCopy;
  sourceCopy = source;
  v8 = languageCopy;
  dispatch_async(queue, block);
}

void __82__LBLocalSpeechRecognizerClient_preheatLocalSpeechRecognitionWithLanguage_source___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 uuidString];
    v6 = [*(a1 + 32) xpcConnectionUUIDString];
    v9 = 136315650;
    v10 = "[LBLocalSpeechRecognizerClient preheatLocalSpeechRecognitionWithLanguage:source:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_256130000, v4, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:Preheating local ASR", &v9, 0x20u);
  }

  v7 = [*(a1 + 32) _service];
  [v7 preheatLocalSpeechRecognitionWithLanguage:*(a1 + 40) source:*(a1 + 48)];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)connectToServiceIfNeeded
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__LBLocalSpeechRecognizerClient_connectToServiceIfNeeded__block_invoke;
  block[3] = &unk_2798239B8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __57__LBLocalSpeechRecognizerClient_connectToServiceIfNeeded__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _service];
  [v1 connectToServiceIfNeeded];
}

- (void)setLocalSpeechRecognizerClientDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__LBLocalSpeechRecognizerClient_setLocalSpeechRecognizerClientDelegate___block_invoke;
  v7[3] = &unk_2798238E8;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(queue, v7);
}

id __72__LBLocalSpeechRecognizerClient_setLocalSpeechRecognizerClientDelegate___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 uuidString];
    v6 = [*(a1 + 32) xpcConnectionUUIDString];
    v9 = 136315650;
    v10 = "[LBLocalSpeechRecognizerClient setLocalSpeechRecognizerClientDelegate:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_256130000, v4, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:", &v9, 0x20u);
  }

  result = objc_storeWeak((*(a1 + 32) + 48), *(a1 + 40));
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[LBLocalSpeechRecognizerClient dealloc]";
    _os_log_impl(&dword_256130000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  [(LBLocalSpeechRecognizerClient *)self _invalidate];
  v5.receiver = self;
  v5.super_class = LBLocalSpeechRecognizerClient;
  [(LBLocalSpeechRecognizerClient *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (LBLocalSpeechRecognizerClient)initWithDelegate:(id)delegate xpcListenerEndpoint:(id)endpoint audioCapture:(id)capture
{
  v29 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  endpointCopy = endpoint;
  captureCopy = capture;
  v24.receiver = self;
  v24.super_class = LBLocalSpeechRecognizerClient;
  v11 = [(LBLocalSpeechRecognizerClient *)&v24 init];
  if (v11)
  {
    if (LBLogInitIfNeeded_once != -1)
    {
      dispatch_once(&LBLogInitIfNeeded_once, &__block_literal_global);
    }

    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v13 = dispatch_queue_create("LBLocalSpeechRecognizerClient Queue", v12);
    queue = v11->_queue;
    v11->_queue = v13;

    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v11->_xpcListenerEndpoint, endpoint);
    if (captureCopy)
    {
      v15 = captureCopy;
    }

    else
    {
      v15 = [[LBAudioCapture alloc] initWithQueue:v11->_queue];
    }

    audioCapture = v11->_audioCapture;
    v11->_audioCapture = v15;

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    uuidString = v11->_uuidString;
    v11->_uuidString = uUIDString;

    v20 = LBLogContextFacilityLocalSRBridge;
    if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v11->_uuidString;
      *buf = 136315394;
      v26 = "[LBLocalSpeechRecognizerClient initWithDelegate:xpcListenerEndpoint:audioCapture:]";
      v27 = 2112;
      v28 = v21;
      _os_log_impl(&dword_256130000, v20, OS_LOG_TYPE_DEFAULT, "%s Created LBLocalSpeechRecognizerClient with uuid [%@]", buf, 0x16u);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v11;
}

@end