@interface CMContinuityCaptureRemoteAudioDevice
- (BOOL)startAVConferenceStack:(unint64_t)stack;
- (BOOL)startCameraCaptureStack:(unint64_t)stack;
- (BOOL)stopAVConferenceStack;
- (BOOL)stopCameraCaptureStack:(unint64_t)stack;
- (CMContinuityCaptureRemoteAudioDevice)initWithCapabilities:(id)capabilities compositeDelegate:(id)delegate captureSession:(id)session;
- (id)createAVCAudioStream;
- (id)newAudioStreamCurrentConfiguration:(int64_t)configuration;
- (opaqueCMSampleBuffer)_createSampleBufferForAudioData:(id)data dataRange:(_NSRange)range pts:(id *)pts formatDescription:(opaqueCMFormatDescription *)description;
- (void)_dispatchAudioFrame:(opaqueCMSampleBuffer *)frame;
- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)_processIncomingAudioBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)_resetNetworkSampleTime;
- (void)captureOutput:(id)output didDropSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)didStartStreamInput:(id)input;
- (void)didStopStreamInput:(id)input;
- (void)dispatchFrame:(opaqueCMSampleBuffer *)frame entity:(int64_t)entity completion:(id)completion;
- (void)handleSynchronizeAudioClockCompletion;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)postAVCStreamInterruption;
- (void)postActionCompletionForEventName:(id)name eventData:(id)data error:(id)error;
- (void)postActionOfType:(unint64_t)type forEvent:(id)event option:(unint64_t)option;
- (void)stopCaptureStack:(unint64_t)stack completion:(id)completion;
- (void)stream:(id)stream didStart:(BOOL)start error:(id)error;
- (void)streamDidRTCPTimeOut:(id)out;
- (void)streamDidRTPTimeOut:(id)out;
- (void)streamDidServerDie:(id)die;
- (void)streamDidStop:(id)stop;
@end

@implementation CMContinuityCaptureRemoteAudioDevice

- (CMContinuityCaptureRemoteAudioDevice)initWithCapabilities:(id)capabilities compositeDelegate:(id)delegate captureSession:(id)session
{
  capabilitiesCopy = capabilities;
  delegateCopy = delegate;
  sessionCopy = session;
  server = [delegateCopy server];
  if (server)
  {
    server2 = [delegateCopy server];
    localDevice = [server2 localDevice];
    queue = [sessionCopy queue];
    v21.receiver = self;
    v21.super_class = CMContinuityCaptureRemoteAudioDevice;
    v15 = [(CMContinuityCaptureDeviceBase *)&v21 initWithCapabilities:capabilitiesCopy compositeDelegate:delegateCopy transportDevice:localDevice queue:queue];

    if (v15)
    {
      objc_storeStrong(&v15->_captureSession, session);
      v15->_disableBufferBlockSizeCheck = 0;
      queue2 = [(CMContinuityCaptureDeviceBase *)v15 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __94__CMContinuityCaptureRemoteAudioDevice_initWithCapabilities_compositeDelegate_captureSession___block_invoke;
      block[3] = &unk_278D5C0D0;
      v20 = v15;
      dispatch_async(queue2, block);
    }

    self = v15;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

void __94__CMContinuityCaptureRemoteAudioDevice_initWithCapabilities_compositeDelegate_captureSession___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CE5AC8] defaultDeviceWithMediaType:*MEMORY[0x277CE5E48]];
  v3 = *(a1 + 32);
  v4 = *(v3 + 376);
  *(v3 + 376) = v2;

  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 376);
    v8 = 138543618;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ preloaded audio device %@", &v8, 0x16u);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __87__CMContinuityCaptureRemoteAudioDevice_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v17[3] = &unk_278D5C1C0;
  objc_copyWeak(v21, &location);
  v18 = pathCopy;
  v19 = objectCopy;
  v20 = changeCopy;
  v21[1] = context;
  v14 = changeCopy;
  v15 = objectCopy;
  v16 = pathCopy;
  dispatch_async(queue, v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __87__CMContinuityCaptureRemoteAudioDevice_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _observeValueForKeyPath:*(a1 + 32) ofObject:*(a1 + 40) change:*(a1 + 48) context:*(a1 + 64)];
    WeakRetained = v3;
  }
}

- (void)_observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  pathCopy = path;
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  LODWORD(queue) = [pathCopy isEqualToString:@"active"];
  if (!queue)
  {
    goto LABEL_13;
  }

  v11 = *MEMORY[0x277CCA2F0];
  v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  if ([v12 BOOLValue])
  {
  }

  else
  {
    v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
    bOOLValue = [v13 BOOLValue];

    if (bOOLValue)
    {
      v15 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543362;
        selfCopy2 = self;
        _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ active 1 -> 0", &v19, 0xCu);
      }

      [(CMContinuityCaptureRemoteAudioDevice *)self stopCaptureStack:4 completion:&__block_literal_global_19];
      goto LABEL_13;
    }
  }

  v16 = [changeCopy objectForKeyedSubscript:v11];
  if (([v16 BOOLValue]& 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v17 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
  bOOLValue2 = [v17 BOOLValue];

  if ((bOOLValue2 & 1) == 0)
  {
    v16 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_242545000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ active 0 -> 1", &v19, 0xCu);
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (void)didStartStreamInput:(id)input
{
  inputCopy = input;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
    v8 = 138544130;
    selfCopy = self;
    v10 = 2048;
    currentSessionID = [compositeDelegate currentSessionID];
    v12 = 2080;
    v13 = "[CMContinuityCaptureRemoteAudioDevice didStartStreamInput:]";
    v14 = 2112;
    v15 = inputCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] AVCInput setup complete %s %@", &v8, 0x2Au);
  }

  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  self->_avcStreamInputActive = 1;
}

- (void)didStopStreamInput:(id)input
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2080;
    v9 = "[CMContinuityCaptureRemoteAudioDevice didStopStreamInput:]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v6, 0x16u);
  }

  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  self->_avcStreamInputActive = 0;
}

- (void)stream:(id)stream didStart:(BOOL)start error:(id)error
{
  streamCopy = stream;
  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543874;
    selfCopy = self;
    v10 = 2080;
    v11 = "[CMContinuityCaptureRemoteAudioDevice stream:didStart:error:]";
    v12 = 2112;
    v13 = streamCopy;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@", &v8, 0x20u);
  }
}

- (void)streamDidStop:(id)stop
{
  stopCopy = stop;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v11 = 2080;
    v12 = "[CMContinuityCaptureRemoteAudioDevice streamDidStop:]";
    v13 = 2112;
    v14 = stopCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CMContinuityCaptureRemoteAudioDevice_streamDidStop___block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v8, buf);
  dispatch_async(queue, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

uint64_t __54__CMContinuityCaptureRemoteAudioDevice_streamDidStop___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[46];
    v7 = v2;
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
      v4 = v7[46];
      v7[46] = 0;

      v2 = v7;
    }

    v5 = v2[32];
    v2[32] = 0;

    *(v7 + 360) = 0;
  }

  return MEMORY[0x2821F96F8]();
}

- (void)streamDidServerDie:(id)die
{
  dieCopy = die;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v11 = 2080;
    v12 = "[CMContinuityCaptureRemoteAudioDevice streamDidServerDie:]";
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CMContinuityCaptureRemoteAudioDevice_streamDidServerDie___block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v8, buf);
  dispatch_async(queue, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __59__CMContinuityCaptureRemoteAudioDevice_streamDidServerDie___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = WeakRetained[32];
    WeakRetained[32] = 0;

    v2 = WeakRetained[31];
    WeakRetained[31] = 0;

    *(WeakRetained + 360) = 0;
    v3 = WeakRetained[46];
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
      v4 = WeakRetained[46];
      WeakRetained[46] = 0;
    }

    [WeakRetained postAVCStreamInterruption];
  }
}

- (void)postAVCStreamInterruption
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v9 = 2080;
    v10 = "[CMContinuityCaptureRemoteAudioDevice postAVCStreamInterruption]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__CMContinuityCaptureRemoteAudioDevice_postAVCStreamInterruption__block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v6, buf);
  dispatch_async(queue, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __65__CMContinuityCaptureRemoteAudioDevice_postAVCStreamInterruption__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained compositeDelegate];
    if (v2)
    {
      v3 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-1007 userInfo:0];
      [v2 connectionInterrupted:v3 forDevice:0];
    }

    WeakRetained = v4;
  }
}

- (void)streamDidRTPTimeOut:(id)out
{
  outCopy = out;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543874;
    selfCopy = self;
    v8 = 2080;
    v9 = "[CMContinuityCaptureRemoteAudioDevice streamDidRTPTimeOut:]";
    v10 = 2112;
    v11 = outCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_INFO, "%{public}@ %s %@", &v6, 0x20u);
  }
}

- (void)streamDidRTCPTimeOut:(id)out
{
  outCopy = out;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    selfCopy2 = self;
    v13 = 2080;
    v14 = "[CMContinuityCaptureRemoteAudioDevice streamDidRTCPTimeOut:]";
    v15 = 2112;
    v16 = outCopy;
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_INFO, "%{public}@ %s %@", buf, 0x20u);
  }

  objc_initWeak(&location, self);
  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    selfCopy2 = self;
    v13 = 2080;
    v14 = "[CMContinuityCaptureRemoteAudioDevice streamDidRTCPTimeOut:]";
    v15 = 2112;
    v16 = outCopy;
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_INFO, "%@ %s %@", buf, 0x20u);
  }

  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__CMContinuityCaptureRemoteAudioDevice_streamDidRTCPTimeOut___block_invoke;
  v8[3] = &unk_278D5C080;
  objc_copyWeak(&v9, &location);
  dispatch_async(queue, v8);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __61__CMContinuityCaptureRemoteAudioDevice_streamDidRTCPTimeOut___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained postAVCStreamInterruption];
    WeakRetained = v2;
  }
}

- (void)dispatchFrame:(opaqueCMSampleBuffer *)frame entity:(int64_t)entity completion:(id)completion
{
  completionCopy = completion;
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_avcStreamInputActive)
  {
    avcStreamInput = self->_avcStreamInput;
    v13 = 0;
    v10 = [(AVCStreamInput *)avcStreamInput pushSampleBuffer:frame error:&v13];
    v11 = v13;
    if ((v10 & 1) == 0)
    {
      [CMContinuityCaptureRemoteAudioDevice dispatchFrame:entity:completion:];
    }
  }

  else
  {
    [CMContinuityCaptureRemoteVideoDevice dispatchFrame:? entity:? completion:?];
    v11 = v14;
  }

  v12.receiver = self;
  v12.super_class = CMContinuityCaptureRemoteAudioDevice;
  [(CMContinuityCaptureDeviceBase *)&v12 dispatchFrame:frame entity:[(CMContinuityCaptureDeviceBase *)self entity] completion:&__block_literal_global_5];
  completionCopy[2](completionCopy, v11);
}

- (id)newAudioStreamCurrentConfiguration:(int64_t)configuration
{
  transportStream = [(CMContinuityCaptureDeviceBase *)self transportStream];
  compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  v7 = compositeDelegate;
  if (compositeDelegate)
  {
    server = [compositeDelegate server];
    v9 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v44 = 2080;
      v45 = "[CMContinuityCaptureRemoteAudioDevice newAudioStreamCurrentConfiguration:]";
      _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    if (transportStream && server)
    {
      activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      sessionID = [activeConfiguration sessionID];
      v10 = [transportStream cipherKeyforSessionID:sessionID];

      if (v10)
      {
        avcStreamNegotiator = [(CMContinuityCaptureDeviceBase *)self avcStreamNegotiator];
        v52 = 0;
        v12 = [avcStreamNegotiator generateMediaStreamConfigurationWithError:&v52];
        v11 = v52;

        if (v12)
        {
          [v12 setRtcpSendInterval:1.0];
          [v12 setRtcpTimeOutEnabled:1];
          currentTransport = [server currentTransport];
          v17 = 12.0;
          if (currentTransport == 2)
          {
            v17 = 8.0;
          }

          [v12 setRtcpTimeOutInterval:v17];
          [v12 setSRTPCipherSuite:5];
          [v12 setSRTCPCipherSuite:5];
          [v12 setSendMediaKey:v10];
          [v12 setReceiveMediaKey:v10];
          [v12 setStreamInputID:configuration];
          timeSyncClock = [server timeSyncClock];

          if (timeSyncClock)
          {
            timeSyncClock2 = [server timeSyncClock];
            [v12 setNetworkClockID:{objc_msgSend(timeSyncClock2, "clockIdentifier")}];
          }

          activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
          audioDeviceMode = [activeConfiguration2 audioDeviceMode];

          if (audioDeviceMode == 1684434036 || audioDeviceMode == 1667329132)
          {
            [v12 setJitterBufferMode:2];
            [v12 setFixedJitterBufferSize:20];
            activeConfiguration3 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
            [activeConfiguration3 audioBlockSize];
            v24 = (v23 * 1000.0);
            audio = [v12 audio];
            [audio setPtime:v24];

            activeConfiguration4 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
            LODWORD(v24) = [activeConfiguration4 audioDeviceMode];

            if (v24 == 1667329132)
            {
              audio2 = [v12 audio];
              [audio2 setCodecType:16];

              audio3 = [v12 audio];
              [audio3 setChannelCount:4];
            }
          }

          v29 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            compositeDelegate2 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
            currentSessionID = [compositeDelegate2 currentSessionID];
            v30 = v11;
            networkClockID = [v12 networkClockID];
            v32 = v10;
            v33 = server;
            v34 = v7;
            v35 = transportStream;
            localSSRC = [v12 localSSRC];
            remoteSSRC = [v12 remoteSSRC];
            *buf = 138413314;
            selfCopy2 = self;
            v44 = 2048;
            v45 = currentSessionID;
            v46 = 2048;
            v47 = networkClockID;
            v11 = v30;
            v48 = 1024;
            v49 = localSSRC;
            transportStream = v35;
            v7 = v34;
            server = v33;
            v10 = v32;
            v50 = 1024;
            v51 = remoteSSRC;
            _os_log_impl(&dword_242545000, v29, OS_LOG_TYPE_DEFAULT, "%@ [sessionID:%llx] networkClockID %llu localSSRC %x remoteSSRC %x", buf, 0x2Cu);
          }
        }

        else
        {
          v29 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            [CMContinuityCaptureRemoteAudioDevice newAudioStreamCurrentConfiguration:];
          }

          v12 = 0;
        }
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }
    }

    v38 = v12;
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (void)stopCaptureStack:(unint64_t)stack completion:(id)completion
{
  completionCopy = completion;
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_stopCompletionBlock)
  {
    v8 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v27 = 2080;
      v28 = "[CMContinuityCaptureRemoteAudioDevice stopCaptureStack:completion:]";
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %s already in progress", buf, 0x16u);
    }

    if ((stack & 4) != 0)
    {
      avcAudioStream = self->_avcAudioStream;
      self->_avcAudioStream = 0;

      v10 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ clear AVCAudio reference", buf, 0xCu);
      }
    }

    if (completionCopy)
    {
      v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:3 userInfo:0];
      completionCopy[2](completionCopy, v11);
    }
  }

  else
  {
    if (self->_avcStreamInputActive)
    {
      v12 = MEMORY[0x245D12020](completionCopy);
      stopCompletionBlock = self->_stopCompletionBlock;
      self->_stopCompletionBlock = v12;

      objc_initWeak(buf, self);
      v14 = dispatch_time(0, 5000000000);
      queue2 = [(CMContinuityCaptureDeviceBase *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__CMContinuityCaptureRemoteAudioDevice_stopCaptureStack_completion___block_invoke;
      block[3] = &unk_278D5C080;
      objc_copyWeak(&v24, buf);
      dispatch_after(v14, queue2, block);

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }

    stopAVConferenceStack = [(CMContinuityCaptureRemoteAudioDevice *)self stopAVConferenceStack];
    [(CMContinuityCaptureRemoteAudioDevice *)self stopCameraCaptureStack:stack];
    if ((stack & 4) != 0)
    {
      v17 = self->_avcAudioStream;
      if (v17)
      {
        [(AVCAudioStream *)v17 stop];
      }

      avcStreamInput = self->_avcStreamInput;
      self->_avcStreamInput = 0;

      v19 = self->_avcAudioStream;
      self->_avcAudioStream = 0;

      self->_avcStreamInputActive = 0;
      v20 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ clear AVCAudio reference", buf, 0xCu);
      }
    }

    v22.receiver = self;
    v22.super_class = CMContinuityCaptureRemoteAudioDevice;
    [(CMContinuityCaptureDeviceBase *)&v22 stopCaptureStack:stack completion:&__block_literal_global_15];
    if (!stopAVConferenceStack || !self->_avcStreamInputActive)
    {
      v21 = self->_stopCompletionBlock;
      self->_stopCompletionBlock = 0;

      completionCopy[2](completionCopy, 0);
    }
  }
}

uint64_t __68__CMContinuityCaptureRemoteAudioDevice_stopCaptureStack_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[46];
    if (v3)
    {
      v6 = v2;
      (*(v3 + 16))(v3, 0);
      v4 = v6[46];
      v6[46] = 0;
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)invalidate
{
  v2.receiver = self;
  v2.super_class = CMContinuityCaptureRemoteAudioDevice;
  [(CMContinuityCaptureDeviceBase *)&v2 invalidate];
  [CMContinuityCaptureRemoteCompositeDevice setWombatMode:0];
}

- (BOOL)startCameraCaptureStack:(unint64_t)stack
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  v7 = compositeDelegate;
  if (compositeDelegate)
  {
    server = [compositeDelegate server];
    if (self->_captureStackActive || [(CMContinuityCaptureDeviceBase *)self invalidated])
    {
      v34 = 0;
      goto LABEL_32;
    }

    v9 = objc_opt_new();
    cameraCaptureStreamSessionID = self->_cameraCaptureStreamSessionID;
    self->_cameraCaptureStreamSessionID = v9;

    v11 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      compositeDelegate2 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
      currentSessionID = [compositeDelegate2 currentSessionID];
      v14 = self->_cameraCaptureStreamSessionID;
      *buf = 138544386;
      selfCopy4 = self;
      v53 = 2048;
      v54 = currentSessionID;
      v55 = 2080;
      v56 = "[CMContinuityCaptureRemoteAudioDevice startCameraCaptureStack:]";
      v57 = 1024;
      stackCopy = stack;
      v59 = 2114;
      v60 = v14;
      _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] %s option:%d streamSessionID:%{public}@", buf, 0x30u);
    }

    v15 = +[CMContinuityCaptureMSNExceptionMonitor sharedMonitor];
    [v15 incrementExceptionCountForEntity:{-[CMContinuityCaptureDeviceBase entity](self, "entity")}];

    captureSession = [(CMContinuityCaptureRemoteAudioDevice *)self captureSession];
    [captureSession willConfigure];

    if (self->_audioDevice || ([MEMORY[0x277CE5AC8] defaultDeviceWithMediaType:*MEMORY[0x277CE5E48]], v17 = objc_claimAutoreleasedReturnValue(), v18 = self->_audioDevice, self->_audioDevice = v17, v18, self->_audioDevice))
    {
      timeSyncClock = [server timeSyncClock];
      clockDeviceUID = [timeSyncClock clockDeviceUID];
      [(AVCaptureDevice *)self->_audioDevice setClientAudioClockDeviceUID:clockDeviceUID];

      v21 = MEMORY[0x277CCABB0];
      activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      [activeConfiguration audioBlockSize];
      v23 = [v21 numberWithDouble:?];
      [(AVCaptureDevice *)self->_audioDevice setPreferredIOBufferDuration:v23];

      audioDevice = self->_audioDevice;
      v50 = 0;
      v25 = [MEMORY[0x277CE5AD8] deviceInputWithDevice:audioDevice error:&v50];
      v26 = v50;
      audioDeviceInput = self->_audioDeviceInput;
      self->_audioDeviceInput = v25;

      if (self->_audioDeviceInput)
      {
        activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        audioDeviceMode = [activeConfiguration2 audioDeviceMode];

        v30 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:audioDeviceMode];
          *buf = 138543618;
          selfCopy4 = self;
          v53 = 2112;
          v54 = v31;
          _os_log_impl(&dword_242545000, v30, OS_LOG_TYPE_DEFAULT, " %{public}@ got mode %@", buf, 0x16u);
        }

        switch(audioDeviceMode)
        {
          case 0x63616C6C:
            v33 = 5;
            goto LABEL_25;
          case 0x766F616D:
            v33 = 7;
            goto LABEL_25;
          case 0x64666C74:
            v32 = CMContinuityCaptureDevicePosition();
            if (v32)
            {
              if (v32 != 1)
              {
                if (v32 == 2)
                {
                  v33 = 4;
LABEL_25:
                  [(AVCaptureDeviceInput *)self->_audioDeviceInput setAudioCaptureMode:v33];
                  break;
                }

                break;
              }
            }

            else
            {
              v35 = CMContinuityCaptureLog(2);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                [CMContinuityCaptureRemoteAudioDevice startCameraCaptureStack:];
              }
            }

            v33 = 3;
            goto LABEL_25;
        }

        v36 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = self->_audioDeviceInput;
          *buf = 138543618;
          selfCopy4 = self;
          v53 = 2112;
          v54 = v37;
          _os_log_impl(&dword_242545000, v36, OS_LOG_TYPE_DEFAULT, " %{public}@ input %@", buf, 0x16u);
        }

        v38 = objc_alloc_init(MEMORY[0x277CE5AA0]);
        audioDataOutput = self->_audioDataOutput;
        self->_audioDataOutput = v38;

        v40 = self->_audioDataOutput;
        queue2 = [(CMContinuityCaptureDeviceBase *)self queue];
        [(AVCaptureAudioDataOutput *)v40 setSampleBufferDelegate:self queue:queue2];

        captureSession2 = [(CMContinuityCaptureRemoteAudioDevice *)self captureSession];
        [captureSession2 configureSessionWithInput:self->_audioDeviceInput andOutput:self->_audioDataOutput];

        captureSession3 = [(CMContinuityCaptureRemoteAudioDevice *)self captureSession];
        [captureSession3 didConfigure];

        self->_audioBufferOutputCounter = 0;
        self->_audioBufferDropCounter = 0;
        self->_audioSampleRate = 0.0;
        self->_audioBytesPerSample = 0;
        [(CMContinuityCaptureRemoteAudioDevice *)self _resetNetworkSampleTime];
        captureSession4 = [(CMContinuityCaptureRemoteAudioDevice *)self captureSession];
        [captureSession4 start];

        v45 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          captureSession5 = [(CMContinuityCaptureRemoteAudioDevice *)self captureSession];
          state = [captureSession5 state];
          *buf = 138543618;
          selfCopy4 = self;
          v53 = 1024;
          LODWORD(v54) = state;
          _os_log_impl(&dword_242545000, v45, OS_LOG_TYPE_DEFAULT, " %{public}@ state %d", buf, 0x12u);
        }

        self->_captureStackActive = 1;
        v49.receiver = self;
        v49.super_class = CMContinuityCaptureRemoteAudioDevice;
        v34 = [(CMContinuityCaptureDeviceBase *)&v49 startCameraCaptureStack:stack];
        goto LABEL_31;
      }

      [CMContinuityCaptureRemoteAudioDevice startCameraCaptureStack:];
    }

    else
    {
      v26 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureRemoteAudioDevice startCameraCaptureStack:];
      }
    }

    v34 = 0;
LABEL_31:

LABEL_32:
    goto LABEL_33;
  }

  v34 = 0;
LABEL_33:

  return v34;
}

- (void)handleSynchronizeAudioClockCompletion
{
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__CMContinuityCaptureRemoteAudioDevice_handleSynchronizeAudioClockCompletion__block_invoke;
  v4[3] = &unk_278D5C080;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __77__CMContinuityCaptureRemoteAudioDevice_handleSynchronizeAudioClockCompletion__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 32));
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Got SynchronizeAudioClockCompletion message", &v5, 0xCu);
    }

    WeakRetained[320] = 1;
  }
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  v7 = [(CMContinuityCaptureDeviceBase *)self queue:output];
  dispatch_assert_queue_V2(v7);

  ++self->_audioBufferOutputCounter;
  if (self->_avcStreamInputActive)
  {

    [(CMContinuityCaptureRemoteAudioDevice *)self _processIncomingAudioBuffer:buffer];
  }
}

- (void)captureOutput:(id)output didDropSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  ++self->_audioBufferDropCounter;
  v6 = [(CMContinuityCaptureDeviceBase *)self queue:output];
  dispatch_assert_queue_V2(v6);

  if ([(CMContinuityCaptureRemoteAudioDevice *)self _shouldPrintDroppedSampleBufferLog:self->_audioBufferDropCounter])
  {
    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteAudioDevice captureOutput:&self->_audioBufferDropCounter didDropSampleBuffer:? fromConnection:?];
    }
  }
}

- (void)_processIncomingAudioBuffer:(opaqueCMSampleBuffer *)buffer
{
  totalLengthOut = 0;
  dataPointerOut = 0;
  desc = CMSampleBufferGetFormatDescription(buffer);
  if (!self->_audioBytesPerSample || self->_audioSampleRate == 0.0)
  {
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(desc);
    mBytesPerFrame = StreamBasicDescription->mBytesPerFrame;
    self->_audioBytesPerSample = mBytesPerFrame;
    if ((StreamBasicDescription->mFormatFlags & 0x20) != 0)
    {
      self->_audioBytesPerSample = StreamBasicDescription->mChannelsPerFrame * mBytesPerFrame;
    }

    self->_audioSampleRate = StreamBasicDescription->mSampleRate;
    activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    [activeConfiguration audioBlockSize];
    self->_requiredAudioSampleCountPerBuffer = (v8 * self->_audioSampleRate);

    if (!self->_audioBytesPerSample)
    {
      goto LABEL_25;
    }
  }

  if (self->_audioSampleRate == 0.0)
  {
LABEL_25:
    v31 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      audioSampleRate = self->_audioSampleRate;
      audioBytesPerSample = self->_audioBytesPerSample;
      LODWORD(v38.value) = 134218240;
      *(&v38.value + 4) = audioSampleRate;
      LOWORD(v38.flags) = 1024;
      *(&v38.flags + 2) = audioBytesPerSample;
      _os_log_error_impl(&dword_242545000, v31, OS_LOG_TYPE_ERROR, "Trying to process audio buffer but couldn't retrieve valid audioSampleRate %f and audioBytesPerSample %d", &v38, 0x12u);
    }
  }

  else
  {
    DataBuffer = CMSampleBufferGetDataBuffer(buffer);
    if (CMBlockBufferGetDataPointer(DataBuffer, 0, 0, &totalLengthOut, &dataPointerOut))
    {
      [CMContinuityCaptureRemoteAudioDevice _processIncomingAudioBuffer:];
    }

    else
    {
      v10 = [(NSData *)self->_remainingAudioDataFromPreviousSbuf length];
      v11 = self->_audioBytesPerSample;
      v12 = v10 / v11;
      v13 = totalLengthOut / v11 + v10 / v11;
      if (v10 < v11 && v13 == self->_requiredAudioSampleCountPerBuffer)
      {
LABEL_15:
        [(CMContinuityCaptureRemoteAudioDevice *)self _dispatchAudioFrame:buffer];
        return;
      }

      if (self->_disableBufferBlockSizeCheck || (-[CMContinuityCaptureDeviceBase activeConfiguration](self, "activeConfiguration"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 audioDeviceMode], v14, v15 == 1667329132))
      {
        v16 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [CMContinuityCaptureRemoteAudioDevice _processIncomingAudioBuffer:];
        }

        goto LABEL_15;
      }

      v34 = [MEMORY[0x277CBEB28] dataWithData:self->_remainingAudioDataFromPreviousSbuf];
      [v34 appendBytes:dataPointerOut length:totalLengthOut];
      requiredAudioSampleCountPerBuffer = self->_requiredAudioSampleCountPerBuffer;
      v18 = v13 / requiredAudioSampleCountPerBuffer;
      CMSampleBufferGetPresentationTimeStamp(&lhs, buffer);
      CMTimeMake(&rhs, v12, self->_audioSampleRate);
      CMTimeSubtract(&v38, &lhs, &rhs);
      if (v13 >= requiredAudioSampleCountPerBuffer)
      {
        v19 = 0;
        value = v38.value;
        v21 = *&v38.timescale;
        epoch = v38.epoch;
        do
        {
          v23 = self->_requiredAudioSampleCountPerBuffer;
          memset(&v38, 170, sizeof(v38));
          CMTimeMake(&lhs, v23 * v19, self->_audioSampleRate);
          rhs.value = value;
          *&rhs.timescale = v21;
          rhs.epoch = epoch;
          CMTimeAdd(&v38, &rhs, &lhs);
          v24 = self->_audioBytesPerSample * self->_requiredAudioSampleCountPerBuffer;
          lhs = v38;
          desc = [(CMContinuityCaptureRemoteAudioDevice *)self _createSampleBufferForAudioData:v34 dataRange:(v24 * v19) pts:v24 formatDescription:&lhs, desc];
          if (desc)
          {
            v26 = desc;
            [(CMContinuityCaptureRemoteAudioDevice *)self _dispatchAudioFrame:desc];
            CFRelease(v26);
          }

          ++v19;
        }

        while (v18 > v19);
      }

      v27 = v18 * self->_requiredAudioSampleCountPerBuffer * self->_audioBytesPerSample;
      v28 = [v34 length];
      if (v28 == v27)
      {
        remainingAudioDataFromPreviousSbuf = self->_remainingAudioDataFromPreviousSbuf;
        self->_remainingAudioDataFromPreviousSbuf = 0;
      }

      else
      {
        v30 = [MEMORY[0x277CBEA90] dataWithBytes:objc_msgSend(v34 length:{"bytes") + v27, v28 - v27}];
        remainingAudioDataFromPreviousSbuf = self->_remainingAudioDataFromPreviousSbuf;
        self->_remainingAudioDataFromPreviousSbuf = v30;
      }
    }
  }
}

- (opaqueCMSampleBuffer)_createSampleBufferForAudioData:(id)data dataRange:(_NSRange)range pts:(id *)pts formatDescription:(opaqueCMFormatDescription *)description
{
  length = range.length;
  location = range.location;
  dataCopy = data;
  blockBufferOut = 0;
  v28 = 0;
  dataPointerOut = 0xAAAAAAAAAAAAAAAALL;
  v25.decodeTimeStamp.epoch = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v25.presentationTimeStamp.timescale = v12;
  *&v25.decodeTimeStamp.value = v12;
  *&v25.duration.value = v12;
  *&v25.duration.epoch = v12;
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(description);
  sampleSizeArray = StreamBasicDescription->mBytesPerFrame;
  v14 = length / sampleSizeArray;
  requiredAudioSampleCountPerBuffer = self->_requiredAudioSampleCountPerBuffer;
  v16 = length / sampleSizeArray == requiredAudioSampleCountPerBuffer;
  if (length / sampleSizeArray == requiredAudioSampleCountPerBuffer)
  {
    p_mSampleRate = &StreamBasicDescription->mSampleRate;
    v18 = *MEMORY[0x277CBECE8];
    if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], 0, length, *MEMORY[0x277CBECE8], 0, 0, length, 1u, &blockBufferOut))
    {
      v22 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureRemoteAudioDevice _createSampleBufferForAudioData:dataRange:pts:formatDescription:];
      }
    }

    else if (CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &dataPointerOut))
    {
      v22 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureRemoteAudioDevice _createSampleBufferForAudioData:dataRange:pts:formatDescription:];
      }
    }

    else
    {
      memcpy(dataPointerOut, ([dataCopy bytes] + location), length);
      CMTimeMake(&v25.duration, 1, *p_mSampleRate);
      v25.presentationTimeStamp = *pts;
      v25.decodeTimeStamp = **&MEMORY[0x277CC0898];
      if (!CMSampleBufferCreate(v18, blockBufferOut, 1u, 0, 0, description, v14, 1, &v25, 1, &sampleSizeArray, &v28))
      {
        v16 = 0;
        goto LABEL_7;
      }

      v22 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureRemoteAudioDevice _createSampleBufferForAudioData:dataRange:pts:formatDescription:];
      }
    }
  }

  else
  {
    v22 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureRemoteAudioDevice _createSampleBufferForAudioData:v14 dataRange:&self->_requiredAudioSampleCountPerBuffer pts:? formatDescription:?];
    }
  }

LABEL_7:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  v19 = v28;
  if (v28)
  {
    v20 = v16;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    CFRelease(v28);
    v19 = 0;
  }

  return v19;
}

- (void)_resetNetworkSampleTime
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2080;
    v9 = "[CMContinuityCaptureRemoteAudioDevice _resetNetworkSampleTime]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v6, 0x16u);
  }

  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  self->_audioClockIsSynchronized = 0;
  self->_networkAudioSampleTime = 0;
  self->_lastAudioSynchronizationNetworkSampleTime = 0;
  remainingAudioDataFromPreviousSbuf = self->_remainingAudioDataFromPreviousSbuf;
  self->_remainingAudioDataFromPreviousSbuf = 0;
}

- (void)_dispatchAudioFrame:(opaqueCMSampleBuffer *)frame
{
  objc_initWeak(&location, self);
  NumSamples = CMSampleBufferGetNumSamples(frame);
  entity = [(CMContinuityCaptureDeviceBase *)self entity];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__CMContinuityCaptureRemoteAudioDevice__dispatchAudioFrame___block_invoke;
  v7[3] = &unk_278D5D7F8;
  objc_copyWeak(v8, &location);
  v7[4] = self;
  v8[1] = frame;
  v8[2] = NumSamples;
  [(CMContinuityCaptureRemoteAudioDevice *)self dispatchFrame:frame entity:entity completion:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __60__CMContinuityCaptureRemoteAudioDevice__dispatchAudioFrame___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    dispatch_assert_queue_V2(v6);

    v7 = [*(a1 + 32) compositeDelegate];
    v8 = v7;
    if (!v7)
    {
LABEL_23:

      goto LABEL_24;
    }

    v9 = [v7 server];
    v10 = v9;
    if (!v3)
    {
      v14 = *(v5 + 328);
      if ((*(v5 + 320) & 1) == 0 && (!v14 || (v14 - *(v5 + 336)) / *(v5 + 296) > 0.05))
      {
        v15 = [v9 timeSyncClock];

        v14 = *(v5 + 328);
        if (v15)
        {
          *(v5 + 336) = v14;
          HostTimeClock = CMClockGetHostTimeClock();
          v17 = [v5 captureSession];
          v18 = [v17 synchronizationClock];

          memset(&v42, 170, sizeof(v42));
          CMSampleBufferGetPresentationTimeStamp(&v42, *(a1 + 48));
          memset(&v41, 170, sizeof(v41));
          time = v42;
          CMSyncConvertTime(&v41, &time, v18, HostTimeClock);
          v19 = [v10 timeSyncClock];
          time = v41;
          v20 = [v19 domainTimeForMachAbsoluteTime:CMClockConvertHostTimeToSystemUnits(&time)];

          v21 = [v10 timeSyncClock];
          v22 = [v21 grandMasterIdentifier];

          v23 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            time = v42;
            Seconds = CMTimeGetSeconds(&time);
            time = v41;
            v25 = CMTimeGetSeconds(&time);
            time = v41;
            v31 = CMClockConvertHostTimeToSystemUnits(&time);
            [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v20];
            v26 = v32 = v22;
            CMTimeMake(&time, v20, 1000000000);
            v27 = CMTimeGetSeconds(&time);
            v28 = *MEMORY[0x277D714E8];
            v29 = v20 != *MEMORY[0x277D714E8];
            LODWORD(time.value) = 134219266;
            *(&time.value + 4) = Seconds;
            LOWORD(time.flags) = 2048;
            *(&time.flags + 2) = v25;
            HIWORD(time.epoch) = 2048;
            v34 = v31;
            v35 = 2112;
            v36 = v26;
            v37 = 2048;
            v38 = v27;
            v39 = 1024;
            v40 = v29;
            _os_log_impl(&dword_242545000, v23, OS_LOG_TYPE_DEFAULT, "Converted audio PTS %.4f to host time PTS %.4f, mach_absolute_time %llu networkTime %@ %.5f valid %d", &time, 0x3Au);

            v22 = v32;
          }

          else
          {
            v28 = *MEMORY[0x277D714E8];
          }

          if (v20 != v28)
          {
            v30 = [v5 transportDevice];
            [v30 synchronizeAudioClockWithSampleTime:*(v5 + 328) networkTime:v20 clockGrandMasterIdentifier:v22];
          }

          v14 = *(v5 + 328);
        }
      }

      *(v5 + 328) = v14 + *(a1 + 56);
      goto LABEL_22;
    }

    v11 = [v3 domain];
    v12 = [v11 isEqualToString:@"ContinuityCapture"];

    if (v12)
    {
      v13 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __60__CMContinuityCaptureRemoteAudioDevice__dispatchAudioFrame___block_invoke_cold_2(v5);
      }
    }

    else
    {
      *(v5 + 320) = 0;
      if (!CMContinityCaptureDebugLogEnabled())
      {
LABEL_22:

        goto LABEL_23;
      }

      v13 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __60__CMContinuityCaptureRemoteAudioDevice__dispatchAudioFrame___block_invoke_cold_1();
      }
    }

    goto LABEL_22;
  }

LABEL_24:
}

- (void)postActionOfType:(unint64_t)type forEvent:(id)event option:(unint64_t)option
{
  eventCopy = event;
  v9 = eventCopy;
  if (type == 3)
  {
    name = [eventCopy name];
    v11 = [name isEqualToString:@"kCMContinuityCaptureEventStreamInterrupted"];

    if (v11)
    {
      [(CMContinuityCaptureDeviceBase *)&v14 postActionOfType:13 forEvent:v9 option:option, v12.receiver, v12.super_class, v13.receiver, v13.super_class, self, CMContinuityCaptureRemoteAudioDevice];
    }

    else
    {
      [(CMContinuityCaptureDeviceBase *)&v13 postActionOfType:12 forEvent:v9 option:option, v12.receiver, v12.super_class, self, CMContinuityCaptureRemoteAudioDevice, v14.receiver, v14.super_class];
    }
  }

  else
  {
    [(CMContinuityCaptureDeviceBase *)&v12 postActionOfType:type forEvent:eventCopy option:option, self, CMContinuityCaptureRemoteAudioDevice, v13.receiver, v13.super_class, v14.receiver, v14.super_class];
  }
}

- (void)postActionCompletionForEventName:(id)name eventData:(id)data error:(id)error
{
  nameCopy = name;
  dataCopy = data;
  errorCopy = error;
  v11 = CMContinuityCaptureRemoteEventToBeRelayedList();
  v12 = CMContinuityCaptureRemoteEventToBeRelayedListEvenWhenDropped();
  if ([v11 containsObject:nameCopy] && (!errorCopy || objc_msgSend(errorCopy, "code") != 1 && (objc_msgSend(errorCopy, "code") != 2 || objc_msgSend(v12, "containsObject:", nameCopy))))
  {
    transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    [transportDevice postEvent:nameCopy entity:-[CMContinuityCaptureDeviceBase entity](self data:{"entity"), dataCopy}];
  }

  v14.receiver = self;
  v14.super_class = CMContinuityCaptureRemoteAudioDevice;
  [(CMContinuityCaptureDeviceBase *)&v14 postActionCompletionForEventName:nameCopy eventData:dataCopy error:errorCopy];
}

- (id)createAVCAudioStream
{
  transportStream = [(CMContinuityCaptureDeviceBase *)self transportStream];
  compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  server = [compositeDelegate server];

  if (!transportStream)
  {
    dictionary = 0;
    streamUUID = 0;
LABEL_19:
    v16 = 0;
    v17 = 0;
    goto LABEL_16;
  }

  streamUUID = [transportStream streamUUID];
  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    compositeDelegate2 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
    [compositeDelegate2 currentSessionID];
    OUTLINED_FUNCTION_31();
    v27 = 2112;
    v28 = streamUUID;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] createAVCAudioStream StreamUUID %@", buf, 0x20u);
  }

  if (!streamUUID)
  {
    dictionary = 0;
    goto LABEL_19;
  }

  avcStreamNegotiator = [(CMContinuityCaptureDeviceBase *)self avcStreamNegotiator];

  if (!avcStreamNegotiator)
  {
    v12 = 0;
LABEL_9:
    v14 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_40();
      v26 = v12;
      _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Invalid avcStreamInitOptions, error %@", buf, 0x16u);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v12 = 0;
    goto LABEL_12;
  }

  avcStreamNegotiator2 = [(CMContinuityCaptureDeviceBase *)self avcStreamNegotiator];
  v24 = 0;
  v11 = [avcStreamNegotiator2 generateMediaStreamInitOptionsWithError:&v24];
  v12 = v24;
  dictionary = [v11 mutableCopy];

  if (!dictionary)
  {
    goto LABEL_9;
  }

LABEL_12:
  sessionUUID = [server sessionUUID];
  [dictionary setObject:sessionUUID forKeyedSubscript:*MEMORY[0x277CE57D8]];

  v23 = v12;
  v16 = [objc_alloc(MEMORY[0x277CE56E8]) initWithRTPNWConnectionClientID:streamUUID rtcpNWConnectionClientID:0 options:dictionary error:&v23];
  v17 = v23;

  if (v16)
  {
    [v16 setDelegate:self];
    v18 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      compositeDelegate3 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
      [compositeDelegate3 currentSessionID];
      OUTLINED_FUNCTION_31();
      v27 = v20;
      v28 = v16;
      _os_log_impl(&dword_242545000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] createAVCAudioStream %p success", buf, 0x20u);
    }
  }

  else
  {
    v18 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_40();
      v26 = v17;
      _os_log_error_impl(&dword_242545000, v18, OS_LOG_TYPE_ERROR, "%{public}@ AVCAudioStream create error %@", buf, 0x16u);
    }

    v16 = 0;
  }

LABEL_16:
  v21 = v16;

  return v16;
}

- (BOOL)startAVConferenceStack:(unint64_t)stack
{
  formatDescriptionOut = 0;
  OUTLINED_FUNCTION_8_2(&ContinuityCaptureDefaultModeInputASBD);
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_13();
    v51 = 2080;
    v52 = "[CMContinuityCaptureRemoteAudioDevice startAVConferenceStack:]";
    OUTLINED_FUNCTION_10_2();
    _os_log_impl(v6, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 0x16u);
  }

  stopCompletionBlock = self->_stopCompletionBlock;
  self->_stopCompletionBlock = 0;

  self->_avcStreamInputActive = 0;
  if (!self->_avcAudioStream)
  {
    createAVCAudioStream = [(CMContinuityCaptureRemoteAudioDevice *)self createAVCAudioStream];
    avcAudioStream = self->_avcAudioStream;
    self->_avcAudioStream = createAVCAudioStream;

    if (!self->_avcAudioStream)
    {
      v29 = 0;
      goto LABEL_19;
    }
  }

  activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  audioDeviceMode = [activeConfiguration audioDeviceMode];

  if (audioDeviceMode == 1667329132)
  {
    OUTLINED_FUNCTION_8_2(&ContinuityCaptureTelephonyModeInputASBD);
  }

  v15 = CMAudioFormatDescriptionCreate(*MEMORY[0x277CBECE8], &asbd, 0, 0, 0, 0, 0, &formatDescriptionOut);
  v16 = formatDescriptionOut;
  v17 = CMContinuityCaptureLog(2);
  v18 = v17;
  if (!v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_13();
      v51 = 1024;
      LODWORD(v52) = v15;
      OUTLINED_FUNCTION_10_2();
      _os_log_error_impl(v39, v40, OS_LOG_TYPE_ERROR, v41, v42, 0x12u);
    }

    v35 = 0;
    goto LABEL_29;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = self->_avcAudioStream;
    OUTLINED_FUNCTION_13();
    v51 = 2048;
    v52 = v20;
    v53 = 2112;
    v54 = v21;
    OUTLINED_FUNCTION_10_2();
    _os_log_impl(v22, v23, OS_LOG_TYPE_DEFAULT, v24, v25, 0x20u);
  }

  [(CMContinuityCaptureRemoteAudioDevice *)self _resetNetworkSampleTime];
  v26 = objc_alloc(MEMORY[0x277CE5748]);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  v49 = 0;
  v28 = [v26 initWithDelegate:self delegateQueue:queue format:formatDescriptionOut options:0 error:&v49];
  v29 = v49;
  avcStreamInput = self->_avcStreamInput;
  self->_avcStreamInput = v28;

  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  v31 = self->_avcStreamInput;
  if (!v31)
  {
    v18 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_13();
      v51 = 2112;
      v52 = v29;
      OUTLINED_FUNCTION_10_2();
      _os_log_error_impl(v43, v44, OS_LOG_TYPE_ERROR, v45, v46, 0x16u);
    }

    v36 = 0;
    v35 = v29;
    goto LABEL_16;
  }

  v32 = [(CMContinuityCaptureRemoteAudioDevice *)self newAudioStreamCurrentConfiguration:[(AVCStreamInput *)v31 streamInputID]];
  if (!v32)
  {
LABEL_19:
    v36 = 0;
    goto LABEL_17;
  }

  v18 = v32;
  v33 = self->_avcAudioStream;
  v48 = v29;
  v34 = [(AVCAudioStream *)v33 configure:v18 error:&v48];
  v35 = v48;

  if ((v34 & 1) == 0)
  {
    v38 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_13();
      v51 = 2112;
      v52 = v35;
      _os_log_error_impl(&dword_242545000, v38, OS_LOG_TYPE_ERROR, "%{public}@ AVCAudioStream configure error %@", buf, 0x16u);
    }

LABEL_29:
    v36 = 0;
    goto LABEL_16;
  }

  [(AVCAudioStream *)self->_avcAudioStream start];
  v36 = 1;
LABEL_16:

  v29 = v35;
LABEL_17:
  v47.receiver = self;
  v47.super_class = CMContinuityCaptureRemoteAudioDevice;
  [(CMContinuityCaptureDeviceBase *)&v47 startAVConferenceStack:stack];

  return v36;
}

- (BOOL)stopAVConferenceStack
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_3_3();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  if (self->_avcStreamInput && (avcAudioStream = self->_avcAudioStream) != 0)
  {
    [(AVCAudioStream *)avcAudioStream stop];
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  if (!self->_avcStreamInputActive)
  {
    avcStreamInput = self->_avcStreamInput;
    self->_avcStreamInput = 0;
  }

  return v10;
}

- (BOOL)stopCameraCaptureStack:(unint64_t)stack
{
  stackCopy = stack;
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
    *v30 = 138544130;
    *&v30[4] = self;
    *&v30[12] = 2048;
    *&v30[14] = [compositeDelegate currentSessionID];
    *&v30[22] = 2080;
    v31 = "[CMContinuityCaptureRemoteAudioDevice stopCameraCaptureStack:]";
    LOWORD(v33) = 1024;
    *(&v33 + 2) = stackCopy;
    OUTLINED_FUNCTION_3_3();
    _os_log_impl(v8, v9, v10, v11, v12, 0x26u);
  }

  if (self->_captureStackActive)
  {
    captureSession = [(CMContinuityCaptureRemoteAudioDevice *)self captureSession];
    [captureSession stop];

    captureSession2 = [(CMContinuityCaptureRemoteAudioDevice *)self captureSession];
    v14CaptureSession = [captureSession2 captureSession];

    captureSession3 = [(CMContinuityCaptureRemoteAudioDevice *)self captureSession];
    [captureSession3 willConfigure];

    if (self->_audioDataOutput)
    {
      [v14CaptureSession removeOutput:?];
    }

    if (self->_audioDeviceInput)
    {
      [v14CaptureSession removeInput:?];
    }

    v17 = [(CMContinuityCaptureRemoteAudioDevice *)self captureSession:*v30];
    [v17 didConfigure];

    audioDataOutput = self->_audioDataOutput;
    self->_audioDataOutput = 0;

    audioDeviceInput = self->_audioDeviceInput;
    self->_audioDeviceInput = 0;

    audioDevice = self->_audioDevice;
    self->_audioDevice = 0;

    self->_captureStackActive = 0;
  }

  v21 = [CMContinuityCaptureMSNExceptionMonitor sharedMonitor:*v30];
  [v21 decrementExceptionCountForEntity:{-[CMContinuityCaptureDeviceBase entity](self, "entity")}];

  v22 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    compositeDelegate2 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
    [compositeDelegate2 currentSessionID];
    cameraCaptureStreamSessionID = self->_cameraCaptureStreamSessionID;
    audioBufferDropCounter = self->_audioBufferDropCounter;
    OUTLINED_FUNCTION_3_3();
    _os_log_impl(v24, v25, v26, v27, v28, 0x2Au);
  }

  return 1;
}

- (void)dispatchFrame:entity:completion:.cold.2()
{
  v0 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }
}

- (void)newAudioStreamCurrentConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)startCameraCaptureStack:.cold.2()
{
  v0 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }
}

- (void)captureOutput:(uint64_t)a1 didDropSampleBuffer:(uint64_t *)a2 fromConnection:.cold.1(uint64_t a1, uint64_t *a2)
{
  v7 = *a2;
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_processIncomingAudioBuffer:.cold.1()
{
  v0 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  }
}

- (void)_createSampleBufferForAudioData:(uint64_t)a1 dataRange:(int *)a2 pts:formatDescription:.cold.1(uint64_t a1, int *a2)
{
  v7 = *a2;
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
}

void __60__CMContinuityCaptureRemoteAudioDevice__dispatchAudioFrame___block_invoke_cold_2(uint64_t a1)
{
  v6 = *(a1 + 280);
  OUTLINED_FUNCTION_6_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

@end