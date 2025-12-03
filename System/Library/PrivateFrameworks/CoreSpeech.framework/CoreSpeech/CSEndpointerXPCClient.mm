@interface CSEndpointerXPCClient
- (BOOL)shouldAcceptEagerResultForDurationSync:(double)sync withEndpointerMetrics:(id)metrics;
- (CSEndpointAnalyzerDelegate)delegate;
- (CSEndpointerXPCClient)init;
- (NSString)endpointerModelVersion;
- (id)_getRemoteServiceProxyObject;
- (id)_getSerialQueueWithName:(id)name targetQueue:(id)queue;
- (id)cachedEndpointerMetrics;
- (unint64_t)activeChannel;
- (void)_createClientConnection;
- (void)_deliverHardEndpointDetectedAtTime:(double)time withMetrics:(id)metrics eventType:(int64_t)type;
- (void)dealloc;
- (void)didDetectHardEndpointAtTime:(double)time withMetrics:(id)metrics eventType:(int64_t)type;
- (void)didDetectTwoShotAtTime:(double)time;
- (void)logFeaturesWithEvent:(id)event locale:(id)locale;
- (void)processASRFeatures:(id)features fromServer:(BOOL)server;
- (void)recordingStoppedForReason:(int64_t)reason;
- (void)resetForNewRequestWithSampleRate:(unint64_t)rate recordContext:(id)context recordOption:(id)option voiceTriggerInfo:(id)info;
- (void)setActiveChannel:(unint64_t)channel;
- (void)setEndpointerModelVersion:(id)version;
- (void)setEndpointerOperationMode:(int64_t)mode;
- (void)shouldAcceptEagerResultForDuration:(double)duration resultsCompletionHandler:(id)handler;
- (void)shouldAcceptEagerResultForDuration:(double)duration withEndpointerMetrics:(id)metrics resultsCompletionHandler:(id)handler;
- (void)stopEndpointer;
- (void)updateEndpointerThreshold:(float)threshold;
@end

@implementation CSEndpointerXPCClient

- (id)_getRemoteServiceProxyObject
{
  v16 = *MEMORY[0x277D85DE8];
  remoteObjectProxy = self->_remoteObjectProxy;
  if (!remoteObjectProxy || !self->_endpointerConnection)
  {
    v4 = MEMORY[0x277D015B8];
    v5 = *MEMORY[0x277D015B8];
    if (os_log_type_enabled(*MEMORY[0x277D015B8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[CSEndpointerXPCClient _getRemoteServiceProxyObject]";
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s Creating RemoteServiceProxy", buf, 0xCu);
    }

    endpointerConnection = self->_endpointerConnection;
    if (endpointerConnection || ([(CSEndpointerXPCClient *)self _createClientConnection], (endpointerConnection = self->_endpointerConnection) != 0))
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __53__CSEndpointerXPCClient__getRemoteServiceProxyObject__block_invoke;
      v13[3] = &unk_2784C51E0;
      v13[4] = self;
      v7 = [(NSXPCConnection *)endpointerConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
      v8 = self->_remoteObjectProxy;
      self->_remoteObjectProxy = v7;
    }

    else
    {
      v12 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v15 = "[CSEndpointerXPCClient _getRemoteServiceProxyObject]";
        _os_log_error_impl(&dword_222E4D000, v12, OS_LOG_TYPE_ERROR, "%s ERR: Endpointer endpointerConnection is nil", buf, 0xCu);
      }

      v8 = self->_remoteObjectProxy;
      self->_remoteObjectProxy = 0;
    }

    remoteObjectProxy = self->_remoteObjectProxy;
  }

  v9 = remoteObjectProxy;
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (CSEndpointAnalyzerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didDetectTwoShotAtTime:(double)time
{
  xpcDelegateQueue = self->_xpcDelegateQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__CSEndpointerXPCClient_didDetectTwoShotAtTime___block_invoke;
  v4[3] = &unk_2784C6EC0;
  *&v4[5] = time;
  v4[4] = self;
  dispatch_async(xpcDelegateQueue, v4);
}

void __48__CSEndpointerXPCClient_didDetectTwoShotAtTime___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015B8];
  if (os_log_type_enabled(*MEMORY[0x277D015B8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v10 = 136315394;
    v11 = "[CSEndpointerXPCClient didDetectTwoShotAtTime:]_block_invoke";
    v12 = 2048;
    v13 = v3;
    _os_log_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEFAULT, "%s Endpointer didDetectTwoShotAtTime %f", &v10, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained((*(a1 + 32) + 8));
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained((*(a1 + 32) + 8));
      [v8 endpointer:*(a1 + 32) detectedTwoShotAtTime:*(a1 + 40)];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_deliverHardEndpointDetectedAtTime:(double)time withMetrics:(id)metrics eventType:(int64_t)type
{
  v27 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  v9 = *MEMORY[0x277D015B8];
  if (os_log_type_enabled(*MEMORY[0x277D015B8], OS_LOG_TYPE_DEFAULT))
  {
    requestId = self->_requestId;
    v17 = 136316162;
    v18 = "[CSEndpointerXPCClient _deliverHardEndpointDetectedAtTime:withMetrics:eventType:]";
    v19 = 2048;
    timeCopy = time;
    v21 = 2112;
    v22 = metricsCopy;
    v23 = 2048;
    typeCopy = type;
    v25 = 2112;
    v26 = requestId;
    _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_DEFAULT, "%s Endpointer didDetectHardEndpointAtTime %f withMetrics %@ eventType %ld, current requestId %@", &v17, 0x34u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->_delegate);
      [v15 endpointer:self didDetectHardEndpointAtTime:metricsCopy withMetrics:type eventType:time];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)didDetectHardEndpointAtTime:(double)time withMetrics:(id)metrics eventType:(int64_t)type
{
  metricsCopy = metrics;
  xpcDelegateQueue = self->_xpcDelegateQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__CSEndpointerXPCClient_didDetectHardEndpointAtTime_withMetrics_eventType___block_invoke;
  v11[3] = &unk_2784C62C8;
  v11[4] = self;
  v12 = metricsCopy;
  timeCopy = time;
  typeCopy = type;
  v10 = metricsCopy;
  dispatch_async(xpcDelegateQueue, v11);
}

void __75__CSEndpointerXPCClient_didDetectHardEndpointAtTime_withMetrics_eventType___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 80);
  v3 = [*(a1 + 40) requestId];
  LODWORD(v2) = [v2 isEqualToString:v3];

  if (v2)
  {
    [*(a1 + 32) _deliverHardEndpointDetectedAtTime:*(a1 + 40) withMetrics:*(a1 + 56) eventType:*(a1 + 48)];
  }

  else
  {
    v4 = *MEMORY[0x277D015B8];
    if (os_log_type_enabled(*MEMORY[0x277D015B8], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(*(a1 + 32) + 80);
      v7 = v4;
      v8 = [v5 requestId];
      v10 = 136315650;
      v11 = "[CSEndpointerXPCClient didDetectHardEndpointAtTime:withMetrics:eventType:]_block_invoke";
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s Do not deliver hardEndpoint right away since current requestId (%@) is not matching the event to fire (%@)", &v10, 0x20u);
    }
  }

  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  *(*(a1 + 32) + 72) = *(a1 + 56);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_createClientConnection
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.corespeech.corespeechd.endpointer.service" options:0];
  endpointerConnection = self->_endpointerConnection;
  self->_endpointerConnection = v3;

  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2836A89B8];
  [(NSXPCConnection *)self->_endpointerConnection setRemoteObjectInterface:v5];

  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28367D650];
  v7 = MEMORY[0x277CBEB98];
  v18[0] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v9 = [v7 setWithArray:v8];
  [v6 setClasses:v9 forSelector:sel_didDetectHardEndpointAtTime_withMetrics_eventType_ argumentIndex:1 ofReply:0];

  [(NSXPCConnection *)self->_endpointerConnection setExportedInterface:v6];
  [(NSXPCConnection *)self->_endpointerConnection setExportedObject:self];
  [(NSXPCConnection *)self->_endpointerConnection _setQueue:self->_xpcConnectionQueue];
  objc_initWeak(&location, self);
  v10 = self->_endpointerConnection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__CSEndpointerXPCClient__createClientConnection__block_invoke;
  v15[3] = &unk_2784C5F68;
  objc_copyWeak(&v16, &location);
  [(NSXPCConnection *)v10 setInterruptionHandler:v15];
  v11 = self->_endpointerConnection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__CSEndpointerXPCClient__createClientConnection__block_invoke_2;
  v13[3] = &unk_2784C5F68;
  objc_copyWeak(&v14, &location);
  [(NSXPCConnection *)v11 setInvalidationHandler:v13];
  [(NSXPCConnection *)self->_endpointerConnection resume];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  v12 = *MEMORY[0x277D85DE8];
}

void __48__CSEndpointerXPCClient__createClientConnection__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *MEMORY[0x277D015B8];
  if (os_log_type_enabled(*MEMORY[0x277D015B8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = [WeakRetained endpointerConnection];
    v5 = [WeakRetained endpointerConnection];
    *buf = 136315650;
    v11 = "[CSEndpointerXPCClient _createClientConnection]_block_invoke";
    v12 = 2114;
    v13 = v4;
    v14 = 1026;
    v15 = [v5 processIdentifier];
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s Client Interruption Handler: %{public}@, client PID: %{public}d)", buf, 0x1Cu);
  }

  if (WeakRetained)
  {
    v6 = [WeakRetained endpointerConnection];

    if (v6)
    {
      v7 = [WeakRetained xpcConnectionQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__CSEndpointerXPCClient__createClientConnection__block_invoke_138;
      block[3] = &unk_2784C6FD0;
      block[4] = WeakRetained;
      dispatch_async(v7, block);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __48__CSEndpointerXPCClient__createClientConnection__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *MEMORY[0x277D015B8];
  if (os_log_type_enabled(*MEMORY[0x277D015B8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = [WeakRetained endpointerConnection];
    v5 = [WeakRetained endpointerConnection];
    *buf = 136315650;
    v11 = "[CSEndpointerXPCClient _createClientConnection]_block_invoke_2";
    v12 = 2114;
    v13 = v4;
    v14 = 1026;
    v15 = [v5 processIdentifier];
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s Client Invalidation Handler: %{public}@, client PID: %{public}d exited", buf, 0x1Cu);
  }

  if (WeakRetained)
  {
    v6 = [WeakRetained endpointerConnection];

    if (v6)
    {
      v7 = [WeakRetained xpcConnectionQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__CSEndpointerXPCClient__createClientConnection__block_invoke_139;
      block[3] = &unk_2784C6FD0;
      block[4] = WeakRetained;
      dispatch_async(v7, block);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __48__CSEndpointerXPCClient__createClientConnection__block_invoke_139(uint64_t a1)
{
  [*(a1 + 32) setEndpointerConnection:0];
  v2 = *(a1 + 32);

  return [v2 setRemoteObjectProxy:0];
}

uint64_t __48__CSEndpointerXPCClient__createClientConnection__block_invoke_138(uint64_t a1)
{
  v2 = [*(a1 + 32) endpointerConnection];
  [v2 invalidate];

  [*(a1 + 32) setEndpointerConnection:0];
  v3 = *(a1 + 32);

  return [v3 setRemoteObjectProxy:0];
}

void __53__CSEndpointerXPCClient__getRemoteServiceProxyObject__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *MEMORY[0x277D015B8];
    if (os_log_type_enabled(*MEMORY[0x277D015B8], OS_LOG_TYPE_ERROR))
    {
      v8 = v4;
      v9 = [v3 code];
      v10 = [v3 localizedDescription];
      v11 = 136315650;
      v12 = "[CSEndpointerXPCClient _getRemoteServiceProxyObject]_block_invoke";
      v13 = 2050;
      v14 = v9;
      v15 = 2114;
      v16 = v10;
      _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, "%s ERR: Endpointer Remote Object Proxy returned error : %{public}ld (%{public}@)", &v11, 0x20u);
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopEndpointer
{
  xpcClientQueue = self->_xpcClientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__CSEndpointerXPCClient_stopEndpointer__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(xpcClientQueue, block);
}

void __39__CSEndpointerXPCClient_stopEndpointer__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _getRemoteServiceProxyObject];
  [v1 stopEndpointer];
}

- (void)logFeaturesWithEvent:(id)event locale:(id)locale
{
  eventCopy = event;
  localeCopy = locale;
  xpcClientQueue = self->_xpcClientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CSEndpointerXPCClient_logFeaturesWithEvent_locale___block_invoke;
  block[3] = &unk_2784C6EE8;
  block[4] = self;
  v12 = eventCopy;
  v13 = localeCopy;
  v9 = localeCopy;
  v10 = eventCopy;
  dispatch_async(xpcClientQueue, block);
}

void __53__CSEndpointerXPCClient_logFeaturesWithEvent_locale___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getRemoteServiceProxyObject];
  [v2 logFeaturesWithEvent:*(a1 + 40) locale:*(a1 + 48)];
}

- (void)recordingStoppedForReason:(int64_t)reason
{
  xpcDelegateQueue = self->_xpcDelegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__CSEndpointerXPCClient_recordingStoppedForReason___block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_async(xpcDelegateQueue, block);
}

void __51__CSEndpointerXPCClient_recordingStoppedForReason___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  *(*(a1 + 32) + 72) = 0;
}

- (id)cachedEndpointerMetrics
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__7388;
  v10 = __Block_byref_object_dispose__7389;
  v11 = 0;
  xpcDelegateQueue = self->_xpcDelegateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__CSEndpointerXPCClient_cachedEndpointerMetrics__block_invoke;
  v5[3] = &unk_2784C6F30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(xpcDelegateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)resetForNewRequestWithSampleRate:(unint64_t)rate recordContext:(id)context recordOption:(id)option voiceTriggerInfo:(id)info
{
  contextCopy = context;
  optionCopy = option;
  xpcDelegateQueue = self->_xpcDelegateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__CSEndpointerXPCClient_resetForNewRequestWithSampleRate_recordContext_recordOption_voiceTriggerInfo___block_invoke;
  block[3] = &unk_2784C6EE8;
  block[4] = self;
  v16 = optionCopy;
  v17 = contextCopy;
  v11 = contextCopy;
  v12 = optionCopy;
  dispatch_async(xpcDelegateQueue, block);
  xpcClientQueue = self->_xpcClientQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __102__CSEndpointerXPCClient_resetForNewRequestWithSampleRate_recordContext_recordOption_voiceTriggerInfo___block_invoke_22;
  v14[3] = &unk_2784C6FD0;
  v14[4] = self;
  dispatch_async(xpcClientQueue, v14);
}

void __102__CSEndpointerXPCClient_resetForNewRequestWithSampleRate_recordContext_recordOption_voiceTriggerInfo___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) siriSessionUUID];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 64);
  if (!v6)
  {
LABEL_7:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  v7 = *(v5 + 80);
  v15 = [v6 requestId];
  if ([v7 isEqualToString:?])
  {
    v8 = [*(a1 + 48) isContinuousConversation];

    if (v8)
    {
      v9 = *MEMORY[0x277D015B8];
      if (os_log_type_enabled(*MEMORY[0x277D015B8], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 80);
        *buf = 136315394;
        v17 = "[CSEndpointerXPCClient resetForNewRequestWithSampleRate:recordContext:recordOption:voiceTriggerInfo:]_block_invoke";
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_DEFAULT, "%s Deliver cached endpointer event for requestId %@", buf, 0x16u);
      }

      v11 = *(a1 + 32);
      [v11[8] totalAudioRecorded];
      [v11 _deliverHardEndpointDetectedAtTime:*(*(a1 + 32) + 64) withMetrics:*(*(a1 + 32) + 72) eventType:v12 / 1000.0];
    }

    goto LABEL_7;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __102__CSEndpointerXPCClient_resetForNewRequestWithSampleRate_recordContext_recordOption_voiceTriggerInfo___block_invoke_22(uint64_t a1)
{
  v1 = [*(a1 + 32) _getRemoteServiceProxyObject];
  [v1 setupConnection];
}

- (void)setEndpointerOperationMode:(int64_t)mode
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D015B8];
  if (os_log_type_enabled(*MEMORY[0x277D015B8], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v10 = "[CSEndpointerXPCClient setEndpointerOperationMode:]";
    _os_log_debug_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  xpcClientQueue = self->_xpcClientQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__CSEndpointerXPCClient_setEndpointerOperationMode___block_invoke;
  v8[3] = &unk_2784C6EC0;
  v8[4] = self;
  v8[5] = mode;
  dispatch_async(xpcClientQueue, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __52__CSEndpointerXPCClient_setEndpointerOperationMode___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015B8];
  if (os_log_type_enabled(*MEMORY[0x277D015B8], OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 40);
    v6 = v2;
    v7 = AFSpeechEndpointerOperationModeGetName();
    v8 = 136315394;
    v9 = "[CSEndpointerXPCClient setEndpointerOperationMode:]_block_invoke";
    v10 = 2112;
    v11 = v7;
    _os_log_debug_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEBUG, "%s endpointerOperationMode = %@", &v8, 0x16u);
  }

  v3 = [*(a1 + 32) _getRemoteServiceProxyObject];
  [v3 setEndpointerOperationMode:*(a1 + 40)];

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldAcceptEagerResultForDurationSync:(double)sync withEndpointerMetrics:(id)metrics
{
  v35 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  date = [MEMORY[0x277CBEAA8] date];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__7388;
  v25 = __Block_byref_object_dispose__7389;
  v26 = 0;
  xpcClientQueue = self->_xpcClientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__CSEndpointerXPCClient_shouldAcceptEagerResultForDurationSync_withEndpointerMetrics___block_invoke;
  block[3] = &unk_2784C5348;
  v18 = &v27;
  block[4] = self;
  syncCopy = sync;
  v9 = metricsCopy;
  v17 = v9;
  v19 = &v21;
  dispatch_async_and_wait(xpcClientQueue, block);
  v10 = v22;
  if (v22[5])
  {
    v11 = *MEMORY[0x277D015B8];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      [v10[5] timeIntervalSinceDate:date];
      *buf = 136315394;
      v32 = "[CSEndpointerXPCClient shouldAcceptEagerResultForDurationSync:withEndpointerMetrics:]";
      v33 = 2050;
      v34 = v12;
      _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_DEFAULT, "%s elapsed time = %{public}lf", buf, 0x16u);
    }
  }

  v13 = *(v28 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  v14 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

void __86__CSEndpointerXPCClient_shouldAcceptEagerResultForDurationSync_withEndpointerMetrics___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getRemoteServiceProxyObject];
  *(*(*(a1 + 48) + 8) + 24) = [v2 shouldAcceptEagerResultForDurationSync:*(a1 + 40) withEndpointerMetrics:*(a1 + 64)];

  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)shouldAcceptEagerResultForDuration:(double)duration withEndpointerMetrics:(id)metrics resultsCompletionHandler:(id)handler
{
  metricsCopy = metrics;
  handlerCopy = handler;
  xpcClientQueue = self->_xpcClientQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __107__CSEndpointerXPCClient_shouldAcceptEagerResultForDuration_withEndpointerMetrics_resultsCompletionHandler___block_invoke;
  v13[3] = &unk_2784C4638;
  durationCopy = duration;
  v13[4] = self;
  v14 = metricsCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = metricsCopy;
  dispatch_async(xpcClientQueue, v13);
}

void __107__CSEndpointerXPCClient_shouldAcceptEagerResultForDuration_withEndpointerMetrics_resultsCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getRemoteServiceProxyObject];
  [v2 shouldAcceptEagerResultForDuration:*(a1 + 40) withEndpointerMetrics:*(a1 + 48) resultsCompletionHandler:*(a1 + 56)];
}

- (void)shouldAcceptEagerResultForDuration:(double)duration resultsCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcClientQueue = self->_xpcClientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__CSEndpointerXPCClient_shouldAcceptEagerResultForDuration_resultsCompletionHandler___block_invoke;
  block[3] = &unk_2784C4750;
  durationCopy = duration;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(xpcClientQueue, block);
}

void __85__CSEndpointerXPCClient_shouldAcceptEagerResultForDuration_resultsCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getRemoteServiceProxyObject];
  [v2 shouldAcceptEagerResultForDuration:*(a1 + 40) resultsCompletionHandler:*(a1 + 48)];
}

- (void)updateEndpointerThreshold:(float)threshold
{
  xpcClientQueue = self->_xpcClientQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__CSEndpointerXPCClient_updateEndpointerThreshold___block_invoke;
  v4[3] = &unk_2784C5998;
  thresholdCopy = threshold;
  v4[4] = self;
  dispatch_async(xpcClientQueue, v4);
}

void __51__CSEndpointerXPCClient_updateEndpointerThreshold___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015B8];
  if (os_log_type_enabled(*MEMORY[0x277D015B8], OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 40);
    v7 = 136315394;
    v8 = "[CSEndpointerXPCClient updateEndpointerThreshold:]_block_invoke";
    v9 = 2048;
    v10 = v6;
    _os_log_debug_impl(&dword_222E4D000, v2, OS_LOG_TYPE_DEBUG, "%s threshold = %f", &v7, 0x16u);
  }

  v3 = [*(a1 + 32) _getRemoteServiceProxyObject];
  LODWORD(v4) = *(a1 + 40);
  [v3 updateEndpointerThreshold:v4];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)processASRFeatures:(id)features fromServer:(BOOL)server
{
  featuresCopy = features;
  xpcClientQueue = self->_xpcClientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CSEndpointerXPCClient_processASRFeatures_fromServer___block_invoke;
  block[3] = &unk_2784C6750;
  block[4] = self;
  v10 = featuresCopy;
  serverCopy = server;
  v8 = featuresCopy;
  dispatch_async(xpcClientQueue, block);
}

void __55__CSEndpointerXPCClient_processASRFeatures_fromServer___block_invoke(uint64_t a1)
{
  v12 = [*(a1 + 32) _getRemoteServiceProxyObject];
  v2 = [*(a1 + 40) wordCount];
  v3 = [*(a1 + 40) trailingSilenceDuration];
  [*(a1 + 40) eosLikelihood];
  v5 = v4;
  v6 = [*(a1 + 40) pauseCounts];
  [*(a1 + 40) silencePosterior];
  v8 = v7;
  v9 = [*(a1 + 40) taskName];
  v10 = [*(a1 + 40) processedAudioDurationInMilliseconds];
  [*(a1 + 40) acousticEndpointerScore];
  [v12 processASRFeaturesWithWordCount:v2 trailingSilenceDuration:v3 eosLikelihood:v6 pauseCounts:v9 silencePosterior:v10 taskName:*(a1 + 48) processedAudioDurationInMilliseconds:v5 acousticEndpointerScore:v8 fromServer:v11];
}

- (void)setEndpointerModelVersion:(id)version
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CSEndpointerXPCClient.m" lineNumber:106 description:@"CSEndpointerXPCClient should not have the endpointerModelVersion setter called"];
}

- (NSString)endpointerModelVersion
{
  v28 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__7388;
  v22 = __Block_byref_object_dispose__7389;
  v23 = 0;
  date = [MEMORY[0x277CBEAA8] date];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7388;
  v16 = __Block_byref_object_dispose__7389;
  v17 = 0;
  xpcClientQueue = self->_xpcClientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CSEndpointerXPCClient_endpointerModelVersion__block_invoke;
  block[3] = &unk_2784C5CE0;
  block[4] = self;
  block[5] = &v18;
  block[6] = &v12;
  dispatch_async_and_wait(xpcClientQueue, block);
  v5 = v13;
  if (v13[5])
  {
    v6 = *MEMORY[0x277D015B8];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      [v5[5] timeIntervalSinceDate:date];
      *buf = 136315394;
      v25 = "[CSEndpointerXPCClient endpointerModelVersion]";
      v26 = 2050;
      v27 = v7;
      _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEFAULT, "%s elapsed time = %{public}lf", buf, 0x16u);
    }
  }

  v8 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __47__CSEndpointerXPCClient_endpointerModelVersion__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getRemoteServiceProxyObject];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__CSEndpointerXPCClient_endpointerModelVersion__block_invoke_2;
  v3[3] = &unk_2784C3DB0;
  v4 = *(a1 + 40);
  [v2 getEndpointerModelVersionWithReply:v3];
}

void __47__CSEndpointerXPCClient_endpointerModelVersion__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *MEMORY[0x277D015B8];
    if (os_log_type_enabled(*MEMORY[0x277D015B8], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[CSEndpointerXPCClient endpointerModelVersion]_block_invoke_2";
      _os_log_error_impl(&dword_222E4D000, v7, OS_LOG_TYPE_ERROR, "%s Endpointer Failed to get epVersion", &v12, 0xCu);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setActiveChannel:(unint64_t)channel
{
  xpcClientQueue = self->_xpcClientQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__CSEndpointerXPCClient_setActiveChannel___block_invoke;
  v4[3] = &unk_2784C6EC0;
  v4[4] = self;
  v4[5] = channel;
  dispatch_async(xpcClientQueue, v4);
}

void __42__CSEndpointerXPCClient_setActiveChannel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getRemoteServiceProxyObject];
  [v2 setActiveChannel:*(a1 + 40)];
}

- (unint64_t)activeChannel
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CSEndpointerXPCClient.m" lineNumber:72 description:@"CSEndpointerXPCClient should not have the activeChannel getter called"];

  return 0;
}

- (id)_getSerialQueueWithName:(id)name targetQueue:(id)queue
{
  queueCopy = queue;
  if (queueCopy)
  {
    v6 = dispatch_queue_create_with_target_V2([name UTF8String], 0, queueCopy);
  }

  else
  {
    v6 = [MEMORY[0x277D018F8] getSerialQueueWithQOS:33 name:name fixedPriority:*MEMORY[0x277D019B0]];
  }

  v7 = v6;

  return v7;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_endpointerConnection invalidate];
  endpointerConnection = self->_endpointerConnection;
  self->_endpointerConnection = 0;

  v4.receiver = self;
  v4.super_class = CSEndpointerXPCClient;
  [(CSEndpointerXPCClient *)&v4 dealloc];
}

- (CSEndpointerXPCClient)init
{
  v11.receiver = self;
  v11.super_class = CSEndpointerXPCClient;
  v2 = [(CSEndpointerXPCClient *)&v11 init];
  if (v2)
  {
    CSLogInitIfNeeded();
    if ([MEMORY[0x277D018F8] supportsDispatchWorkloop])
    {
      v3 = 0;
    }

    else
    {
      v3 = [MEMORY[0x277D018F8] rootQueueWithFixedPriority:*MEMORY[0x277D019B0]];
    }

    v4 = [(CSEndpointerXPCClient *)v2 _getSerialQueueWithName:@"com.apple.corespeech.endpointer.xpc.client" targetQueue:v3];
    xpcClientQueue = v2->_xpcClientQueue;
    v2->_xpcClientQueue = v4;

    v6 = [(CSEndpointerXPCClient *)v2 _getSerialQueueWithName:@"com.apple.corespeech.endpointer.xpc.connection" targetQueue:v3];
    xpcConnectionQueue = v2->_xpcConnectionQueue;
    v2->_xpcConnectionQueue = v6;

    v8 = [(CSEndpointerXPCClient *)v2 _getSerialQueueWithName:@"com.apple.corespeech.endpointer.xpc.delegate" targetQueue:v3];
    xpcDelegateQueue = v2->_xpcDelegateQueue;
    v2->_xpcDelegateQueue = v8;
  }

  return v2;
}

@end