@interface LBLocalSpeechRecognizerClient
- (LBLocalSpeechRecognizerClient)initWithDelegate:(id)a3 xpcListenerEndpoint:(id)a4 audioCapture:(id)a5;
- (LBLocalSpeechRecognizerClientDelegate)delegate;
- (id)_connection;
- (id)_newConnection;
- (id)_service;
- (void)_invalidate;
- (void)_stopSpeechRecognitionTaskWithReason:(unint64_t)a3 requestId:(id)a4 shouldInvalidateAfterStop:(BOOL)a5 completion:(id)a6;
- (void)connectToServiceIfNeeded;
- (void)dealloc;
- (void)disableLocalSpeechRecognitionForRequestId:(id)a3;
- (void)invalidate;
- (void)localSpeechServiceDidCompletionRecognitionWithStatistics:(id)a3 requestId:(id)a4 endpointMode:(int64_t)a5 error:(id)a6;
- (void)localSpeechServiceDidDetectedFinalEndpointAtTime:(double)a3;
- (void)localSpeechServiceDidReceiveContinuityEndDetected:(id)a3;
- (void)localSpeechServiceDidReceiveMultiUserTRPCandidatePackage:(id)a3;
- (void)localSpeechServiceDidReceiveTCUStateUpdate:(id)a3;
- (void)localSpeechServiceDidReceiveTRPCandidatePackage:(id)a3;
- (void)localSpeechServiceDidReceiveTRPDetected:(id)a3;
- (void)localSpeechServiceDidReceivedEagerRecognitionCandidateWithRequestId:(id)a3 rcId:(unint64_t)a4 speechPackage:(id)a5 duration:(double)a6;
- (void)localSpeechServiceDidReceivedEagerRecognitionCandidateWithRequestId:(id)a3 rcId:(unint64_t)a4 speechPackage:(id)a5 duration:(double)a6 metadata:(id)a7;
- (void)localSpeechServiceDidReceivedFinalResultCandidateWithRequestId:(id)a3 speechPackage:(id)a4;
- (void)localSpeechServiceDidReceivedFinalResultWithRequestId:(id)a3 speechPackage:(id)a4;
- (void)localSpeechServiceDidReceivedFinalResultWithRequestId:(id)a3 speechPackage:(id)a4 metadata:(id)a5;
- (void)localSpeechServiceDidReceivedPartialResultWithRequestId:(id)a3 language:(id)a4 speechPackage:(id)a5 metadata:(id)a6;
- (void)localSpeechServiceDidReceivedPartialResultWithRequestId:(id)a3 language:(id)a4 tokens:(id)a5;
- (void)localSpeechServiceDidReceivedPartialResultWithRequestId:(id)a3 language:(id)a4 tokens:(id)a5 metadata:(id)a6;
- (void)localSpeechServiceDidReceivedVoiceCommandCandidateWithRequestId:(id)a3 speechPackage:(id)a4 metadata:(id)a5;
- (void)localSpeechServiceDidReceivedVoiceIdScoreCard:(id)a3;
- (void)localSpeechServiceRequestAttentionAssetDownload;
- (void)pauseLocalSpeechRecognitionForRequestId:(id)a3;
- (void)preheatLocalSpeechRecognitionWithLanguage:(id)a3 source:(unint64_t)a4;
- (void)resetCacheAndCompileAllAssets;
- (void)resumeLocalRecognitionWithRequestId:(id)a3 prefixText:(id)a4 postfixText:(id)a5 selectedText:(id)a6;
- (void)sendSpeechCorrectionInfo:(id)a3 interactionIdentifier:(id)a4;
- (void)sendVisualContextAndCorrectionsInfo:(id)a3 interactionIdentifier:(id)a4;
- (void)setLocalSpeechRecognizerClientDelegate:(id)a3;
- (void)startSpeechRecognitionResultsWithSettings:(id)a3;
- (void)stopSpeechRecognitionTaskAndInvalidateWithReason:(unint64_t)a3 requestId:(id)a4 completion:(id)a5;
- (void)stopSpeechRecognitionTaskWithReason:(unint64_t)a3 requestId:(id)a4 completion:(id)a5;
- (void)trpCandidateReadyForExecutionForRequestId:(id)a3 withTrpId:(id)a4;
- (void)updateTCUState:(id)a3;
- (void)updateVoiceCommandContextWithRequestId:(id)a3 prefixText:(id)a4 postfixText:(id)a5 selectedText:(id)a6 disambiguationActive:(id)a7 cursorInVisibleText:(id)a8 favorCommandSuppression:(id)a9 abortCommandSuppression:(id)a10 undoEvent:(id)a11;
@end

@implementation LBLocalSpeechRecognizerClient

- (id)_connection
{
  v35 = *MEMORY[0x277D85DE8];
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
      v8 = v7;
      v9 = [(LBLocalSpeechRecognizerClient *)self uuidString];
      v10 = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
      *buf = 136315650;
      v30 = "[LBLocalSpeechRecognizerClient _connection]";
      v31 = 2112;
      v32 = v9;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&dword_256130000, v8, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:Creating new xpc connection...", buf, 0x20u);
    }

    v11 = [(LBLocalSpeechRecognizerClient *)self _newConnection];
    v12 = self->_xpcConnection;
    self->_xpcConnection = v11;

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
  v2 = [(LBLocalSpeechRecognizerClient *)self _connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
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
    v5 = [(LBLocalSpeechRecognizerClient *)self uuidString];
    v6 = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
    v11 = 136315650;
    v12 = "[LBLocalSpeechRecognizerClient localSpeechServiceRequestAttentionAssetDownload]";
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
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

- (void)localSpeechServiceDidDetectedFinalEndpointAtTime:(double)a3
{
  v24 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v5 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(LBLocalSpeechRecognizerClient *)self uuidString];
    v8 = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
    *buf = 136315906;
    v17 = "[LBLocalSpeechRecognizerClient localSpeechServiceDidDetectedFinalEndpointAtTime:]";
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    v22 = 2048;
    v23 = a3;
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
    [v13 localSpeechRecognizerClient:self receivedFinalEndpointDetectedAtTime:a3];
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

- (void)localSpeechServiceDidReceiveMultiUserTRPCandidatePackage:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(LBLocalSpeechRecognizerClient *)self uuidString];
    v8 = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
    v13 = 136315906;
    v14 = "[LBLocalSpeechRecognizerClient localSpeechServiceDidReceiveMultiUserTRPCandidatePackage:]";
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_256130000, v6, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:Received MultiUserTRP candidate: %@", &v13, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 localSpeechRecognizerClient:self receivedMultiUserTRPCandidatePackage:v4];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)localSpeechServiceDidReceiveTRPDetected:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(LBLocalSpeechRecognizerClient *)self uuidString];
    v8 = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
    v13 = 136315906;
    v14 = "[LBLocalSpeechRecognizerClient localSpeechServiceDidReceiveTRPDetected:]";
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_256130000, v6, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:Received TRP Detected: %@", &v13, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 localSpeechRecognizerClient:self receivedTRPDetected:v4];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)localSpeechServiceDidReceiveTCUStateUpdate:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(LBLocalSpeechRecognizerClient *)self uuidString];
    v8 = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
    v13 = 136315906;
    v14 = "[LBLocalSpeechRecognizerClient localSpeechServiceDidReceiveTCUStateUpdate:]";
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_256130000, v6, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:Received TCU state update: %@", &v13, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 localSpeechRecognizerClient:self receivedTCUStateUpdate:v4];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)localSpeechServiceDidReceiveContinuityEndDetected:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(LBLocalSpeechRecognizerClient *)self uuidString];
    v8 = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
    v17 = 136315906;
    v18 = "[LBLocalSpeechRecognizerClient localSpeechServiceDidReceiveContinuityEndDetected:]";
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    v23 = 2112;
    v24 = v4;
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
      v13 = [(LBLocalSpeechRecognizerClient *)self uuidString];
      v14 = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
      v17 = 136315906;
      v18 = "[LBLocalSpeechRecognizerClient localSpeechServiceDidReceiveContinuityEndDetected:]";
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_256130000, v12, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:Delegate - Received Continuity End Detected: %@", &v17, 0x2Au);
    }

    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 localSpeechRecognizerClient:self receivedContinuityEndDetected:v4];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)localSpeechServiceDidReceiveTRPCandidatePackage:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(LBLocalSpeechRecognizerClient *)self uuidString];
    v8 = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
    v13 = 136315650;
    v14 = "[LBLocalSpeechRecognizerClient localSpeechServiceDidReceiveTRPCandidatePackage:]";
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_256130000, v6, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:Received TRP Candidate Package", &v13, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 localSpeechRecognizerClient:self receivedTRPCandidatePackage:v4];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)localSpeechServiceDidReceivedVoiceIdScoreCard:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(LBLocalSpeechRecognizerClient *)self uuidString];
    v8 = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
    v9 = [v4 spIdKnownUserScores];
    v14 = 136315906;
    v15 = "[LBLocalSpeechRecognizerClient localSpeechServiceDidReceivedVoiceIdScoreCard:]";
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_256130000, v6, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:Client received voiceId scores: %@", &v14, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 localSpeechRecognizerClient:self receivedVoiceIdScoreCard:v4];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)localSpeechServiceDidCompletionRecognitionWithStatistics:(id)a3 requestId:(id)a4 endpointMode:(int64_t)a5 error:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  dispatch_assert_queue_V2(self->_queue);
  v13 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [(LBLocalSpeechRecognizerClient *)self uuidString];
    v16 = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
    v17 = [v12 localizedDescription];
    v24 = 136316418;
    v25 = "[LBLocalSpeechRecognizerClient localSpeechServiceDidCompletionRecognitionWithStatistics:requestId:endpointMode:error:]";
    v26 = 2112;
    v27 = v15;
    v28 = 2112;
    v29 = v16;
    v30 = 2112;
    v31 = v11;
    v32 = 2050;
    v33 = a5;
    v34 = 2114;
    v35 = v17;
    _os_log_impl(&dword_256130000, v14, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:Notify task %@ completed with endpointMode %{public}ld, error : %{public}@", &v24, 0x3Eu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = objc_opt_respondsToSelector();

  v20 = objc_loadWeakRetained(&self->_delegate);
  v21 = v20;
  if (v19)
  {
    [v20 localSpeechRecognizerClient:self didCompletionRecognitionWithStatistics:v10 requestId:v11 endpointMode:a5 error:v12];
LABEL_7:

    goto LABEL_8;
  }

  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    v21 = objc_loadWeakRetained(&self->_delegate);
    [v21 localSpeechRecognizerClient:self didCompletionRecognitionWithStatistics:v10 requestId:v11 error:v12];
    goto LABEL_7;
  }

LABEL_8:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)localSpeechServiceDidReceivedEagerRecognitionCandidateWithRequestId:(id)a3 rcId:(unint64_t)a4 speechPackage:(id)a5 duration:(double)a6 metadata:(id)a7
{
  v17 = a3;
  v12 = a5;
  v13 = a7;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = objc_loadWeakRetained(&self->_delegate);
    [v16 localSpeechRecognizerClient:self receivedEagerRecognitionCandidateWithRequestId:v17 rcId:a4 speechPackage:v12 duration:v13 metadata:a6];
  }
}

- (void)localSpeechServiceDidReceivedEagerRecognitionCandidateWithRequestId:(id)a3 rcId:(unint64_t)a4 speechPackage:(id)a5 duration:(double)a6
{
  v14 = a3;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 localSpeechRecognizerClient:self receivedEagerRecognitionCandidateWithRequestId:v14 rcId:a4 speechPackage:v10 duration:a6];
  }
}

- (void)localSpeechServiceDidReceivedFinalResultWithRequestId:(id)a3 speechPackage:(id)a4 metadata:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 localSpeechRecognizerClient:self receivedFinalResultWithRequestId:v13 speechPackage:v8 metadata:v9];
  }
}

- (void)localSpeechServiceDidReceivedFinalResultWithRequestId:(id)a3 speechPackage:(id)a4
{
  queue = self->_queue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained localSpeechRecognizerClient:self receivedFinalResultWithRequestId:v8 speechPackage:v7];
}

- (void)localSpeechServiceDidReceivedVoiceCommandCandidateWithRequestId:(id)a3 speechPackage:(id)a4 metadata:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 localSpeechRecognizerClient:self receivedVoiceCommandCandidateWithRequestId:v13 speechPackage:v8 metadata:v9];
  }
}

- (void)localSpeechServiceDidReceivedFinalResultCandidateWithRequestId:(id)a3 speechPackage:(id)a4
{
  v10 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 localSpeechRecognizerClient:self receivedFinalResultCandidateWithRequestId:v10 speechPackage:v6];
  }
}

- (void)localSpeechServiceDidReceivedPartialResultWithRequestId:(id)a3 language:(id)a4 speechPackage:(id)a5 metadata:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 localSpeechRecognizerClient:self receivedPartialResultWithRequestId:v16 language:v10 speechPackage:v11 metadata:v12];
  }
}

- (void)localSpeechServiceDidReceivedPartialResultWithRequestId:(id)a3 language:(id)a4 tokens:(id)a5 metadata:(id)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 localSpeechRecognizerClient:self receivedPartialResultWithRequestId:v16 language:v10 tokens:v11 metadata:v12];
  }
}

- (void)localSpeechServiceDidReceivedPartialResultWithRequestId:(id)a3 language:(id)a4 tokens:(id)a5
{
  queue = self->_queue;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  dispatch_assert_queue_V2(queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained localSpeechRecognizerClient:self receivedPartialResultWithRequestId:v11 language:v10 tokens:v9];
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

- (void)trpCandidateReadyForExecutionForRequestId:(id)a3 withTrpId:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__LBLocalSpeechRecognizerClient_trpCandidateReadyForExecutionForRequestId_withTrpId___block_invoke;
  block[3] = &unk_279823898;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)updateTCUState:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__LBLocalSpeechRecognizerClient_updateTCUState___block_invoke;
  v7[3] = &unk_2798238E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)sendVisualContextAndCorrectionsInfo:(id)a3 interactionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__LBLocalSpeechRecognizerClient_sendVisualContextAndCorrectionsInfo_interactionIdentifier___block_invoke;
  block[3] = &unk_279823898;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __91__LBLocalSpeechRecognizerClient_sendVisualContextAndCorrectionsInfo_interactionIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _service];
  [v2 sendVisualContextAndCorrectionsInfo:*(a1 + 40) interactionIdentifier:*(a1 + 48)];
}

- (void)sendSpeechCorrectionInfo:(id)a3 interactionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__LBLocalSpeechRecognizerClient_sendSpeechCorrectionInfo_interactionIdentifier___block_invoke;
  block[3] = &unk_279823898;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)updateVoiceCommandContextWithRequestId:(id)a3 prefixText:(id)a4 postfixText:(id)a5 selectedText:(id)a6 disambiguationActive:(id)a7 cursorInVisibleText:(id)a8 favorCommandSuppression:(id)a9 abortCommandSuppression:(id)a10 undoEvent:(id)a11
{
  v35 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __207__LBLocalSpeechRecognizerClient_updateVoiceCommandContextWithRequestId_prefixText_postfixText_selectedText_disambiguationActive_cursorInVisibleText_favorCommandSuppression_abortCommandSuppression_undoEvent___block_invoke;
  block[3] = &unk_279823870;
  block[4] = self;
  v37 = v35;
  v38 = v17;
  v39 = v18;
  v40 = v19;
  v41 = v20;
  v42 = v21;
  v43 = v22;
  v44 = v23;
  v45 = v24;
  v26 = v24;
  v27 = v23;
  v28 = v22;
  v29 = v21;
  v30 = v20;
  v31 = v19;
  v32 = v18;
  v33 = v17;
  v34 = v35;
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

- (void)resumeLocalRecognitionWithRequestId:(id)a3 prefixText:(id)a4 postfixText:(id)a5 selectedText:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __105__LBLocalSpeechRecognizerClient_resumeLocalRecognitionWithRequestId_prefixText_postfixText_selectedText___block_invoke;
  block[3] = &unk_279823848;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
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

- (void)pauseLocalSpeechRecognitionForRequestId:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__LBLocalSpeechRecognizerClient_pauseLocalSpeechRecognitionForRequestId___block_invoke;
  v7[3] = &unk_2798238E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)disableLocalSpeechRecognitionForRequestId:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__LBLocalSpeechRecognizerClient_disableLocalSpeechRecognitionForRequestId___block_invoke;
  v7[3] = &unk_2798238E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)_stopSpeechRecognitionTaskWithReason:(unint64_t)a3 requestId:(id)a4 shouldInvalidateAfterStop:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v36 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v12 = LBLogContextFacilityLocalSRBridge;
  if (os_log_type_enabled(LBLogContextFacilityLocalSRBridge, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [(LBLocalSpeechRecognizerClient *)self uuidString];
    v15 = [(LBLocalSpeechRecognizerClient *)self xpcConnectionUUIDString];
    *buf = 136316418;
    v25 = "[LBLocalSpeechRecognizerClient _stopSpeechRecognitionTaskWithReason:requestId:shouldInvalidateAfterStop:completion:]";
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    v30 = 2050;
    v31 = a3;
    v32 = 2112;
    v33 = v10;
    v34 = 1024;
    v35 = v7;
    _os_log_impl(&dword_256130000, v13, OS_LOG_TYPE_DEFAULT, "%s LBLocalSpeechRecognizerClient[%@], xpcConnection[%@]:reason : %{public}lu, requestId %@, shouldInvalidate %d", buf, 0x3Au);
  }

  if (self->_shouldEnableAudioCapture && (audioCapture = self->_audioCapture) != 0)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __117__LBLocalSpeechRecognizerClient__stopSpeechRecognitionTaskWithReason_requestId_shouldInvalidateAfterStop_completion___block_invoke;
    v19[3] = &unk_279823820;
    v19[4] = self;
    v22 = a3;
    v20 = v10;
    v23 = v7;
    v21 = v11;
    [(LBAudioCapture *)audioCapture stopAudioCaptureWithReason:a3 requestId:v20 completion:v19];
  }

  else
  {
    v17 = [(LBLocalSpeechRecognizerClient *)self _service];
    [v17 stopSpeechRecognitionWithReason:a3 requestId:v10];

    if (v7)
    {
      [(LBLocalSpeechRecognizerClient *)self _invalidate];
    }

    if (v11)
    {
      (*(v11 + 2))(v11, 1, 0);
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

- (void)stopSpeechRecognitionTaskAndInvalidateWithReason:(unint64_t)a3 requestId:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __103__LBLocalSpeechRecognizerClient_stopSpeechRecognitionTaskAndInvalidateWithReason_requestId_completion___block_invoke;
  v13[3] = &unk_2798237F8;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)stopSpeechRecognitionTaskWithReason:(unint64_t)a3 requestId:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__LBLocalSpeechRecognizerClient_stopSpeechRecognitionTaskWithReason_requestId_completion___block_invoke;
  v13[3] = &unk_2798237F8;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)startSpeechRecognitionResultsWithSettings:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__LBLocalSpeechRecognizerClient_startSpeechRecognitionResultsWithSettings___block_invoke;
  v7[3] = &unk_2798238E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)preheatLocalSpeechRecognitionWithLanguage:(id)a3 source:(unint64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__LBLocalSpeechRecognizerClient_preheatLocalSpeechRecognitionWithLanguage_source___block_invoke;
  block[3] = &unk_279823780;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
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

- (void)setLocalSpeechRecognizerClientDelegate:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__LBLocalSpeechRecognizerClient_setLocalSpeechRecognizerClientDelegate___block_invoke;
  v7[3] = &unk_2798238E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (LBLocalSpeechRecognizerClient)initWithDelegate:(id)a3 xpcListenerEndpoint:(id)a4 audioCapture:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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

    objc_storeWeak(&v11->_delegate, v8);
    objc_storeStrong(&v11->_xpcListenerEndpoint, a4);
    if (v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = [[LBAudioCapture alloc] initWithQueue:v11->_queue];
    }

    audioCapture = v11->_audioCapture;
    v11->_audioCapture = v15;

    v17 = [MEMORY[0x277CCAD78] UUID];
    v18 = [v17 UUIDString];
    uuidString = v11->_uuidString;
    v11->_uuidString = v18;

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