@interface CMContinuityCaptureVideoDevice
- (BOOL)startAVConferenceStack:(unint64_t)a3;
- (BOOL)stopAVConferenceStack;
- (CMContinuityCaptureVideoDevice)companionDevice;
- (CMContinuityCaptureVideoDevice)initWithCapabilities:(id)a3 compositeDelegate:(id)a4;
- (id)createAVCVideoStream;
- (id)newVideoStreamCurrentConfiguration;
- (opaqueCMSampleBuffer)_createStillImageDataBufferFromRequest:(id)a3 timestamp:(id *)a4;
- (opaqueCMSampleBuffer)createBlackSampleBuffer;
- (opaqueCMSampleBuffer)createBlurredSampleBuffer;
- (void)_didCaptureStillImage:(id)a3 entity:(int64_t)a4;
- (void)_observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)completeImageCaptureRequest:(id)a3;
- (void)dealloc;
- (void)didCaptureStillImage:(id)a3 entity:(int64_t)a4;
- (void)dispatchFrame:(opaqueCMSampleBuffer *)a3 entity:(int64_t)a4 completion:(id)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)postAVCStreamInterruption;
- (void)postActionCompletionForEventName:(id)a3 eventData:(id)a4 error:(id)a5;
- (void)postActionOfType:(unint64_t)a3 forEvent:(id)a4 option:(unint64_t)a5;
- (void)postEvent:(id)a3 entity:(int64_t)a4 data:(id)a5;
- (void)resetTransportDevice:(id)a3;
- (void)restartSendingInvalidFramesIfApplicable;
- (void)scheduleDeviceBusyNotification:(BOOL)a3;
- (void)scheduleResumeUserNotification:(BOOL)a3;
- (void)setValueForControl:(id)a3 completion:(id)a4;
- (void)startSendingInvalidFrames;
- (void)stateMachineEnqueueReactionEffect;
- (void)stateMachineImageCapture;
- (void)stateMachineStartSendingBlurredFrames;
- (void)stateMachineStopSendingBlurredFrames;
- (void)stopCaptureStack:(unint64_t)a3 completion:(id)a4;
- (void)stopSendingInvalidFrames;
- (void)stream:(id)a3 didStart:(BOOL)a4 error:(id)a5;
- (void)streamDidRTCPTimeOut:(id)a3;
- (void)streamDidRTPTimeOut:(id)a3;
- (void)streamDidServerDie:(id)a3;
- (void)streamDidStop:(id)a3;
- (void)streamOutput:(id)a3 didReceiveSampleBuffer:(opaqueCMSampleBuffer *)a4;
- (void)streamOutputDidBecomeInvalid:(id)a3;
- (void)streamOutputServerDidDie:(id)a3;
- (void)terminateComplete:(id)a3;
- (void)updateCameraHiddenControlIfApplicable;
@end

@implementation CMContinuityCaptureVideoDevice

- (void)dealloc
{
  lastDispatchedSampleBuffer = self->_lastDispatchedSampleBuffer;
  if (lastDispatchedSampleBuffer)
  {
    CFRelease(lastDispatchedSampleBuffer);
    self->_lastDispatchedSampleBuffer = 0;
  }

  blurredSampleBuffer = self->_blurredSampleBuffer;
  if (blurredSampleBuffer)
  {
    CFRelease(blurredSampleBuffer);
    self->_blurredSampleBuffer = 0;
  }

  blurredFrameDispatchTimer = self->_blurredFrameDispatchTimer;
  if (blurredFrameDispatchTimer)
  {
    dispatch_source_cancel(blurredFrameDispatchTimer);
    v6 = self->_blurredFrameDispatchTimer;
    self->_blurredFrameDispatchTimer = 0;
  }

  blackFrameDispatchTimer = self->_blackFrameDispatchTimer;
  if (blackFrameDispatchTimer)
  {
    dispatch_source_cancel(blackFrameDispatchTimer);
    v8 = self->_blackFrameDispatchTimer;
    self->_blackFrameDispatchTimer = 0;
  }

  blackFrameSampleBuffer = self->_blackFrameSampleBuffer;
  if (blackFrameSampleBuffer)
  {
    CFRelease(blackFrameSampleBuffer);
    self->_blackFrameSampleBuffer = 0;
  }

  v10.receiver = self;
  v10.super_class = CMContinuityCaptureVideoDevice;
  [(CMContinuityCaptureDeviceBase *)&v10 dealloc];
}

- (void)resetTransportDevice:(id)a3
{
  v4 = a3;
  v5 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(CMContinuityCaptureDeviceBase *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__CMContinuityCaptureVideoDevice_resetTransportDevice___block_invoke;
  v8[3] = &unk_278D5C008;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_async_and_wait(v6, v8);
}

void __55__CMContinuityCaptureVideoDevice_resetTransportDevice___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) transportDevice];
  LOBYTE(v2) = [v2 isEqual:v3];

  if ((v2 & 1) == 0)
  {
    [*(*(a1 + 40) + 272) resetTransportDevice:*(a1 + 32)];
    v4 = *(a1 + 32);
    v5.receiver = *(a1 + 40);
    v5.super_class = CMContinuityCaptureVideoDevice;
    objc_msgSendSuper2(&v5, sel_resetTransportDevice_, v4);
  }
}

- (void)updateCameraHiddenControlIfApplicable
{
  objc_initWeak(&location, self);
  v3 = [(CMContinuityCaptureDeviceBase *)self queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__CMContinuityCaptureVideoDevice_updateCameraHiddenControlIfApplicable__block_invoke;
  v4[3] = &unk_278D5C080;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __71__CMContinuityCaptureVideoDevice_updateCameraHiddenControlIfApplicable__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[34] _updateCameraHiddenControlIfApplicable];
    WeakRetained = v2;
  }
}

- (void)dispatchFrame:(opaqueCMSampleBuffer *)a3 entity:(int64_t)a4 completion:(id)a5
{
  v5 = a3;
  CFRetain(a3);
  v7 = MEMORY[0x277CC0898];
  memset(&v55, 170, sizeof(v55));
  CMSampleBufferGetPresentationTimeStamp(&v55, v5);
  v8 = CMGetAttachment(v5, *MEMORY[0x277CF3FC8], 0);
  v9 = [v8 objectForKeyedSubscript:@"NetworkTime"];
  v10 = [v8 objectForKeyedSubscript:@"NetworkTimeClockIdentity"];
  lastDispatchedSampleBuffer = self->_lastDispatchedSampleBuffer;
  if (lastDispatchedSampleBuffer)
  {
    CFRelease(lastDispatchedSampleBuffer);
  }

  value = *v7;
  flags = *(v7 + 12);
  timescale = *(v7 + 8);
  epoch = *(v7 + 16);
  self->_lastDispatchedSampleBuffer = v5;
  CFRetain(v5);
  blurredSampleBuffer = self->_blurredSampleBuffer;
  if (blurredSampleBuffer)
  {
    CFRelease(blurredSampleBuffer);
    self->_blurredSampleBuffer = 0;
  }

  v14 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  v15 = [v14 client];
  v16 = [v15 timeSyncClock];

  v17 = 0x27ECB3000;
  if (v16 && v9)
  {
    v18 = v8;
    v19 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
    v20 = [v19 client];
    [v20 timeSyncClock];
    v22 = v21 = v10;
    hostTime = [v22 machAbsoluteTimeForDomainTime:{objc_msgSend(v9, "unsignedLongLongValue")}];

    if (v21)
    {
      v23 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
      v24 = [v23 client];
      [v24 timeSyncClock];
      v26 = v25 = v9;
      v27 = [v26 grandMasterIdentifier];

      v9 = v25;
      v28 = v21;
      v29 = [v21 unsignedLongLongValue] == v27;
    }

    else
    {
      v28 = 0;
      v29 = 1;
    }

    v8 = v18;
    if (CMContinityCaptureDebugLogEnabled())
    {
      v30 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [CMContinuityCaptureVideoDevice dispatchFrame:entity:completion:];
      }
    }

    if (hostTime != *MEMORY[0x277D714E8] && v29)
    {
      CMClockMakeHostTimeFromSystemUnits(&time, hostTime);
      CMTimeConvertScale(&v53.duration, &time, 100000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      value = v53.duration.value;
      flags = v53.duration.flags;
      timescale = v53.duration.timescale;
      epoch = v53.duration.epoch;
    }

    if (self->_lastBufferNetworkTimeClockSynchronized != v29 && self->_numberOfFramesDispatched)
    {
      CMSetAttachment(v5, @"ContinuityCaptureTimeDiscontinuity", MEMORY[0x277CBEC38], 1u);
    }

    self->_lastBufferNetworkTimeClockSynchronized = v29;
    v10 = v28;
    v17 = 0x27ECB3000uLL;
  }

  v31 = flags & 1;
  if ((flags & 1) == 0 && v55.timescale > 100000)
  {
    time = v55;
    CMTimeConvertScale(&v53.duration, &time, 100000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    value = v53.duration.value;
    flags = v53.duration.flags;
    timescale = v53.duration.timescale;
    epoch = v53.duration.epoch;
    v31 = v53.duration.flags & 1;
  }

  if (v31)
  {
    sampleBufferOut = 0;
    v53.decodeTimeStamp.epoch = 0xAAAAAAAAAAAAAAAALL;
    *&v32 = 0xAAAAAAAAAAAAAAAALL;
    *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v53.presentationTimeStamp.timescale = v32;
    *&v53.decodeTimeStamp.value = v32;
    *&v53.duration.value = v32;
    *&v53.duration.epoch = v32;
    CMSampleBufferGetSampleTimingInfo(v5, 0, &v53);
    v53.presentationTimeStamp.value = value;
    v53.presentationTimeStamp.timescale = timescale;
    v53.presentationTimeStamp.flags = flags;
    v53.presentationTimeStamp.epoch = epoch;
    v33 = CFGetAllocator(v5);
    v34 = CMSampleBufferCreateCopyWithNewTiming(v33, v5, 1, &v53, &sampleBufferOut);
    if (v34 || !sampleBufferOut)
    {
      v37 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        time.value = value;
        time.timescale = timescale;
        time.flags = flags;
        time.epoch = epoch;
        Seconds = CMTimeGetSeconds(&time);
        time = v55;
        v43 = CMTimeGetSeconds(&time);
        LODWORD(time.value) = 138544130;
        *(&time.value + 4) = self;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = Seconds;
        HIWORD(time.epoch) = 2048;
        v50 = v43;
        v51 = 1024;
        v52 = v34;
        _os_log_error_impl(&dword_242545000, v37, OS_LOG_TYPE_ERROR, "%{public}@ Failed to create retimed video frame with PTS %.4f, falling back to unsynced PTS %.4f. err: %d", &time, 0x26u);
      }
    }

    else
    {
      CFRelease(v5);
      v5 = sampleBufferOut;
      v35 = *MEMORY[0x277CBECE8];
      time = v55;
      v36 = CMTimeCopyAsDictionary(&time, v35);
      CMSetAttachment(v5, *MEMORY[0x277CF3F80], v36, 1u);
      CFRelease(v36);
    }
  }

  memset(&v53, 170, 24);
  CMSampleBufferGetPresentationTimeStamp(&v53.duration, v5);
  v38 = [v8 objectForKeyedSubscript:@"CaptureSessionRestarted"];
  v39 = [v38 BOOLValue];

  if (v39)
  {
    CMSetAttachment(v5, @"ContinuityCaptureTimeDiscontinuity", MEMORY[0x277CBEC38], 1u);
    v40 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      time = v53.duration;
      v41 = CMTimeGetSeconds(&time);
      LODWORD(time.value) = 138543618;
      *(&time.value + 4) = self;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = v41;
      _os_log_impl(&dword_242545000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ marking time discontinuity on buffer %.4f because capture session just restarted on remote device", &time, 0x16u);
    }
  }

  if ([(CMContinuityCaptureDeviceBase *)self hasStreamIntent])
  {
    [(CMContinuityCaptureCMIOVideoDevice *)self->_cmioCaptureDevice dispatchFrame:v5 entity:[(CMContinuityCaptureDeviceBase *)self entity] completion:&__block_literal_global_173];
  }

  ++*(&self->super.super.isa + *(v17 + 1824));
  v48.receiver = self;
  v48.super_class = CMContinuityCaptureVideoDevice;
  [(CMContinuityCaptureDeviceBase *)&v48 dispatchFrame:v5 entity:[(CMContinuityCaptureDeviceBase *)self entity] completion:&__block_literal_global_175];
  CFRelease(v5);
}

- (void)streamOutput:(id)a3 didReceiveSampleBuffer:(opaqueCMSampleBuffer *)a4
{
  v6 = a3;
  v7 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v7);

  avcStreamOutput = self->_avcStreamOutput;
  if (avcStreamOutput)
  {
    v9 = avcStreamOutput == v6;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    if ([(CMContinuityCaptureDeviceBase *)self streaming])
    {
      [(CMContinuityCaptureDeviceBase *)self scheduleSendingInvalidFramesAfterTimeout:0];
      [(CMContinuityCaptureVideoDevice *)self stateMachineStopSendingBlurredFrames];
      [(CMContinuityCaptureVideoDevice *)self dispatchFrame:a4 entity:[(CMContinuityCaptureDeviceBase *)self entity] completion:&__block_literal_global_178];
      self->_failedBufferCountDueToMismatchState = 0;
      self->_canIssueStateMismatchEvent = 0;
      goto LABEL_8;
    }

    v10 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v20 = 138543362;
      v21 = self;
      v13 = "%{public}@ dropping since we are not in streaming state";
      v14 = v10;
      v15 = 12;
      goto LABEL_13;
    }
  }

  else
  {
    v10 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = self->_avcStreamOutput;
      v20 = 138543874;
      v21 = self;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v12;
      v13 = "%{public}@ discarding sample buffer from streamOutput %@ current _avcStreamOutput %@";
      v14 = v10;
      v15 = 32;
LABEL_13:
      _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_INFO, v13, &v20, v15);
    }
  }

  if (self->_canIssueStateMismatchEvent)
  {
    v16 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
    if (v16)
    {
      v17 = v16;
      v18 = self->_failedBufferCountDueToMismatchState + 1;
      self->_failedBufferCountDueToMismatchState = v18;
      if (v18 >= 0x3C)
      {
        v19 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-1012 userInfo:0];
        [v17 connectionInterrupted:v19 forDevice:0];

        self->_canIssueStateMismatchEvent = 0;
        self->_failedBufferCountDueToMismatchState = 0;
      }
    }
  }

LABEL_8:
}

- (void)streamOutputServerDidDie:(id)a3
{
  v4 = a3;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v10 = self;
    v11 = 2080;
    v12 = "[CMContinuityCaptureVideoDevice streamOutputServerDidDie:]";
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v6 = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CMContinuityCaptureVideoDevice_streamOutputServerDidDie___block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v8, buf);
  dispatch_async(v6, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __59__CMContinuityCaptureVideoDevice_streamOutputServerDidDie___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained stopCaptureStack:0 completion:&__block_literal_global_184];
    WeakRetained = v2;
  }
}

- (void)streamOutputDidBecomeInvalid:(id)a3
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543618;
    v6 = self;
    v7 = 2080;
    v8 = "[CMContinuityCaptureVideoDevice streamOutputDidBecomeInvalid:]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v5, 0x16u);
  }
}

- (void)stream:(id)a3 didStart:(BOOL)a4 error:(id)a5
{
  v6 = a3;
  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138544130;
    v9 = self;
    v10 = 2048;
    v11 = [(CMContinuityCaptureDeviceBase *)self currentSessionID];
    v12 = 2080;
    v13 = "[CMContinuityCaptureVideoDevice stream:didStart:error:]";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] AVCOutput setup complete %s %@", &v8, 0x2Au);
  }

  self->_avcStreamOutputActive = 1;
}

- (void)streamDidStop:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__CMContinuityCaptureVideoDevice_streamDidStop___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __48__CMContinuityCaptureVideoDevice_streamDidStop___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_loadWeakRetained((a1 + 40));
      v5 = *(a1 + 32);
      v9 = 138543874;
      v10 = v4;
      v11 = 2080;
      v12 = "[CMContinuityCaptureVideoDevice streamDidStop:]_block_invoke";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@", &v9, 0x20u);
    }

    v6 = WeakRetained[38];
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
      v7 = WeakRetained[38];
      WeakRetained[38] = 0;
    }

    v8 = WeakRetained[37];
    WeakRetained[37] = 0;

    *(WeakRetained + 376) = 0;
  }
}

- (void)streamDidRTPTimeOut:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CMContinuityCaptureVideoDevice_streamDidRTPTimeOut___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __54__CMContinuityCaptureVideoDevice_streamDidRTPTimeOut___block_invoke(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = *(a1 + 32);
    v7 = 138543874;
    v8 = WeakRetained;
    v9 = 2080;
    v10 = "[CMContinuityCaptureVideoDevice streamDidRTPTimeOut:]_block_invoke";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@", &v7, 0x20u);
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (v5)
  {
    [v5 postAVCStreamInterruption];
  }
}

- (void)streamDidRTCPTimeOut:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CMContinuityCaptureVideoDevice_streamDidRTCPTimeOut___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __55__CMContinuityCaptureVideoDevice_streamDidRTCPTimeOut___block_invoke(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = *(a1 + 32);
    v7 = 138543874;
    v8 = WeakRetained;
    v9 = 2080;
    v10 = "[CMContinuityCaptureVideoDevice streamDidRTCPTimeOut:]_block_invoke";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@", &v7, 0x20u);
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (v5)
  {
    [v5 postAVCStreamInterruption];
  }
}

- (void)streamDidServerDie:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(CMContinuityCaptureDeviceBase *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__CMContinuityCaptureVideoDevice_streamDidServerDie___block_invoke;
  v6[3] = &unk_278D5C080;
  objc_copyWeak(&v7, &location);
  dispatch_async(v5, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __53__CMContinuityCaptureVideoDevice_streamDidServerDie___block_invoke(uint64_t a1)
{
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = 138543618;
    v9 = WeakRetained;
    v10 = 2080;
    v11 = "[CMContinuityCaptureVideoDevice streamDidServerDie:]_block_invoke";
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v8, 0x16u);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (v4)
  {
    v6 = v4[38];
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
      v7 = v5[38];
      v5[38] = 0;
    }

    [v5 postAVCStreamInterruption];
  }
}

- (void)postAVCStreamInterruption
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v8 = self;
    v9 = 2080;
    v10 = "[CMContinuityCaptureVideoDevice postAVCStreamInterruption]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v4 = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CMContinuityCaptureVideoDevice_postAVCStreamInterruption__block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v6, buf);
  dispatch_async(v4, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __59__CMContinuityCaptureVideoDevice_postAVCStreamInterruption__block_invoke(uint64_t a1)
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

- (void)stopCaptureStack:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v7);

  if (self->_stopCompletionBlock)
  {
    v8 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v28 = self;
      v29 = 2080;
      v30 = "[CMContinuityCaptureVideoDevice stopCaptureStack:completion:]";
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ %s already in progress", buf, 0x16u);
    }

    if ((a3 & 4) != 0)
    {
      avcVideoStream = self->_avcVideoStream;
      self->_avcVideoStream = 0;

      avcStreamCallID = self->_avcStreamCallID;
      self->_avcStreamCallID = 0;

      v11 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = self;
        _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ clear AVCVideo reference", buf, 0xCu);
      }
    }

    v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:3 userInfo:0];
    v6[2](v6, v12);
  }

  else
  {
    if (self->_avcStreamOutputActive)
    {
      v13 = MEMORY[0x245D12020](v6);
      stopCompletionBlock = self->_stopCompletionBlock;
      self->_stopCompletionBlock = v13;

      objc_initWeak(buf, self);
      v15 = dispatch_time(0, 5000000000);
      v16 = [(CMContinuityCaptureDeviceBase *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__CMContinuityCaptureVideoDevice_stopCaptureStack_completion___block_invoke;
      block[3] = &unk_278D5C080;
      objc_copyWeak(&v26, buf);
      dispatch_after(v15, v16, block);

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }

    v17 = [(CMContinuityCaptureVideoDevice *)self stopAVConferenceStack];
    if ((a3 & 4) != 0)
    {
      v18 = self->_avcVideoStream;
      if (v18)
      {
        [(AVCVideoStream *)v18 stop];
      }

      avcStreamOutput = self->_avcStreamOutput;
      self->_avcStreamOutput = 0;

      v20 = self->_avcVideoStream;
      self->_avcVideoStream = 0;

      v21 = self->_avcStreamCallID;
      self->_avcStreamCallID = 0;

      self->_avcStreamOutputActive = 0;
      v22 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = self;
        _os_log_impl(&dword_242545000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ clear AVCVideo reference", buf, 0xCu);
      }
    }

    v24.receiver = self;
    v24.super_class = CMContinuityCaptureVideoDevice;
    [(CMContinuityCaptureDeviceBase *)&v24 stopCaptureStack:a3 completion:&__block_literal_global_191];
    if (!v17 || !self->_avcStreamOutputActive)
    {
      v23 = self->_stopCompletionBlock;
      self->_stopCompletionBlock = 0;

      v6[2](v6, 0);
    }
  }
}

uint64_t __62__CMContinuityCaptureVideoDevice_stopCaptureStack_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[38];
    if (v3)
    {
      v6 = v2;
      (*(v3 + 16))(v3, 0);
      v4 = v6[38];
      v6[38] = 0;
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)postEvent:(id)a3 entity:(int64_t)a4 data:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = [(CMContinuityCaptureDeviceBase *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__CMContinuityCaptureVideoDevice_postEvent_entity_data___block_invoke;
  v13[3] = &unk_278D5C1C0;
  objc_copyWeak(v17, &location);
  v14 = v8;
  v15 = v9;
  v16 = self;
  v17[1] = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __56__CMContinuityCaptureVideoDevice_postEvent_entity_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained compositeDelegate];
    if (v4)
    {
      if ([*(a1 + 32) isEqualToString:@"kCMContinuityCaptureEventImageCapture"])
      {
        v5 = v3[44];
        if (!v5)
        {
          v6 = [MEMORY[0x277CBEB18] array];
          v7 = v3[44];
          v3[44] = v6;

          v5 = v3[44];
        }

        v8 = [*(a1 + 40) objectForKeyedSubscript:@"ImageRequest"];
        [v5 addObject:v8];

        v9 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 48);
          v11 = [*(a1 + 40) objectForKeyedSubscript:@"ImageRequest"];
          v12 = [v3[44] count];
          *buf = 138543874;
          v49 = v10;
          v50 = 2112;
          v51 = v11;
          v52 = 2048;
          v53 = v12;
          _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Added request %@ to stillImageRequestsQueue. Current queue count: %lu", buf, 0x20u);
        }

        v13 = *(a1 + 40);
        v14 = *(a1 + 64);
        v15 = *(a1 + 32);
        v47.receiver = *(a1 + 48);
        v47.super_class = CMContinuityCaptureVideoDevice;
        objc_msgSendSuper2(&v47, sel_postEvent_entity_data_, v15, v14, v13, v43.receiver, v43.super_class);
      }

      else if ([*(a1 + 32) isEqualToString:@"kCMContinuityCaptureEventEnqueueReactionEffect"])
      {
        v16 = v3[45];
        if (!v16)
        {
          v17 = [MEMORY[0x277CBEB18] array];
          v18 = v3[45];
          v3[45] = v17;

          v16 = v3[45];
        }

        v19 = [*(a1 + 40) objectForKeyedSubscript:@"ReactionType"];
        [v16 addObject:v19];

        v20 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 48);
          v22 = [*(a1 + 40) objectForKeyedSubscript:@"ReactionType"];
          v23 = [v3[45] count];
          *buf = 138543874;
          v49 = v21;
          v50 = 2112;
          v51 = v22;
          v52 = 2048;
          v53 = v23;
          _os_log_impl(&dword_242545000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Added request %@ to reactionRequestsQueue. Current queue count: %lu", buf, 0x20u);
        }

        v24 = *(a1 + 40);
        v25 = *(a1 + 64);
        v26 = *(a1 + 32);
        v46.receiver = *(a1 + 48);
        v46.super_class = CMContinuityCaptureVideoDevice;
        objc_msgSendSuper2(&v46, sel_postEvent_entity_data_, v26, v25, v24, v43.receiver, v43.super_class);
      }

      else if ([*(a1 + 32) isEqualToString:@"kCMContinuityCaptureEventStopStream"])
      {
        [v3 scheduleSendingInvalidFramesAfterTimeout:0];
        v27 = +[CMContinuityCaptureSessionStateManager sharedInstance];
        v28 = [v27 activeSession];

        if (v28)
        {
          v29 = +[CMContinuityCaptureSessionStateManager sharedInstance];
          v30 = [v29 activeSession];
          v31 = [*(a1 + 48) activeConfiguration];
          [v30 logPowerLoggingEvent:0 configuration:v31];
        }

        v32 = *(a1 + 40);
        v33 = *(a1 + 64);
        v34 = *(a1 + 32);
        v45.receiver = *(a1 + 48);
        v45.super_class = CMContinuityCaptureVideoDevice;
        objc_msgSendSuper2(&v45, sel_postEvent_entity_data_, v34, v33, v32, v43.receiver, v43.super_class);
      }

      else if ([*(a1 + 32) isEqualToString:@"kCMContinuityCaptureEventStartStream"])
      {
        [v3 scheduleSendingInvalidFramesAfterTimeout:1];
        v35 = *(a1 + 40);
        v36 = *(a1 + 64);
        v37 = *(a1 + 32);
        v44.receiver = *(a1 + 48);
        v44.super_class = CMContinuityCaptureVideoDevice;
        objc_msgSendSuper2(&v44, sel_postEvent_entity_data_, v37, v36, v35);
        v38 = +[CMContinuityCaptureSessionStateManager sharedInstance];
        v39 = [v38 activeSession];

        if (v39)
        {
          v40 = +[CMContinuityCaptureSessionStateManager sharedInstance];
          v41 = [v40 activeSession];
          v42 = [*(a1 + 48) activeConfiguration];
          [v41 logPowerLoggingEvent:1 configuration:v42];
        }
      }

      else
      {
        objc_msgSendSuper2(&v43, sel_postEvent_entity_data_, *(a1 + 32), *(a1 + 64), *(a1 + 40), *(a1 + 48), CMContinuityCaptureVideoDevice);
      }
    }
  }
}

- (void)scheduleResumeUserNotification:(BOOL)a3
{
  if (a3)
  {
    v4 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    v5 = [v4 deviceModel];
    v6 = continuityCaptureNotificationCenter_isiPhone(v5);

    v7 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    v8 = @"RESUME_NOTIFICATION_TITLE_IPAD";
    if (v6)
    {
      v8 = @"RESUME_NOTIFICATION_TITLE_IPHONE";
    }

    v22[0] = @"kContinuityCaptureNotificationKeyTitle";
    v22[1] = @"kContinuityCaptureNotificationKeyBody";
    v9 = @"RESUME_NOTIFICATION_BODY_IPAD";
    if (v6)
    {
      v9 = @"RESUME_NOTIFICATION_BODY_IPHONE";
    }

    v23[0] = v8;
    v23[1] = v9;
    v22[2] = @"kContinuityCaptureNotificationKeyIdentifier";
    v10 = MEMORY[0x277CCACA8];
    v20 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    v11 = [v20 deviceIdentifier];
    v12 = [v11 UUIDString];
    v13 = [v10 stringWithFormat:@"%@%@", @"CMContinuityCaptureResumeNotification", v12];
    v23[2] = v13;
    v23[3] = MEMORY[0x277CBEC38];
    v22[3] = @"kContinuityCaptureNotificationKeyOneTime";
    v22[4] = @"kContinuityCaptureNotificationKeyDeviceModel";
    v14 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    v15 = [v14 deviceModel];
    v23[4] = v15;
    v22[5] = @"kContinuityCaptureNotificationKeyDeviceIdentifier";
    v16 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    v17 = [v16 deviceIdentifier];
    v18 = [v17 UUIDString];
    v23[5] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:6];
    [v7 scheduleNotification:3 data:v19];
  }

  else
  {
    v21 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    [v21 unscheduleNotification:3];
  }
}

- (void)scheduleDeviceBusyNotification:(BOOL)a3
{
  if (a3)
  {
    v4 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    v5 = [v4 deviceModel];
    v6 = continuityCaptureNotificationCenter_isiPhone(v5);

    v7 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    v25[0] = @"kContinuityCaptureNotificationKeyTitle";
    v25[1] = @"kContinuityCaptureNotificationKeyBody";
    v8 = @"DEVICE_BUSY_UNABLE_TO_CONNECT_IPAD";
    if (v6)
    {
      v8 = @"DEVICE_BUSY_UNABLE_TO_CONNECT_IPHONE";
    }

    v26[0] = @"DEVICE_BUSY_UNABLE_TO_CONNECT";
    v26[1] = v8;
    v25[2] = @"kContinuityCaptureNotificationKeyBodyArgs";
    v22 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    v21 = [v22 deviceName];
    v24 = v21;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v26[2] = v20;
    v25[3] = @"kContinuityCaptureNotificationKeyIdentifier";
    v9 = MEMORY[0x277CCACA8];
    v19 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    v10 = [v19 deviceIdentifier];
    v11 = [v10 UUIDString];
    v12 = [v9 stringWithFormat:@"%@%@", @"CMContinuityCaptureSessionBusyNotification", v11];
    v26[3] = v12;
    v26[4] = MEMORY[0x277CBEC28];
    v25[4] = @"kContinuityCaptureNotificationKeyOneTime";
    v25[5] = @"kContinuityCaptureNotificationKeyDeviceModel";
    v13 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    v14 = [v13 deviceModel];
    v26[5] = v14;
    v25[6] = @"kContinuityCaptureNotificationKeyDeviceIdentifier";
    v15 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    v16 = [v15 deviceIdentifier];
    v17 = [v16 UUIDString];
    v26[6] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:7];
    [v7 scheduleNotification:11 data:v18];
  }

  else
  {
    v23 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    [v23 unscheduleNotification:11];
  }
}

- (void)startSendingInvalidFrames
{
  objc_initWeak(&location, self);
  if (!self->_blackFrameDispatchTimer)
  {
    v3 = [(CMContinuityCaptureDeviceBase *)self queue];
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
    blackFrameDispatchTimer = self->_blackFrameDispatchTimer;
    self->_blackFrameDispatchTimer = v4;

    v6 = self->_blackFrameDispatchTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __59__CMContinuityCaptureVideoDevice_startSendingInvalidFrames__block_invoke;
    handler[3] = &unk_278D5C080;
    objc_copyWeak(&v13, &location);
    dispatch_source_set_event_handler(v6, handler);
    dispatch_source_set_timer(self->_blackFrameDispatchTimer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    dispatch_resume(self->_blackFrameDispatchTimer);
    objc_destroyWeak(&v13);
  }

  v7 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  v8 = [v7 maxFrameRate];

  if (v8)
  {
    v11.receiver = self;
    v11.super_class = CMContinuityCaptureVideoDevice;
    [(CMContinuityCaptureDeviceBase *)&v11 startSendingInvalidFrames];
    v9 = self->_blackFrameDispatchTimer;
    v10 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    dispatch_source_set_timer(v9, 0, 1000 * (0xF4240 / [v10 maxFrameRate]), 0);
  }

  objc_destroyWeak(&location);
}

void __59__CMContinuityCaptureVideoDevice_startSendingInvalidFrames__block_invoke(uint64_t a1)
{
  sampleTimingArray.decodeTimeStamp.epoch = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&sampleTimingArray.presentationTimeStamp.timescale = v2;
  *&sampleTimingArray.decodeTimeStamp.value = v2;
  *&sampleTimingArray.duration.value = v2;
  *&sampleTimingArray.duration.epoch = v2;
  sampleBufferOut = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[41] || (v5 = [WeakRetained createBlackSampleBuffer], (v4[41] = v5) != 0))
    {
      if (CMContinityCaptureDebugLogEnabled())
      {
        v6 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          __59__CMContinuityCaptureVideoDevice_startSendingInvalidFrames__block_invoke_cold_1((a1 + 32), v4 + 41);
        }
      }

      sampleTimingArray.decodeTimeStamp = **&MEMORY[0x277CC0898];
      HostTimeInNanoSec = CMContinuityCaptureGetHostTimeInNanoSec();
      CMTimeMake(&sampleTimingArray.presentationTimeStamp, HostTimeInNanoSec, 1000000000);
      v8 = [v4 activeConfiguration];
      CMTimeMake(&v11, 1, [v8 maxFrameRate]);
      sampleTimingArray.duration = v11;

      v9 = CFGetAllocator(v4[41]);
      CMSampleBufferCreateCopyWithNewTiming(v9, v4[41], 1, &sampleTimingArray, &sampleBufferOut);
      if (sampleBufferOut)
      {
        [v4[34] dispatchFrame:sampleBufferOut entity:objc_msgSend(v4 completion:{"entity"), &__block_literal_global_231}];
        CFRelease(sampleBufferOut);
        goto LABEL_13;
      }

      v10 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __59__CMContinuityCaptureVideoDevice_startSendingInvalidFrames__block_invoke_cold_2((a1 + 32));
      }
    }

    else
    {
      if (!CMContinityCaptureDebugLogEnabled())
      {
        goto LABEL_13;
      }

      v10 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __59__CMContinuityCaptureVideoDevice_startSendingInvalidFrames__block_invoke_cold_3((a1 + 32));
      }
    }
  }

LABEL_13:
}

- (void)stopSendingInvalidFrames
{
  v4.receiver = self;
  v4.super_class = CMContinuityCaptureVideoDevice;
  [(CMContinuityCaptureDeviceBase *)&v4 stopSendingInvalidFrames];
  blackFrameDispatchTimer = self->_blackFrameDispatchTimer;
  if (blackFrameDispatchTimer)
  {
    dispatch_source_set_timer(blackFrameDispatchTimer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  }
}

- (void)restartSendingInvalidFramesIfApplicable
{
  blackFrameSampleBuffer = self->_blackFrameSampleBuffer;
  if (blackFrameSampleBuffer)
  {
    CFRelease(blackFrameSampleBuffer);
    self->_blackFrameSampleBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = CMContinuityCaptureVideoDevice;
  [(CMContinuityCaptureDeviceBase *)&v4 restartSendingInvalidFramesIfApplicable];
}

- (void)stateMachineStartSendingBlurredFrames
{
  if (!self->_blurredFrameTimerActive)
  {
    objc_initWeak(&location, self);
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v15 = self;
      v16 = 2080;
      v17 = "[CMContinuityCaptureVideoDevice stateMachineStartSendingBlurredFrames]";
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
    }

    if (!self->_blurredFrameDispatchTimer)
    {
      v4 = [(CMContinuityCaptureDeviceBase *)self queue];
      v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
      blurredFrameDispatchTimer = self->_blurredFrameDispatchTimer;
      self->_blurredFrameDispatchTimer = v5;

      v7 = self->_blurredFrameDispatchTimer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __71__CMContinuityCaptureVideoDevice_stateMachineStartSendingBlurredFrames__block_invoke;
      handler[3] = &unk_278D5C080;
      objc_copyWeak(&v13, &location);
      dispatch_source_set_event_handler(v7, handler);
      dispatch_source_set_timer(self->_blurredFrameDispatchTimer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
      dispatch_resume(self->_blurredFrameDispatchTimer);
      objc_destroyWeak(&v13);
    }

    v8 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
    v9 = [v8 maxFrameRate];

    if (v9)
    {
      v10 = self->_blurredFrameDispatchTimer;
      v11 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      dispatch_source_set_timer(v10, 0, 1000 * (0xF4240 / [v11 maxFrameRate]), 0);
    }

    self->_blurredFrameTimerActive = 1;
    objc_destroyWeak(&location);
  }
}

void __71__CMContinuityCaptureVideoDevice_stateMachineStartSendingBlurredFrames__block_invoke(uint64_t a1)
{
  sampleTimingArray.decodeTimeStamp.epoch = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&sampleTimingArray.presentationTimeStamp.timescale = v2;
  *&sampleTimingArray.decodeTimeStamp.value = v2;
  *&sampleTimingArray.duration.value = v2;
  *&sampleTimingArray.duration.epoch = v2;
  sampleBufferOut = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[40] || (v5 = [WeakRetained createBlurredSampleBuffer], (v4[40] = v5) != 0) || (v6 = objc_msgSend(v4, "createBlackSampleBuffer"), (v4[40] = v6) != 0))
    {
      if (CMContinityCaptureDebugLogEnabled())
      {
        v7 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          __71__CMContinuityCaptureVideoDevice_stateMachineStartSendingBlurredFrames__block_invoke_cold_1((a1 + 32), v4 + 40);
        }
      }

      sampleTimingArray.decodeTimeStamp = **&MEMORY[0x277CC0898];
      HostTimeInNanoSec = CMContinuityCaptureGetHostTimeInNanoSec();
      CMTimeMake(&sampleTimingArray.presentationTimeStamp, HostTimeInNanoSec, 1000000000);
      v9 = [v4 activeConfiguration];
      CMTimeMake(&v12, 1, [v9 maxFrameRate]);
      sampleTimingArray.duration = v12;

      v10 = CFGetAllocator(v4[40]);
      CMSampleBufferCreateCopyWithNewTiming(v10, v4[40], 1, &sampleTimingArray, &sampleBufferOut);
      if (sampleBufferOut)
      {
        [v4[34] dispatchFrame:sampleBufferOut entity:objc_msgSend(v4 completion:{"entity"), &__block_literal_global_240}];
        CFRelease(sampleBufferOut);
        goto LABEL_14;
      }

      v11 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __59__CMContinuityCaptureVideoDevice_startSendingInvalidFrames__block_invoke_cold_2((a1 + 32));
      }
    }

    else
    {
      if (!CMContinityCaptureDebugLogEnabled())
      {
        goto LABEL_14;
      }

      v11 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __71__CMContinuityCaptureVideoDevice_stateMachineStartSendingBlurredFrames__block_invoke_cold_3((a1 + 32));
      }
    }
  }

LABEL_14:
}

- (void)stateMachineStopSendingBlurredFrames
{
  if (self->_blurredFrameTimerActive)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543618;
      v6 = self;
      v7 = 2080;
      v8 = "[CMContinuityCaptureVideoDevice stateMachineStopSendingBlurredFrames]";
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v5, 0x16u);
    }

    blurredFrameDispatchTimer = self->_blurredFrameDispatchTimer;
    if (blurredFrameDispatchTimer)
    {
      dispatch_source_set_timer(blurredFrameDispatchTimer, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    }

    self->_blurredFrameTimerActive = 0;
  }
}

- (void)completeImageCaptureRequest:(id)a3
{
  v4 = a3;
  v5 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  if (v5)
  {
    v6 = [(CMContinuityCaptureDeviceBase *)self queue];
    dispatch_assert_queue_V2(v6);

    if (![(NSMutableArray *)self->_stillImageRequestsQueue count])
    {
      v7 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureVideoDevice completeImageCaptureRequest:];
      }

      goto LABEL_28;
    }

    v7 = [(NSMutableArray *)self->_stillImageRequestsQueue firstObject];
    [(NSMutableArray *)self->_stillImageRequestsQueue removeObjectAtIndex:0];
    v8 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 138412802;
      *(&buf.value + 4) = self;
      LOWORD(buf.flags) = 2112;
      *(&buf.flags + 2) = v4;
      HIWORD(buf.epoch) = 2112;
      v33 = v7;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%@ completeImageCaptureRequest with error %@. Removed %@ from queue", &buf, 0x20u);
    }

    if (v4)
    {
      v9 = [v7 error];

      if (!v9)
      {
        [v7 setError:v4];
      }
    }

    v10 = [v7 completionHandler];

    if (!v10)
    {
LABEL_24:
      v26 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v7 completionHandler];
        v28 = MEMORY[0x245D12020]();
        v29 = [v7 uniqueID];
        v30 = [v7 error];
        LODWORD(buf.value) = 138413314;
        *(&buf.value + 4) = self;
        LOWORD(buf.flags) = 2048;
        *(&buf.flags + 2) = v28;
        HIWORD(buf.epoch) = 2048;
        v33 = v29;
        v34 = 2048;
        v35 = v10;
        v36 = 2112;
        v37 = v30;
        _os_log_impl(&dword_242545000, v26, OS_LOG_TYPE_DEFAULT, "%@ Called %p for completed image capture request ID:%lld. sbuf:%p error:%@", &buf, 0x34u);
      }

      if (v10)
      {
        CFRelease(v10);
      }

LABEL_28:

      goto LABEL_29;
    }

    v11 = [v7 error];
    if (v11)
    {

      v10 = 0;
LABEL_23:
      v24 = [v7 completionHandler];
      v25 = [v7 error];
      (v24)[2](v24, v10, [v25 code]);

      goto LABEL_24;
    }

    v10 = [v7 imageFileData];

    if (!v10)
    {
      goto LABEL_23;
    }

    value = *MEMORY[0x277CC0898];
    v31 = *(MEMORY[0x277CC0898] + 8);
    epoch = *(MEMORY[0x277CC0898] + 16);
    v14 = [v5 client];
    v15 = [v14 timeSyncClock];
    if (v15)
    {
      v16 = v15;
      v17 = [v7 networkTimestamp];

      if (v17)
      {
        v18 = [v5 client];
        v19 = [v18 timeSyncClock];
        v20 = [v7 networkTimestamp];
        v21 = [v19 machAbsoluteTimeForDomainTime:{objc_msgSend(v20, "unsignedLongLongValue")}];

        v22 = v31;
        if (v21 != *MEMORY[0x277D714E8])
        {
          CMClockMakeHostTimeFromSystemUnits(&buf, v21);
          value = buf.value;
          epoch = buf.epoch;
          v22 = *&buf.timescale;
        }

        goto LABEL_20;
      }
    }

    else
    {
    }

    v22 = v31;
LABEL_20:
    if ((v22 & 0x100000000) == 0)
    {
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&buf, HostTimeClock);
      value = buf.value;
      epoch = buf.epoch;
      v22 = *&buf.timescale;
    }

    buf.value = value;
    *&buf.timescale = v22;
    buf.epoch = epoch;
    v10 = [(CMContinuityCaptureVideoDevice *)self _createStillImageDataBufferFromRequest:v7 timestamp:&buf];
    goto LABEL_23;
  }

LABEL_29:
}

- (opaqueCMSampleBuffer)_createStillImageDataBufferFromRequest:(id)a3 timestamp:(id *)a4
{
  v5 = a3;
  formatDescriptionOut = 0;
  v17 = 0;
  dataPointerOut = 0xAAAAAAAAAAAAAAAALL;
  blockBufferOut = 0;
  sampleTimingArray.decodeTimeStamp.epoch = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&sampleTimingArray.presentationTimeStamp.timescale = v6;
  *&sampleTimingArray.decodeTimeStamp.value = v6;
  *&sampleTimingArray.duration.value = v6;
  *&sampleTimingArray.duration.epoch = v6;
  v7 = [v5 imageFileData];
  if ([v7 length])
  {
    v8 = *MEMORY[0x277CBECE8];
    if (CMBlockBufferCreateWithMemoryBlock(v8, 0, [v7 length], v8, 0, 0, objc_msgSend(v7, "length"), 1u, &blockBufferOut))
    {
      v11 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureVideoDevice _createStillImageDataBufferFromRequest:timestamp:];
      }
    }

    else if (CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &dataPointerOut))
    {
      v11 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CMContinuityCaptureVideoDevice _createStillImageDataBufferFromRequest:timestamp:];
      }
    }

    else
    {
      memcpy(dataPointerOut, [v7 bytes], objc_msgSend(v7, "length"));
      sampleTimingArray.presentationTimeStamp = *a4;
      sampleTimingArray.decodeTimeStamp = **&MEMORY[0x277CC0898];
      sampleSizeArray = CMBlockBufferGetDataLength(blockBufferOut);
      if (CMVideoFormatDescriptionCreate(v8, [v5 imageCodecType], objc_msgSend(v5, "imageWidth"), objc_msgSend(v5, "imageHeight"), 0, &formatDescriptionOut))
      {
        v11 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [CMContinuityCaptureVideoDevice _createStillImageDataBufferFromRequest:timestamp:];
        }
      }

      else
      {
        if (!CMSampleBufferCreate(v8, blockBufferOut, 1u, 0, 0, formatDescriptionOut, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &v17))
        {
          goto LABEL_6;
        }

        v11 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [CMContinuityCaptureVideoDevice _createStillImageDataBufferFromRequest:timestamp:];
        }
      }
    }
  }

  else
  {
    v11 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CMContinuityCaptureVideoDevice _createStillImageDataBufferFromRequest:timestamp:];
    }
  }

LABEL_6:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  v9 = v17;

  return v9;
}

- (void)stateMachineImageCapture
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __58__CMContinuityCaptureVideoDevice_stateMachineImageCapture__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __58__CMContinuityCaptureVideoDevice_stateMachineImageCapture__block_invoke_cold_1((a1 + 32));
    }

    v4 = WeakRetained[46];
    WeakRetained[46] = 0;

    [WeakRetained postActionOfType:12 forEvent:0 option:0];
  }
}

void __58__CMContinuityCaptureVideoDevice_stateMachineImageCapture__block_invoke_241(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    dispatch_block_cancel(*(a1 + 32));
    v3 = v6[46];
    v6[46] = 0;

    v4 = *(*(*(a1 + 40) + 8) + 40);
    if (v4 && [v4 code])
    {
      v5 = 12;
    }

    else
    {
      v5 = 13;
    }

    [v6 postActionOfType:v5 forEvent:0 option:0];
    WeakRetained = v6;
  }
}

void __58__CMContinuityCaptureVideoDevice_stateMachineImageCapture__block_invoke_2(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2 && WeakRetained)
  {
    v5 = WeakRetained;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    dispatch_group_leave(v5[46]);
    WeakRetained = v5;
  }
}

- (void)stateMachineEnqueueReactionEffect
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __67__CMContinuityCaptureVideoDevice_stateMachineEnqueueReactionEffect__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained postActionOfType:13 forEvent:0 option:0];
}

- (void)postActionOfType:(unint64_t)a3 forEvent:(id)a4 option:(unint64_t)a5
{
  v8 = a4;
  v9 = v8;
  if (a3 > 5)
  {
    if (a3 > 7)
    {
      if (a3 != 9)
      {
        if (a3 == 8)
        {
          v22 = [v8 name];
          v23 = [v22 isEqualToString:@"kCMContinuityCaptureEventUserPause"];

          if (v23)
          {
            [(CMContinuityCaptureVideoDevice *)self scheduleResumeUserNotification:1];
          }

          [(CMContinuityCaptureVideoDevice *)self stateMachineStartSendingBlurredFrames];
        }

        goto LABEL_50;
      }

      [(CMContinuityCaptureVideoDevice *)self scheduleResumeUserNotification:0];
    }

    else
    {
      if (a3 == 6)
      {
        v26 = [v8 data];
        if (v26)
        {
          v27 = v26;
          v28 = [v9 data];
          v29 = [v28 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyOption"];

          if (v29)
          {
            v30 = [v9 data];
            v31 = [v30 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyOption"];
            a5 |= [v31 integerValue];
          }
        }

        if ((a5 & 2) != 0)
        {
          [(CMContinuityCaptureDeviceBase *)self scheduleSendingInvalidFramesAfterTimeout:0];
          [(CMContinuityCaptureVideoDevice *)self stateMachineStartSendingBlurredFrames];
        }

        if ((a5 & 4) != 0)
        {
          v32 = [v9 data];
          if (!v32)
          {
            goto LABEL_45;
          }

          v33 = v32;
          v34 = [v9 data];
          v35 = [v34 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyPostTime"];

          if (v35)
          {
            v36 = [v9 data];
            v37 = [v36 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyPostTime"];
            v38 = [v37 unsignedLongLongValue];

            if (v38 > [(CMContinuityCaptureDeviceBase *)self cameraCaptureStackStartTime]|| v38 > [(CMContinuityCaptureDeviceBase *)self avCaptureStackStartTime])
            {
              [(CMContinuityCaptureVideoDevice *)self stopCaptureStack:4 completion:&__block_literal_global_243];
            }
          }

          else
          {
LABEL_45:
            [(CMContinuityCaptureDeviceBase *)self cameraCaptureStackStartTime];
            [(CMContinuityCaptureDeviceBase *)self avCaptureStackStartTime];
          }
        }

        goto LABEL_50;
      }

      if ((a5 & 0x40) == 0)
      {
LABEL_50:
        v42.receiver = self;
        v42.super_class = CMContinuityCaptureVideoDevice;
        [(CMContinuityCaptureDeviceBase *)&v42 postActionOfType:a3 forEvent:v9 option:a5];
        goto LABEL_51;
      }
    }

    [(CMContinuityCaptureVideoDevice *)self stateMachineStopSendingBlurredFrames];
    goto LABEL_50;
  }

  if (a3 > 3)
  {
    if (a3 == 4)
    {
      [(CMContinuityCaptureVideoDevice *)self stateMachineImageCapture];
    }

    else
    {
      [(CMContinuityCaptureVideoDevice *)self stateMachineEnqueueReactionEffect];
    }

    goto LABEL_50;
  }

  if (a3 != 1)
  {
    if (a3 == 2)
    {
      self->_numberOfFramesDispatched = 0;
      [(CMContinuityCaptureDeviceBase *)self scheduleSendingInvalidFramesAfterTimeout:0];
      if ([(CMContinuityCaptureDeviceBase *)self entity]== 1)
      {
        v10 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        v11 = [v10 forcefulCenterStageEnablementType];

        if (v11 == 1)
        {
          [(CMContinuityCaptureVideoDevice *)self restoreAffectedClientsCenterStageState];
        }
      }

      if (a5 != 1)
      {
        v12 = [(CMContinuityCaptureDeviceBase *)self capabilities];
        v13 = [v12 controls];

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v44 objects:v43 count:16];
        obj = v14;
        if (v15)
        {
          v16 = v15;
          v40 = a5;
          v17 = *v45;
LABEL_11:
          v18 = 0;
          while (1)
          {
            if (*v45 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v44 + 1) + 8 * v18);
            v20 = [v19 name];
            v21 = [v20 isEqualToString:@"4cc_cfri_glob_0000"];

            if (v21)
            {
              break;
            }

            if (v16 == ++v18)
            {
              v16 = [v14 countByEnumeratingWithState:&v44 objects:v43 count:16];
              if (v16)
              {
                goto LABEL_11;
              }

              a5 = v40;
              goto LABEL_48;
            }
          }

          v14 = v19;

          a5 = v40;
          if (!v14)
          {
            goto LABEL_49;
          }

          v39 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
          [v39 setCenterStageRectOfInterest:0x2854ECD88];

          [v14 setValue:0x2854ECD88];
          [(CMContinuityCaptureCMIOVideoDevice *)self->_cmioCaptureDevice setValueForControl:v14 completion:0];
        }

LABEL_48:

LABEL_49:
      }
    }

    goto LABEL_50;
  }

  v24 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  if (v24)
  {
    v25 = v24;
    [(CMContinuityCaptureVideoDevice *)self stateMachineStopSendingBlurredFrames];
    self->_canIssueStateMismatchEvent = 1;

    goto LABEL_50;
  }

LABEL_51:
}

- (void)postActionCompletionForEventName:(id)a3 eventData:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isEqualToString:@"kCMContinuityCaptureEventImageCapture"])
  {
    [(CMContinuityCaptureVideoDevice *)self completeImageCaptureRequest:v10];
  }

  else if ([v8 isEqualToString:@"kCMContinuityCaptureEventStopStream"])
  {
    self->_canIssueStateMismatchEvent = 0;
    self->_failedBufferCountDueToMismatchState = 0;
    v11 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    [v11 stopStream:-[CMContinuityCaptureDeviceBase entity](self option:"entity") completion:{0, &__block_literal_global_247}];
  }

  v12.receiver = self;
  v12.super_class = CMContinuityCaptureVideoDevice;
  [(CMContinuityCaptureDeviceBase *)&v12 postActionCompletionForEventName:v8 eventData:v9 error:v10];
}

- (void)didCaptureStillImage:(id)a3 entity:(int64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = [(CMContinuityCaptureDeviceBase *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__CMContinuityCaptureVideoDevice_didCaptureStillImage_entity___block_invoke;
  v9[3] = &unk_278D5C770;
  objc_copyWeak(v11, &location);
  v10 = v6;
  v11[1] = a4;
  v8 = v6;
  dispatch_async(v7, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __62__CMContinuityCaptureVideoDevice_didCaptureStillImage_entity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _didCaptureStillImage:*(a1 + 32) entity:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (void)_didCaptureStillImage:(id)a3 entity:(int64_t)a4
{
  v5 = a3;
  v6 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    v16 = self;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Got back still image %@", &v15, 0x16u);
  }

  v8 = [(NSMutableArray *)self->_stillImageRequestsQueue firstObject];
  v9 = [v8 uniqueID];
  if (v9 == [v5 uniqueID])
  {
    [v8 setCaptureComplete:{objc_msgSend(v5, "captureComplete")}];
    v10 = [v5 error];
    [v8 setError:v10];

    v11 = [v5 networkTimestamp];
    [v8 setNetworkTimestamp:v11];

    v12 = [v5 imageFileData];
    [v8 setImageFileData:v12];

    [v8 setImageCodecType:{objc_msgSend(v5, "imageCodecType")}];
    [v8 setImageWidth:{objc_msgSend(v5, "imageWidth")}];
    [v8 setImageHeight:{objc_msgSend(v5, "imageHeight")}];
    stillImageCaptureGroup = self->_stillImageCaptureGroup;
    if (stillImageCaptureGroup)
    {
      dispatch_group_leave(stillImageCaptureGroup);
    }
  }

  else
  {
    v14 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543874;
      v16 = self;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v5;
      _os_log_error_impl(&dword_242545000, v14, OS_LOG_TYPE_ERROR, "%{public}@ Got back still image for an unknown request. inflight:%@ received:%@", &v15, 0x20u);
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_initWeak(&location, self);
  v13 = [(CMContinuityCaptureDeviceBase *)self queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __81__CMContinuityCaptureVideoDevice_observeValueForKeyPath_ofObject_change_context___block_invoke;
  v17[3] = &unk_278D5C1C0;
  objc_copyWeak(v21, &location);
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21[1] = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, v17);

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __81__CMContinuityCaptureVideoDevice_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _observeValueForKeyPath:*(a1 + 32) ofObject:*(a1 + 40) change:*(a1 + 48) context:*(a1 + 64)];
    WeakRetained = v3;
  }
}

- (void)_observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (CMContinityCaptureDebugLogEnabled())
  {
    v12 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v26 = 138413058;
      v27 = self;
      v28 = 2080;
      v29 = "[CMContinuityCaptureVideoDevice _observeValueForKeyPath:ofObject:change:context:]";
      v30 = 2112;
      v31 = v9;
      v32 = 2112;
      v33 = v10;
      _os_log_debug_impl(&dword_242545000, v12, OS_LOG_TYPE_DEBUG, "%@ %s forKeyPath: %@ ofObject: %@", &v26, 0x2Au);
    }
  }

  if ([v9 isEqualToString:@"active"])
  {
    v13 = *MEMORY[0x277CCA2F0];
    v14 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    if ([v14 BOOLValue])
    {
    }

    else
    {
      v21 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      v22 = [v21 BOOLValue];

      if (v22)
      {
        v23 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 138543362;
          v27 = self;
          _os_log_impl(&dword_242545000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ active 1 -> 0", &v26, 0xCu);
        }

        [(CMContinuityCaptureVideoDevice *)self stopCaptureStack:4 completion:&__block_literal_global_251];
        goto LABEL_23;
      }
    }

    v15 = [v11 objectForKeyedSubscript:v13];
    if (([v15 BOOLValue]& 1) == 0)
    {
LABEL_22:

      goto LABEL_23;
    }

    v24 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA300]];
    v25 = [v24 BOOLValue];

    if ((v25 & 1) == 0)
    {
      v15 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138543362;
        v27 = self;
        _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ active 0 -> 1", &v26, 0xCu);
      }

      goto LABEL_22;
    }
  }

  else if ([v9 isEqualToString:@"currentState"])
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v16 = MEMORY[0x277CC1B90];
    v17 = [(CMContinuityCaptureDeviceBase *)self stateMachineCurrentState];
    v18 = [v17 name];
    v19 = [MEMORY[0x277CC1B88] readOnlyPropertyAttribute];
    v20 = [v16 propertyStateWithValue:v18 attributes:v19];

    if (v20)
    {
      [v15 setObject:v20 forKeyedSubscript:@"CMIOExtensionPropertyContinuityCaptureDeviceState"];
    }

    if ([v15 count])
    {
      [(CMIOExtensionDevice *)self->_cmioCaptureDevice notifyPropertiesChanged:v15];
    }

    goto LABEL_22;
  }

LABEL_23:
}

- (void)terminateComplete:(id)a3
{
  v4 = a3;
  v5 = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(v5);

  v6.receiver = self;
  v6.super_class = CMContinuityCaptureVideoDevice;
  [(CMContinuityCaptureDeviceBase *)&v6 terminateComplete:&__block_literal_global_253];
  [(CMContinuityCaptureCMIOVideoDevice *)self->_cmioCaptureDevice terminateComplete:v4];
}

- (void)setValueForControl:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(CMContinuityCaptureDeviceBase *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__CMContinuityCaptureVideoDevice_setValueForControl_completion___block_invoke;
  v10[3] = &unk_278D5C120;
  objc_copyWeak(&v13, &location);
  v11 = v6;
  v12 = self;
  v9 = v6;
  dispatch_async(v8, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __64__CMContinuityCaptureVideoDevice_setValueForControl_completion___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!WeakRetained)
  {
    goto LABEL_4;
  }

  v3 = a1 + 4;
  if ([a1[4] entity] == 4)
  {
    goto LABEL_3;
  }

  v4 = [*v3 name];
  v5 = [v4 isEqualToString:@"4cc_cfen_glob_0000"];

  if (v5)
  {
    v6 = a1[5];
    v7 = [a1[4] value];
    [v6 updateForcefulCenterStageEnablementStateIfNeededWithCenterStageEnabled:{objc_msgSend(v7, "BOOLValue")}];

    v8 = [WeakRetained activeConfiguration];
    LODWORD(v7) = [v8 centerStageEnabled];
    v9 = [a1[4] value];
    v10 = [v9 BOOLValue];

    if (v7 != v10)
    {
      v11 = [*v3 value];
      v12 = [v11 BOOLValue];
      v13 = [WeakRetained activeConfiguration];
      [v13 setCenterStageEnabled:v12];

      v14 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [WeakRetained activeConfiguration];
        v16 = [v15 centerStageEnabled];
        v17 = "Off";
        if (v16)
        {
          v17 = "On";
        }

        *v313 = 138543618;
        *&v313[4] = WeakRetained;
        *&v313[12] = 2080;
        *&v313[14] = v17;
        _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ CenterStageEnabled %s", v313, 0x16u);
      }

      v18 = [WeakRetained transportDevice];
      [v18 setValueForControl:*v3 completion:0];

      v19 = +[CMContinuityCaptureSessionStateManager sharedInstance];
      v20 = [v19 activeSession];

      if (v20)
      {
        v21 = +[CMContinuityCaptureSessionStateManager sharedInstance];
        v22 = [v21 activeSession];
        v23 = [a1[5] streaming];
        v24 = [a1[5] activeConfiguration];
        [v22 logPowerLoggingEvent:v23 configuration:v24];
      }
    }

    goto LABEL_3;
  }

  v25 = [*v3 name];
  v26 = [v25 isEqualToString:@"4cc_cfac_glob_0000"];

  if (v26)
  {
    goto LABEL_3;
  }

  v27 = [*v3 name];
  if ([v27 isEqualToString:@"4cc_cfri_glob_0000"] && (objc_msgSend(*v3, "value"), (v28 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v29 = v28;
    v30 = [*v3 value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v32 = [*v3 value];
      v33 = [WeakRetained activeConfiguration];
      [v33 setCenterStageRectOfInterest:v32];

      v34 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [WeakRetained activeConfiguration];
        v36 = [v35 centerStageRectOfInterest];
        *v313 = 138543618;
        *&v313[4] = WeakRetained;
        *&v313[12] = 2112;
        *&v313[14] = v36;
        _os_log_impl(&dword_242545000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ CenterStageRectOfInterest %@", v313, 0x16u);

LABEL_25:
      }

LABEL_26:

      [WeakRetained[34] setValueForControl:*v3 completion:0];
LABEL_27:
      v46 = [WeakRetained transportDevice];
      [v46 setValueForControl:*v3 completion:0];
LABEL_28:

      goto LABEL_4;
    }
  }

  else
  {
  }

  v37 = [*v3 name];
  v38 = [v37 isEqualToString:@"4cc_cffm_glob_0000"];

  v39 = *v3;
  if (v38)
  {
    v40 = [v39 value];
    v41 = [v40 intValue];
    v42 = [WeakRetained activeConfiguration];
    [v42 setCenterStageFramingMode:v41];

    v34 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v35 = [WeakRetained activeConfiguration];
    *v313 = 138543618;
    *&v313[4] = WeakRetained;
    *&v313[12] = 2048;
    *&v313[14] = [v35 centerStageFramingMode];
    v43 = "%{public}@ CenterStageControlMode %ld";
    goto LABEL_23;
  }

  v47 = [v39 name];
  v48 = [v47 isEqualToString:@"FaceDetectionEnabled"];

  if (v48)
  {
    v49 = [WeakRetained activeConfiguration];
    v50 = [v49 faceDetectionEnabled];
    v51 = [*v3 value];
    v52 = [v51 BOOLValue];

    if (v50 == v52)
    {
      goto LABEL_4;
    }

    v53 = [*v3 value];
    v54 = [v53 BOOLValue];
    v55 = [WeakRetained activeConfiguration];
    [v55 setFaceDetectionEnabled:v54];

    v34 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v35 = [WeakRetained activeConfiguration];
    v56 = [v35 faceDetectionEnabled];
    v57 = "Off";
    if (v56)
    {
      v57 = "On";
    }

    *v313 = 138543618;
    *&v313[4] = WeakRetained;
    *&v313[12] = 2080;
    *&v313[14] = v57;
    v43 = "%{public}@ FaceDetectionEnabled %s";
    goto LABEL_23;
  }

  v58 = [*v3 name];
  v59 = [v58 isEqualToString:@"HumanBodyDetectionEnabled"];

  if (v59)
  {
    v60 = [WeakRetained activeConfiguration];
    v61 = [v60 humanBodyDetectionEnabled];
    v62 = [*v3 value];
    v63 = [v62 BOOLValue];

    if (v61 == v63)
    {
      goto LABEL_4;
    }

    v64 = [*v3 value];
    v65 = [v64 BOOLValue];
    v66 = [WeakRetained activeConfiguration];
    [v66 setHumanBodyDetectionEnabled:v65];

    v34 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v35 = [WeakRetained activeConfiguration];
    v67 = [v35 humanBodyDetectionEnabled];
    v68 = "Off";
    if (v67)
    {
      v68 = "On";
    }

    *v313 = 138543618;
    *&v313[4] = WeakRetained;
    *&v313[12] = 2080;
    *&v313[14] = v68;
    v43 = "%{public}@ HumanBodyDetectionEnabled %s";
    goto LABEL_23;
  }

  v69 = [*v3 name];
  v70 = [v69 isEqualToString:@"HumanFullBodyDetectionEnabled"];

  if (v70)
  {
    v71 = [WeakRetained activeConfiguration];
    v72 = [v71 humanFullBodyDetectionEnabled];
    v73 = [*v3 value];
    v74 = [v73 BOOLValue];

    if (v72 == v74)
    {
      goto LABEL_4;
    }

    v75 = [*v3 value];
    v76 = [v75 BOOLValue];
    v77 = [WeakRetained activeConfiguration];
    [v77 setHumanFullBodyDetectionEnabled:v76];

    v34 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v35 = [WeakRetained activeConfiguration];
    v78 = [v35 humanFullBodyDetectionEnabled];
    v79 = "Off";
    if (v78)
    {
      v79 = "On";
    }

    *v313 = 138543618;
    *&v313[4] = WeakRetained;
    *&v313[12] = 2080;
    *&v313[14] = v79;
    v43 = "%{public}@ HumanFullBodyDetectionEnabled %s";
    goto LABEL_23;
  }

  v80 = [*v3 name];
  v81 = [v80 isEqualToString:@"AsyncStillCaptureEnabled"];

  if (v81)
  {
    v82 = [WeakRetained activeConfiguration];
    v83 = [v82 asyncStillCaptureEnabled];
    v84 = [*v3 value];
    v85 = [v84 BOOLValue];

    if (v83 == v85)
    {
      goto LABEL_4;
    }

    v86 = [*v3 value];
    v87 = [v86 BOOLValue];
    v88 = [WeakRetained activeConfiguration];
    [v88 setAsyncStillCaptureEnabled:v87];

    v34 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v35 = [WeakRetained activeConfiguration];
    v89 = [v35 asyncStillCaptureEnabled];
    v90 = "Off";
    if (v89)
    {
      v90 = "On";
    }

    *v313 = 138543618;
    *&v313[4] = WeakRetained;
    *&v313[12] = 2080;
    *&v313[14] = v90;
    v43 = "%{public}@ AsyncStillCaptureEnabled %s";
    goto LABEL_23;
  }

  v91 = [*v3 name];
  v92 = [v91 isEqualToString:@"SuppressVideoEffects"];

  if (v92)
  {
    v93 = [WeakRetained activeConfiguration];
    v94 = [v93 suppressVideoEffects];
    v95 = [*v3 value];
    v96 = [v95 BOOLValue];

    if (v94 == v96)
    {
      goto LABEL_4;
    }

    v97 = [*v3 value];
    v98 = [v97 BOOLValue];
    v99 = [WeakRetained activeConfiguration];
    [v99 setSuppressVideoEffects:v98];

    v34 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v35 = [WeakRetained activeConfiguration];
    v100 = [v35 suppressVideoEffects];
    v101 = "Off";
    if (v100)
    {
      v101 = "On";
    }

    *v313 = 138543618;
    *&v313[4] = WeakRetained;
    *&v313[12] = 2080;
    *&v313[14] = v101;
    v43 = "%{public}@ SuppressVideoEffects %s";
    goto LABEL_23;
  }

  v102 = [*v3 name];
  v103 = [v102 isEqualToString:@"PortraitEffectEnabled"];

  if (v103)
  {
    v104 = [WeakRetained activeConfiguration];
    v105 = [v104 portraitEffectEnabled];
    v106 = [*v3 value];
    v107 = [v106 BOOLValue];

    if (v105 == v107)
    {
      goto LABEL_4;
    }

    v108 = [*v3 value];
    v109 = [v108 BOOLValue];
    v110 = [WeakRetained activeConfiguration];
    [v110 setPortraitEffectEnabled:v109];

    v34 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v35 = [WeakRetained activeConfiguration];
    v111 = [v35 portraitEffectEnabled];
    v112 = "Off";
    if (v111)
    {
      v112 = "On";
    }

    *v313 = 138543618;
    *&v313[4] = WeakRetained;
    *&v313[12] = 2080;
    *&v313[14] = v112;
    v43 = "%{public}@ PortraitEffectEnabled %s";
    goto LABEL_23;
  }

  v113 = [*v3 name];
  v114 = [v113 isEqualToString:@"VideoZoomFactor"];

  v115 = *v3;
  if (v114)
  {
    v116 = [v115 value];
    [v116 doubleValue];
    v118 = v117;

    v119 = [WeakRetained activeConfiguration];
    [v119 videoZoomFactor];
    v121 = v120;

    if (v121 == v118)
    {
      goto LABEL_4;
    }

    v122 = [WeakRetained activeConfiguration];
    [v122 setVideoZoomFactor:v118];

    v34 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v35 = [WeakRetained activeConfiguration];
    [v35 videoZoomFactor];
    *v313 = 138543618;
    *&v313[4] = WeakRetained;
    *&v313[12] = 2048;
    *&v313[14] = v123;
    v43 = "%{public}@ VideoZoomFactor %.2f";
    goto LABEL_23;
  }

  v124 = [v115 name];
  v125 = [v124 isEqualToString:@"StudioLightingEnabled"];

  if (v125)
  {
    v126 = [WeakRetained activeConfiguration];
    v127 = [v126 studioLightingEnabled];
    v128 = [*v3 value];
    v129 = [v128 BOOLValue];

    if (v127 == v129)
    {
      goto LABEL_4;
    }

    v130 = [*v3 value];
    v131 = [v130 BOOLValue];
    v132 = [WeakRetained activeConfiguration];
    [v132 setStudioLightingEnabled:v131];

    v34 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v35 = [WeakRetained activeConfiguration];
    v133 = [v35 studioLightingEnabled];
    v134 = "Off";
    if (v133)
    {
      v134 = "On";
    }

    *v313 = 138543618;
    *&v313[4] = WeakRetained;
    *&v313[12] = 2080;
    *&v313[14] = v134;
    v43 = "%{public}@ StudioLightingEnabled %s";
    goto LABEL_23;
  }

  v135 = [*v3 name];
  v136 = [v135 isEqualToString:@"ReactionEffectsEnabled"];

  if (v136)
  {
    v137 = [WeakRetained activeConfiguration];
    v138 = [v137 reactionEffectsEnabled];
    v139 = [*v3 value];
    v140 = [v139 BOOLValue];

    if (v138 == v140)
    {
      goto LABEL_4;
    }

    v141 = [*v3 value];
    v142 = [v141 BOOLValue];
    v143 = [WeakRetained activeConfiguration];
    [v143 setReactionEffectsEnabled:v142];

    v34 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v35 = [WeakRetained activeConfiguration];
    v144 = [v35 reactionEffectsEnabled];
    v145 = "Off";
    if (v144)
    {
      v145 = "On";
    }

    *v313 = 138543618;
    *&v313[4] = WeakRetained;
    *&v313[12] = 2080;
    *&v313[14] = v145;
    v43 = "%{public}@ ReactionEffectsEnabled %s";
    goto LABEL_23;
  }

  v146 = [*v3 name];
  v147 = [v146 isEqualToString:@"BackgroundReplacementEnabled"];

  if (v147)
  {
    v148 = [WeakRetained activeConfiguration];
    v149 = [v148 backgroundReplacementEnabled];
    v150 = [*v3 value];
    v151 = [v150 BOOLValue];

    if (v149 == v151)
    {
      goto LABEL_4;
    }

    v152 = [*v3 value];
    v153 = [v152 BOOLValue];
    v154 = [WeakRetained activeConfiguration];
    [v154 setBackgroundReplacementEnabled:v153];

    v34 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v35 = [WeakRetained activeConfiguration];
    v155 = [v35 backgroundReplacementEnabled];
    v156 = "Off";
    if (v155)
    {
      v156 = "On";
    }

    *v313 = 138543618;
    *&v313[4] = WeakRetained;
    *&v313[12] = 2080;
    *&v313[14] = v156;
    v43 = "%{public}@ BackgroundReplacementEnabled %s";
    goto LABEL_23;
  }

  v157 = [*v3 name];
  v158 = [v157 isEqualToString:@"AsyncStillCaptureConfigurations"];

  v159 = *v3;
  if (v158)
  {
    v160 = [v159 value];
    v161 = [WeakRetained activeConfiguration];
    [v161 setAsyncStillCaptureConfigs:v160];

    v162 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
    {
      v163 = [WeakRetained activeConfiguration];
      v164 = [v163 asyncStillCaptureConfigs];
      *v313 = 138543618;
      *&v313[4] = WeakRetained;
      *&v313[12] = 2112;
      *&v313[14] = v164;
      _os_log_impl(&dword_242545000, v162, OS_LOG_TYPE_DEFAULT, "%{public}@ AsyncStillCaptureConfigs %@", v313, 0x16u);
    }

    goto LABEL_103;
  }

  v165 = [v159 name];
  v166 = [v165 isEqualToString:@"OverheadCameraMode"];

  if (v166)
  {
    v167 = [WeakRetained activeConfiguration];
    v168 = [v167 deskViewCameraMode];
    v169 = [*v3 value];
    v170 = [v169 unsignedIntValue];

    if (v168 == v170)
    {
      goto LABEL_4;
    }

    v171 = [*v3 value];
    v172 = [v171 unsignedIntValue];
    v173 = [WeakRetained activeConfiguration];
    [v173 setDeskViewCameraMode:v172];

    v34 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v35 = [WeakRetained activeConfiguration];
    *v313 = 138543618;
    *&v313[4] = WeakRetained;
    *&v313[12] = 1024;
    *&v313[14] = [v35 deskViewCameraMode];
    v43 = "%{public}@ DeskViewCameraMode %u";
LABEL_94:
    v44 = v34;
    v45 = 18;
    goto LABEL_24;
  }

  v174 = [*v3 name];
  v175 = [v174 isEqualToString:@"StartPanningAtPoint"];

  if (v175)
  {
    point.x = NAN;
    point.y = NAN;
    v176 = [*v3 value];
    CGPointMakeWithDictionaryRepresentation(v176, &point);

    v162 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
    {
      *v313 = 138544130;
      *&v313[4] = WeakRetained;
      *&v313[12] = 2080;
      *&v313[14] = "[CMContinuityCaptureVideoDevice setValueForControl:completion:]_block_invoke";
      *&v313[22] = 2048;
      x = point.x;
      LOWORD(v315) = 2048;
      *(&v315 + 2) = point.y;
      v177 = "%{public}@ (%s) StartPanningAtPoint {%.3f, %.3f}";
LABEL_101:
      v181 = v162;
      v182 = 42;
LABEL_102:
      _os_log_impl(&dword_242545000, v181, OS_LOG_TYPE_DEFAULT, v177, v313, v182);
      goto LABEL_103;
    }

    goto LABEL_103;
  }

  v178 = [*v3 name];
  v179 = [v178 isEqualToString:@"PanWithTranslation"];

  if (v179)
  {
    point.x = NAN;
    point.y = NAN;
    v180 = [*v3 value];
    CGPointMakeWithDictionaryRepresentation(v180, &point);

    v162 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
    {
      *v313 = 138544130;
      *&v313[4] = WeakRetained;
      *&v313[12] = 2080;
      *&v313[14] = "[CMContinuityCaptureVideoDevice setValueForControl:completion:]_block_invoke";
      *&v313[22] = 2048;
      x = point.x;
      LOWORD(v315) = 2048;
      *(&v315 + 2) = point.y;
      v177 = "%{public}@ (%s) PanWithTransaltion {%.3f, %.3f}";
      goto LABEL_101;
    }

LABEL_103:

    goto LABEL_27;
  }

  v183 = [*v3 name];
  v184 = [v183 isEqualToString:@"PerformOneShotFraming"];

  if (v184)
  {
    v162 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_103;
    }

    *v313 = 138543618;
    *&v313[4] = WeakRetained;
    *&v313[12] = 2080;
    *&v313[14] = "[CMContinuityCaptureVideoDevice setValueForControl:completion:]_block_invoke";
    v177 = "%{public}@ (%s) PerformOneShotFraming";
    goto LABEL_110;
  }

  v185 = [*v3 name];
  v186 = [v185 isEqualToString:@"ResetFraming"];

  if (v186)
  {
    v162 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_103;
    }

    *v313 = 138543618;
    *&v313[4] = WeakRetained;
    *&v313[12] = 2080;
    *&v313[14] = "[CMContinuityCaptureVideoDevice setValueForControl:completion:]_block_invoke";
    v177 = "%{public}@ (%s) ResetFraming";
LABEL_110:
    v181 = v162;
    v182 = 22;
    goto LABEL_102;
  }

  v187 = [*v3 name];
  v188 = [v187 isEqualToString:@"CenterStageFieldOfViewRestrictedToWide"];

  v189 = *v3;
  if (v188)
  {
    v190 = [v189 value];
    v191 = [v190 BOOLValue];

    v192 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
    {
      *v313 = 138543874;
      *&v313[4] = WeakRetained;
      *&v313[12] = 2080;
      *&v313[14] = "[CMContinuityCaptureVideoDevice setValueForControl:completion:]_block_invoke";
      *&v313[22] = 1024;
      LODWORD(x) = v191;
      _os_log_impl(&dword_242545000, v192, OS_LOG_TYPE_DEFAULT, "%{public}@ (%s) CenterStageFieldOfViewRestrictedToWide %d", v313, 0x1Cu);
    }

    v193 = [WeakRetained transportDevice];
    [v193 setValueForControl:*v3 completion:0];

    v194 = [WeakRetained activeConfiguration];
    [v194 setCenterStageFieldOfViewRestrictedToWide:v191];

    [WeakRetained updateForcefulCenterStageEnablementStateIfNeededWithCenterStageRestrictedToWide:v191];
    goto LABEL_4;
  }

  v195 = [v189 name];
  v196 = [v195 isEqualToString:@"ManualFramingDeviceType"];

  v197 = *v3;
  if (v196)
  {
    v198 = [v197 value];
    v199 = [v198 integerValue];

    v200 = [WeakRetained activeConfiguration];
    v201 = [v200 manualFramingDeviceType];

    if (v201 == v199)
    {
      goto LABEL_4;
    }

    v34 = CMContinuityCaptureLog(2);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v35 = [CMContinuityCaptureConfiguration stringForManualFramingDeviceType:v199];
    *v313 = 138543874;
    *&v313[4] = WeakRetained;
    *&v313[12] = 2080;
    *&v313[14] = "[CMContinuityCaptureVideoDevice setValueForControl:completion:]_block_invoke";
    *&v313[22] = 2112;
    x = *&v35;
    v43 = "%{public}@ (%s) ManualFramingDeviceType %@";
    v44 = v34;
    v45 = 32;
    goto LABEL_24;
  }

  v202 = [v197 name];
  v203 = [v202 isEqualToString:@"CMIOExtensionPropertyStreamFrameDuration"];

  if (v203)
  {
    v204 = [WeakRetained activeConfiguration];
    v205 = [v204 maxFrameRate];
    v206 = [*v3 value];
    v207 = [v206 unsignedIntValue];

    if (v205 != v207)
    {
      v208 = [*v3 value];
      v209 = [v208 unsignedIntValue];
      v210 = [WeakRetained activeConfiguration];
      [v210 setMaxFrameRate:v209];

      v211 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
      {
        v212 = [WeakRetained activeConfiguration];
        *v313 = 138543618;
        *&v313[4] = WeakRetained;
        *&v313[12] = 1024;
        *&v313[14] = [v212 maxFrameRate];
        _os_log_impl(&dword_242545000, v211, OS_LOG_TYPE_DEFAULT, "%{public}@ MaxFrameRate %u", v313, 0x12u);
      }

      [WeakRetained[34] setValueForControl:*v3 completion:0];
      v213 = [WeakRetained transportDevice];
      [v213 setValueForControl:*v3 completion:0];

LABEL_124:
      [WeakRetained restartSendingInvalidFramesIfApplicable];
      goto LABEL_4;
    }

LABEL_3:
    [WeakRetained[34] setValueForControl:*v3 completion:{0, *v313, *&v313[16]}];
    goto LABEL_4;
  }

  v214 = [*v3 name];
  v215 = [v214 isEqualToString:@"CMIOExtensionPropertyStreamMaxFrameDuration"];

  if (v215)
  {
    v216 = [WeakRetained activeConfiguration];
    v217 = [v216 minFrameRate];
    v218 = [*v3 value];
    v219 = [v218 unsignedIntValue];

    if (v217 != v219)
    {
      v220 = [*v3 value];
      v221 = [v220 unsignedIntValue];
      v222 = [WeakRetained activeConfiguration];
      [v222 setMinFrameRate:v221];

      v34 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v35 = [WeakRetained activeConfiguration];
      *v313 = 138543618;
      *&v313[4] = WeakRetained;
      *&v313[12] = 1024;
      *&v313[14] = [v35 minFrameRate];
      v43 = "%{public}@ MinFrameRate %u";
      goto LABEL_94;
    }

    goto LABEL_3;
  }

  v223 = [*v3 name];
  v224 = [v223 isEqualToString:@"ActiveFormat"];

  if (!v224)
  {
    v235 = [*v3 name];
    v236 = [v235 isEqualToString:@"PortraitEffectAperture"];

    if (v236)
    {
      v237 = [WeakRetained activeConfiguration];
      [v237 portraitEffectAperture];
      v239 = v238;
      v240 = [*v3 value];
      [v240 floatValue];
      v242 = v241;

      if (v239 == v242)
      {
        goto LABEL_4;
      }

      v243 = [*v3 value];
      [v243 floatValue];
      v245 = v244;
      v246 = [WeakRetained activeConfiguration];
      LODWORD(v247) = v245;
      [v246 setPortraitEffectAperture:v247];

      v34 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v35 = [WeakRetained activeConfiguration];
      [v35 portraitEffectAperture];
      *v313 = 138543618;
      *&v313[4] = WeakRetained;
      *&v313[12] = 2048;
      *&v313[14] = v248;
      v43 = "%{public}@ PortraitEffectAperture %f";
      goto LABEL_23;
    }

    v249 = [*v3 name];
    v250 = [v249 isEqualToString:@"StudioLightingIntensity"];

    if (v250)
    {
      v251 = [WeakRetained activeConfiguration];
      [v251 studioLightingIntensity];
      v253 = v252;
      v254 = [*v3 value];
      [v254 floatValue];
      v256 = v255;

      if (v253 == v256)
      {
        goto LABEL_4;
      }

      v257 = [*v3 value];
      [v257 floatValue];
      v259 = v258;
      v260 = [WeakRetained activeConfiguration];
      LODWORD(v261) = v259;
      [v260 setStudioLightingIntensity:v261];

      v34 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v35 = [WeakRetained activeConfiguration];
      [v35 studioLightingIntensity];
      *v313 = 138543618;
      *&v313[4] = WeakRetained;
      *&v313[12] = 2048;
      *&v313[14] = v262;
      v43 = "%{public}@ StudioLightingIntensity %f";
      goto LABEL_23;
    }

    v281 = [*v3 name];
    v282 = [v281 isEqualToString:@"GesturesEnabled"];

    if (v282)
    {
      v283 = [WeakRetained activeConfiguration];
      v284 = [v283 reactionEffectGesturesEnabled];
      v285 = [*v3 value];
      v286 = [v285 BOOLValue];

      if (v284 == v286)
      {
        goto LABEL_4;
      }

      v287 = [*v3 value];
      v288 = [v287 BOOLValue];
      v289 = [WeakRetained activeConfiguration];
      [v289 setReactionEffectGesturesEnabled:v288];

      v34 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v35 = [WeakRetained activeConfiguration];
      *v313 = 138543618;
      *&v313[4] = WeakRetained;
      *&v313[12] = 1024;
      *&v313[14] = [v35 reactionEffectGesturesEnabled];
      v43 = "%{public}@ ReactionEffectGesturesEnabled %d";
      goto LABEL_94;
    }

    v290 = [*v3 name];
    v291 = [v290 isEqualToString:@"SuppressedGesturesEnabled"];

    if (v291)
    {
      v292 = [WeakRetained activeConfiguration];
      v293 = [v292 reactionEffectSuppressedGesturesEnabled];
      v294 = [*v3 value];
      v295 = [v294 BOOLValue];

      if (v293 == v295)
      {
        goto LABEL_4;
      }

      v296 = [*v3 value];
      v297 = [v296 BOOLValue];
      v298 = [WeakRetained activeConfiguration];
      [v298 setReactionEffectSuppressedGesturesEnabled:v297];

      v34 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v35 = [WeakRetained activeConfiguration];
      *v313 = 138543618;
      *&v313[4] = WeakRetained;
      *&v313[12] = 1024;
      *&v313[14] = [v35 reactionEffectSuppressedGesturesEnabled];
      v43 = "%{public}@ ReactionEffectSuppressedGesturesEnabled %d";
      goto LABEL_94;
    }

    v299 = [*v3 name];
    v300 = [v299 isEqualToString:@"ReactionsInProgress"];

    if (v300)
    {
      v301 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v301, OS_LOG_TYPE_DEFAULT))
      {
LABEL_166:

        goto LABEL_3;
      }

      v302 = [*v3 value];
      *v313 = 138543618;
      *&v313[4] = WeakRetained;
      *&v313[12] = 2112;
      *&v313[14] = v302;
      v303 = "%{public}@ ReactionsInProgress %@";
    }

    else
    {
      v304 = [*v3 name];
      v305 = [v304 isEqualToString:@"SuppressedGesture"];

      if (!v305)
      {
        v306 = [*v3 name];
        v307 = [v306 isEqualToString:@"BackgroundReplacementPixelBuffer"];

        if (!v307)
        {
          v46 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            __64__CMContinuityCaptureVideoDevice_setValueForControl_completion___block_invoke_cold_1(WeakRetained, v3);
          }

          goto LABEL_28;
        }

        v308 = [WeakRetained activeConfiguration];
        v309 = [v308 backgroundReplacementPixelBuffer];
        v310 = [*v3 value];

        if (v309 == v310)
        {
          goto LABEL_4;
        }

        v311 = [*v3 value];
        v312 = [WeakRetained activeConfiguration];
        [v312 setBackgroundReplacementPixelBuffer:v311];

        v34 = CMContinuityCaptureLog(2);
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        v35 = [WeakRetained activeConfiguration];
        *v313 = 138543618;
        *&v313[4] = WeakRetained;
        *&v313[12] = 2112;
        *&v313[14] = [v35 backgroundReplacementPixelBuffer];
        v43 = "%{public}@ BackgroundReplacementPixelBuffer %@";
LABEL_23:
        v44 = v34;
        v45 = 22;
LABEL_24:
        _os_log_impl(&dword_242545000, v44, OS_LOG_TYPE_DEFAULT, v43, v313, v45);
        goto LABEL_25;
      }

      v301 = CMContinuityCaptureLog(2);
      if (!os_log_type_enabled(v301, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_166;
      }

      v302 = [*v3 value];
      *v313 = 138543618;
      *&v313[4] = WeakRetained;
      *&v313[12] = 2112;
      *&v313[14] = v302;
      v303 = "%{public}@ SuppressedGesture %@";
    }

    _os_log_impl(&dword_242545000, v301, OS_LOG_TYPE_DEFAULT, v303, v313, 0x16u);

    goto LABEL_166;
  }

  v225 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v225, OS_LOG_TYPE_DEFAULT))
  {
    v226 = [WeakRetained activeConfiguration];
    v227 = [v226 format];
    v228 = [*v3 value];
    *v313 = 138543874;
    *&v313[4] = WeakRetained;
    *&v313[12] = 2114;
    *&v313[14] = v227;
    *&v313[22] = 2114;
    x = *&v228;
    _os_log_impl(&dword_242545000, v225, OS_LOG_TYPE_DEFAULT, "%{public}@ format change %{public}@ to %{public}@", v313, 0x20u);
  }

  v229 = [WeakRetained activeConfiguration];
  v230 = [v229 format];
  if (v230)
  {
    v231 = [WeakRetained activeConfiguration];
    v232 = [v231 format];
    v233 = [*v3 value];
    v234 = [v232 isEqual:v233] ^ 1;
  }

  else
  {
    v234 = 0;
  }

  v263 = [*v3 value];
  v264 = [WeakRetained activeConfiguration];
  [v264 setFormat:v263];

  v265 = [WeakRetained activeConfiguration];
  v266 = [v265 format];
  v267 = [v266 maxFrameRate];
  v268 = [WeakRetained activeConfiguration];
  [v268 setMaxFrameRate:v267];

  v269 = [WeakRetained activeConfiguration];
  v270 = [v269 format];
  v271 = [v270 maxFrameRate];
  v272 = [WeakRetained activeConfiguration];
  [v272 setMinFrameRate:v271];

  if (v234 && [WeakRetained streaming])
  {
    v273 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v273, OS_LOG_TYPE_DEFAULT))
    {
      v274 = [WeakRetained activeConfiguration];
      v275 = [v274 format];
      *v313 = 138543618;
      *&v313[4] = WeakRetained;
      *&v313[12] = 2114;
      *&v313[14] = v275;
      _os_log_impl(&dword_242545000, v273, OS_LOG_TYPE_DEFAULT, "%{public}@ format changed to %{public}@", v313, 0x16u);
    }

    v276 = [WeakRetained compositeDelegate];
    [v276 postEvent:@"kCMContinuityCaptureEventForceRestartStream" entity:objc_msgSend(WeakRetained data:{"entity"), 0}];

    goto LABEL_124;
  }

  v277 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v277, OS_LOG_TYPE_DEFAULT))
  {
    v278 = [WeakRetained activeConfiguration];
    v279 = [v278 format];
    v280 = [WeakRetained streaming];
    *v313 = 138543874;
    *&v313[4] = WeakRetained;
    *&v313[12] = 2114;
    *&v313[14] = v279;
    *&v313[22] = 1024;
    LODWORD(x) = v280;
    _os_log_impl(&dword_242545000, v277, OS_LOG_TYPE_DEFAULT, "%{public}@ format unchanged %{public}@ or invalid stream state %d", v313, 0x1Cu);
  }

LABEL_4:
}

- (CMContinuityCaptureVideoDevice)companionDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_companionDevice);

  return WeakRetained;
}

- (CMContinuityCaptureVideoDevice)initWithCapabilities:(id)a3 compositeDelegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 client];
  v9 = [v8 device];
  v24.receiver = self;
  v24.super_class = CMContinuityCaptureVideoDevice;
  v10 = [(CMContinuityCaptureDeviceBase *)&v24 initWithCapabilities:v7 compositeDelegate:v6 transportDevice:v9 queue:0];

  if (!v10)
  {
LABEL_8:
    v15 = 0;
    goto LABEL_4;
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  centerStageStateRestorationDataArray = v10->_centerStageStateRestorationDataArray;
  v10->_centerStageStateRestorationDataArray = v11;

  v13 = [[CMContinuityCaptureCMIOVideoDevice alloc] initWithCaptureDevice:v10];
  cmioCaptureDevice = v10->_cmioCaptureDevice;
  v10->_cmioCaptureDevice = v13;

  if (!v10->_cmioCaptureDevice)
  {
    v17 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_3_1();
      _os_log_error_impl(v18, v19, v20, v21, v22, v23);
    }

    goto LABEL_8;
  }

  v10->_manualFramingEnabled = _os_feature_enabled_impl();
  v15 = v10;
LABEL_4:

  return v15;
}

- (opaqueCMSampleBuffer)createBlackSampleBuffer
{
  sampleBufferOut = 0;
  pixelBufferOut = 0;
  *&sampleTiming.duration.value = *MEMORY[0x277CC0898];
  sampleTiming.duration.epoch = *(MEMORY[0x277CC0898] + 16);
  sampleTiming.presentationTimeStamp = **&MEMORY[0x277CC08F0];
  sampleTiming.decodeTimeStamp = sampleTiming.duration;
  formatDescriptionOut = 0;
  v4 = *MEMORY[0x277CC4DE8];
  v24[0] = *MEMORY[0x277CC4C40];
  v3 = v24[0];
  v24[1] = v4;
  v25[0] = &unk_2854EC800;
  v25[1] = MEMORY[0x277CBEC10];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  v6 = *MEMORY[0x277CBECE8];
  v7 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  v8 = [v7 format];
  v9 = [v8 width];
  v10 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  v11 = [v10 format];
  LODWORD(v9) = CVPixelBufferCreate(v6, v9, [v11 height], 0x42475241u, v5, &pixelBufferOut);

  if (!v9)
  {
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    Width = CVPixelBufferGetWidth(pixelBufferOut);
    Height = CVPixelBufferGetHeight(pixelBufferOut);
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
    if (Height * Width)
    {
      memset_pattern16(BaseAddress, &unk_2425D80C0, 4 * Height * Width);
    }

    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    CMVideoFormatDescriptionCreateForImageBuffer(v6, pixelBufferOut, &formatDescriptionOut);
    CMSampleBufferCreateReadyWithImageBuffer(v6, pixelBufferOut, formatDescriptionOut, &sampleTiming, &sampleBufferOut);
    if (sampleBufferOut)
    {
      CMSetAttachment(sampleBufferOut, @"kCMContinuityCaptureAttachmentFrameType", &unk_2854EC818, 1u);
    }
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  v15 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543874;
    v19 = self;
    v20 = 2080;
    v21 = "[CMContinuityCaptureVideoDevice createBlackSampleBuffer]";
    v22 = 2048;
    v23 = sampleBufferOut;
    _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %p", &v18, 0x20u);
  }

  v16 = sampleBufferOut;
  return v16;
}

- (opaqueCMSampleBuffer)createBlurredSampleBuffer
{
  formatDescriptionOut = 0;
  sampleBufferOut = 0;
  pixelBufferOut = 0;
  lastDispatchedSampleBuffer = self->_lastDispatchedSampleBuffer;
  if (!lastDispatchedSampleBuffer)
  {
    lastDispatchedSampleBuffer = [(CMContinuityCaptureVideoDevice *)self createBlackSampleBuffer];
    self->_lastDispatchedSampleBuffer = lastDispatchedSampleBuffer;
  }

  sampleTiming.decodeTimeStamp.epoch = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&sampleTiming.presentationTimeStamp.timescale = v4;
  *&sampleTiming.decodeTimeStamp.value = v4;
  *&sampleTiming.duration.value = v4;
  *&sampleTiming.duration.epoch = v4;
  ImageBuffer = CMSampleBufferGetImageBuffer(lastDispatchedSampleBuffer);
  if (!ImageBuffer)
  {
    goto LABEL_25;
  }

  v6 = ImageBuffer;
  v7 = CVPixelBufferCopyCreationAttributes(ImageBuffer);
  if (!v7)
  {
    v22 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_1_1(&dword_242545000, v35, v36, "%@ invalid pixelBuffer attributes", v37, v38, v39, v40, v53.value);
    }

LABEL_25:
    v9 = 0;
    v8 = 0;
LABEL_29:
    v15 = 0;
    v13 = 0;
    goto LABEL_15;
  }

  v8 = v7;
  v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v7];
  v10 = *MEMORY[0x277CC4C40];
  [v9 setObject:&unk_2854EC800 forKeyedSubscript:*MEMORY[0x277CC4C40]];

  v11 = *MEMORY[0x277CC4DE8];
  [v9 setObject:MEMORY[0x277CBEC10] forKeyedSubscript:*MEMORY[0x277CC4DE8]];

  v12 = [objc_alloc(MEMORY[0x277CBF758]) initWithCVPixelBuffer:v6];
  if (!v12)
  {
    v23 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_3_1();
      _os_log_error_impl(v41, v42, v43, v44, v45, v46);
    }

    goto LABEL_29;
  }

  v13 = v12;
  v14 = [v12 imageByApplyingGaussianBlurWithSigma:26.0];
  if (v14)
  {
    v15 = v14;
    Width = CVPixelBufferGetWidth(v6);
    Height = CVPixelBufferGetHeight(v6);
    PixelFormatType = CVPixelBufferGetPixelFormatType(v6);
    if (CVPixelBufferCreate(0, Width, Height, PixelFormatType, v9, &pixelBufferOut) || !pixelBufferOut)
    {
      v25 = CMContinuityCaptureLog(2);
      if (OUTLINED_FUNCTION_14(v25))
      {
        OUTLINED_FUNCTION_2_1();
        v26 = &dword_242545000;
        v27 = "%@ pixelBuffer create error %u";
LABEL_41:
        v31 = &v53;
        v29 = v6;
        v30 = OS_LOG_TYPE_ERROR;
        v32 = 18;
        goto LABEL_42;
      }
    }

    else
    {
      CVBufferPropagateAttachments(v6, pixelBufferOut);
      v6 = [MEMORY[0x277CBF740] context];
      [(__CVBuffer *)v6 render:v15 toCVPixelBuffer:pixelBufferOut];

      if (pixelBufferOut)
      {
        if (!CMVideoFormatDescriptionCreateForImageBuffer(0, pixelBufferOut, &formatDescriptionOut) && formatDescriptionOut)
        {
          sampleTiming.decodeTimeStamp = **&MEMORY[0x277CC0898];
          HostTimeInNanoSec = CMContinuityCaptureGetHostTimeInNanoSec();
          CMTimeMake(&sampleTiming.presentationTimeStamp, HostTimeInNanoSec, 1000000000);
          v6 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
          CMTimeMake(&v53, 1, [(__CVBuffer *)v6 maxFrameRate]);
          sampleTiming.duration = v53;

          if (!CMSampleBufferCreateReadyWithImageBuffer(0, pixelBufferOut, formatDescriptionOut, &sampleTiming, &sampleBufferOut) && sampleBufferOut)
          {
            CMSetAttachment(sampleBufferOut, @"kCMContinuityCaptureAttachmentFrameType", &unk_2854EC830, 1u);
            goto LABEL_15;
          }

          v34 = CMContinuityCaptureLog(2);
          if (!OUTLINED_FUNCTION_14(v34))
          {
            goto LABEL_43;
          }

          OUTLINED_FUNCTION_2_1();
          v26 = &dword_242545000;
          v27 = "%@ Failed to create sample buffer %u";
          goto LABEL_41;
        }

        v33 = CMContinuityCaptureLog(2);
        if (OUTLINED_FUNCTION_14(v33))
        {
          OUTLINED_FUNCTION_2_1();
          v26 = &dword_242545000;
          v27 = "%@ Error CMVideoFormatDescriptionCreateForImageBuffer %u";
          goto LABEL_41;
        }
      }

      else
      {
        v28 = CMContinuityCaptureLog(2);
        if (OUTLINED_FUNCTION_14(v28))
        {
          OUTLINED_FUNCTION_7_1();
          OUTLINED_FUNCTION_3_1();
LABEL_42:
          _os_log_error_impl(v26, v29, v30, v27, v31, v32);
        }
      }
    }

LABEL_43:

    goto LABEL_15;
  }

  v24 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_3_1();
    _os_log_error_impl(v47, v48, v49, v50, v51, v52);
  }

  v15 = 0;
LABEL_15:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  v20 = sampleBufferOut;

  return v20;
}

- (id)createAVCVideoStream
{
  v43[0] = 0xAAAAAAAAAAAAAAAALL;
  v43[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = [(CMContinuityCaptureDeviceBase *)self transportStream];
  v5 = v4;
  if (!v4)
  {
    v18 = 0;
    v13 = 0;
    v6 = 0;
LABEL_21:
    v29 = 0;
    v30 = 0;
    goto LABEL_16;
  }

  v6 = [v4 streamUUID];
  if (!v6)
  {
    v18 = 0;
    v13 = 0;
    goto LABEL_21;
  }

  v7 = CMContinuityCaptureLog(2);
  if (OUTLINED_FUNCTION_16(v7))
  {
    [(CMContinuityCaptureDeviceBase *)self currentSessionID];
    OUTLINED_FUNCTION_12();
    v41 = 2112;
    v42 = v6;
    OUTLINED_FUNCTION_0_3();
    _os_log_impl(v8, v9, v10, v11, v12, 0x20u);
  }

  [v6 getUUIDBytes:v43];
  v13 = [(CMContinuityCaptureDeviceBase *)self avcStreamNegotiator];

  if (!v13)
  {
    v15 = 0;
    goto LABEL_9;
  }

  v14 = [(CMContinuityCaptureDeviceBase *)self avcStreamNegotiator];
  v37 = 0;
  v13 = [v14 generateMediaStreamInitOptionsWithError:&v37];
  v15 = v37;

  v16 = [v13 objectForKeyedSubscript:*MEMORY[0x277CE57C8]];
  avcStreamCallID = self->_avcStreamCallID;
  self->_avcStreamCallID = v16;

  if (!v13)
  {
LABEL_9:
    v19 = CMContinuityCaptureLog(2);
    if (OUTLINED_FUNCTION_16(v19))
    {
      *buf = 138543618;
      v39 = self;
      OUTLINED_FUNCTION_9_1();
      v40 = v15;
      OUTLINED_FUNCTION_0_3();
      _os_log_impl(v20, v21, v22, v23, v24, 0x16u);
    }

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = 0;
    v15 = 0;
    goto LABEL_12;
  }

  v18 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v13];
LABEL_12:
  [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CE57E0]];
  v25 = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  v26 = [v25 client];
  v27 = [v26 metricReporter];
  v28 = [v27 sessionUUID];
  [v18 setObject:v28 forKeyedSubscript:*MEMORY[0x277CE57D8]];

  v36 = v15;
  v29 = [objc_alloc(MEMORY[0x277CE5758]) initWithNWConnectionClientID:v43 options:v18 error:&v36];
  v30 = v36;

  if (v29)
  {
    [v29 setDelegate:self];
    v15 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      [(CMContinuityCaptureDeviceBase *)self currentSessionID];
      OUTLINED_FUNCTION_12();
      v41 = v31;
      v42 = v29;
      _os_log_impl(&dword_242545000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] createAVCVideoStream %p Success", buf, 0x20u);
    }
  }

  else
  {
    v34 = CMContinuityCaptureLog(2);
    if (OUTLINED_FUNCTION_14(v34))
    {
      *buf = 138543618;
      v39 = self;
      OUTLINED_FUNCTION_9_1();
      v40 = v30;
      OUTLINED_FUNCTION_11_0(&dword_242545000, v15, v35, "%{public}@ AVCVideoStream create error %@", buf);
    }

    v29 = 0;
  }

LABEL_16:
  v32 = v29;

  return v32;
}

- (id)newVideoStreamCurrentConfiguration
{
  v3 = [(CMContinuityCaptureDeviceBase *)self transportStream];
  if (!v3)
  {
    v6 = 0;
    v9 = 0;
    v8 = 0;
    goto LABEL_11;
  }

  v4 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  v5 = [v4 sessionID];
  v6 = [v3 cipherKeyforSessionID:v5];

  if (v6)
  {
    v7 = [(CMContinuityCaptureDeviceBase *)self avcStreamNegotiator];
    v57 = 0;
    v8 = [v7 generateMediaStreamConfigurationWithError:&v57];
    v9 = v57;

    if (v8)
    {
      [v8 setRtcpSendInterval:1.0];
      [v8 setRtcpTimeOutEnabled:1];
      v10 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      v11 = [v10 wired];
      v12 = 12.0;
      if (v11)
      {
        v12 = 8.0;
      }

      [v8 setRtcpTimeOutInterval:v12];

      [v8 setSRTPCipherSuite:5];
      [v8 setSRTCPCipherSuite:5];
      [OUTLINED_FUNCTION_17() setSendMediaKey:?];
      [OUTLINED_FUNCTION_17() setReceiveMediaKey:?];
      v13 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v14 = [v13 format];
      AVCVideoResolutionForFormat = CMContinuityCaptureGetAVCVideoResolutionForFormat(v14);
      v16 = [v8 video];
      [v16 setVideoResolution:AVCVideoResolutionForFormat];

      v17 = [v8 video];
      v18 = [v17 videoResolution];

      if (v18 == 12)
      {
        v19 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        v20 = [v19 format];
        v21 = [v20 width];
        v22 = [v8 video];
        [v22 setCustomWidth:v21];

        v23 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        v24 = [v23 format];
        v25 = [v24 height];
        v26 = [v8 video];
        [v26 setCustomHeight:v25];
      }

      v27 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v28 = [v27 maxFrameRate];
      v29 = [v8 video];
      [v29 setFramerate:v28];

      v30 = [v8 video];
      [v30 setLatencySensitiveModeEnabled:1];

      v31 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [(CMContinuityCaptureDeviceBase *)self currentSessionID];
        v44 = [v8 video];
        v32 = v6;
        v33 = v3;
        v34 = [v44 videoResolution];
        v35 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
        *buf = 138413570;
        v46 = self;
        v47 = 2048;
        v48 = v43;
        v49 = 1024;
        v50 = v34;
        v3 = v33;
        v6 = v32;
        v51 = 1024;
        v52 = [v35 maxFrameRate];
        v53 = 1024;
        v54 = [v8 localSSRC];
        v55 = 1024;
        v56 = [v8 remoteSSRC];
        _os_log_impl(&dword_242545000, v31, OS_LOG_TYPE_DEFAULT, "%@ [sessionID:%llx] Stream Resolution %u at frameRate %u localSSRC %x remoteSSRC %x", buf, 0x2Eu);
      }

      goto LABEL_10;
    }

    v31 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v46 = self;
      OUTLINED_FUNCTION_9_1();
      v48 = v9;
      OUTLINED_FUNCTION_11_0(&dword_242545000, v31, v42, "%{public}@ AVCMediaStreamConfig error %@", buf);
    }
  }

  else
  {
    v31 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v38 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
      v39 = [v38 sessionID];
      *buf = 138543618;
      v46 = self;
      OUTLINED_FUNCTION_9_1();
      v48 = v40;
      OUTLINED_FUNCTION_11_0(&dword_242545000, v31, v41, "%{public}@ Failed to generate cipher key for session %@", buf);
    }

    v6 = 0;
    v9 = 0;
  }

  v8 = 0;
LABEL_10:

LABEL_11:
  v36 = v8;

  return v36;
}

- (BOOL)startAVConferenceStack:(unint64_t)a3
{
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_13();
    v37 = 2080;
    v38 = "[CMContinuityCaptureVideoDevice startAVConferenceStack:]";
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  if (!self->_avcVideoStream)
  {
    v6 = [(CMContinuityCaptureVideoDevice *)self createAVCVideoStream];
    avcVideoStream = self->_avcVideoStream;
    self->_avcVideoStream = v6;

    if (!self->_avcVideoStream)
    {
      goto LABEL_17;
    }
  }

  v8 = [(CMContinuityCaptureVideoDevice *)self newVideoStreamCurrentConfiguration];
  if (!v8)
  {
    v26 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v28 = self->_avcVideoStream;
      OUTLINED_FUNCTION_13();
      v37 = 2048;
      v38 = v29;
      OUTLINED_FUNCTION_11_0(&dword_242545000, v26, v30, "%{public}@ AVCVideoStream %p Invalid configuration", buf);
    }

LABEL_17:
    v9 = 0;
    v12 = 0;
    goto LABEL_21;
  }

  v9 = v8;
  v10 = self->_avcVideoStream;
  v43 = 0;
  v11 = [(AVCVideoStream *)v10 configure:v9 error:&v43];
  v12 = v43;
  v13 = CMContinuityCaptureLog(2);
  v14 = v13;
  if ((v11 & 1) == 0)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v31 = self->_avcVideoStream;
      OUTLINED_FUNCTION_13();
      v37 = 2048;
      v38 = v32;
      v39 = 2112;
      v40 = v12;
      _os_log_error_impl(&dword_242545000, v14, OS_LOG_TYPE_ERROR, "%{public}@ AVCVideoStream %p configure error %@", buf, 0x20u);
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(CMContinuityCaptureDeviceBase *)self currentSessionID];
    v16 = self->_avcVideoStream;
    [(AVCVideoStream *)v16 streamToken];
    OUTLINED_FUNCTION_13();
    v37 = 2048;
    v38 = v15;
    v39 = 2048;
    v40 = v16;
    v41 = 2048;
    v42 = v17;
    _os_log_impl(&dword_242545000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] AVCVideoStream %p StreamToken %lu", buf, 0x2Au);
  }

  if (![(AVCVideoStream *)self->_avcVideoStream streamToken])
  {
LABEL_21:
    v24 = 0;
    goto LABEL_13;
  }

  v18 = objc_alloc(MEMORY[0x277CE5750]);
  v19 = [(AVCVideoStream *)self->_avcVideoStream streamToken];
  v20 = [(CMContinuityCaptureDeviceBase *)self queue];
  v35 = v12;
  v21 = [v18 initWithStreamToken:v19 delegate:self queue:v20 error:&v35];
  v22 = v35;

  avcStreamOutput = self->_avcStreamOutput;
  self->_avcStreamOutput = v21;

  if (self->_avcStreamOutput)
  {
    [(AVCVideoStream *)self->_avcVideoStream start];
    v24 = 1;
  }

  else
  {
    v27 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_13();
      v37 = 2112;
      v38 = v22;
      OUTLINED_FUNCTION_11_0(&dword_242545000, v27, v33, "%{public}@ AVCStreamOutput create error %@", buf);
    }

    v24 = 0;
  }

  v12 = v22;
LABEL_13:
  v34.receiver = self;
  v34.super_class = CMContinuityCaptureVideoDevice;
  [(CMContinuityCaptureDeviceBase *)&v34 startAVConferenceStack:a3];

  return v24;
}

- (BOOL)stopAVConferenceStack
{
  v3 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = self;
    v10 = 2080;
    v11 = "[CMContinuityCaptureVideoDevice stopAVConferenceStack]";
    _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v8, 0x16u);
  }

  if (self->_avcStreamOutput && (avcVideoStream = self->_avcVideoStream) != 0)
  {
    [(AVCVideoStream *)avcVideoStream stop];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if (!self->_avcStreamOutputActive)
  {
    avcStreamOutput = self->_avcStreamOutput;
    self->_avcStreamOutput = 0;
  }

  return v5;
}

- (void)dispatchFrame:entity:completion:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v3 = 2048;
  v4 = v0;
  _os_log_debug_impl(&dword_242545000, v1, OS_LOG_TYPE_DEBUG, "%{public}@ networkTimeClockIdentity identity %llx", v2, 0x16u);
}

void __59__CMContinuityCaptureVideoDevice_startSendingInvalidFrames__block_invoke_cold_1(id *a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained(a1);
  CMContinuityCaptureGetHostTimeInNanoSec();
  v4 = *a2;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x20u);
}

void __59__CMContinuityCaptureVideoDevice_startSendingInvalidFrames__block_invoke_cold_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1(&dword_242545000, v2, v3, "%@ Invalid sample buffer to send", v4, v5, v6, v7, v8);
}

void __59__CMContinuityCaptureVideoDevice_startSendingInvalidFrames__block_invoke_cold_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

void __71__CMContinuityCaptureVideoDevice_stateMachineStartSendingBlurredFrames__block_invoke_cold_1(id *a1, uint64_t *a2)
{
  WeakRetained = objc_loadWeakRetained(a1);
  CMContinuityCaptureGetHostTimeInNanoSec();
  v4 = *a2;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x20u);
}

void __71__CMContinuityCaptureVideoDevice_stateMachineStartSendingBlurredFrames__block_invoke_cold_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
}

- (void)completeImageCaptureRequest:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  v3 = 2112;
  v4 = v0;
  OUTLINED_FUNCTION_11_0(&dword_242545000, v1, v1, "%@ completeImageCaptureRequest got called with error %@, but still image requests queue is empty", v2);
}

- (void)_createStillImageDataBufferFromRequest:timestamp:.cold.1()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_6_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_createStillImageDataBufferFromRequest:timestamp:.cold.2()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_6_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_createStillImageDataBufferFromRequest:timestamp:.cold.3()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_6_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_createStillImageDataBufferFromRequest:timestamp:.cold.4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_6_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_createStillImageDataBufferFromRequest:timestamp:.cold.5()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __58__CMContinuityCaptureVideoDevice_stateMachineImageCapture__block_invoke_cold_1(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1(&dword_242545000, v2, v3, "%@ still image capture hit timeout. Notifying state machine that the action is complete.", v4, v5, v6, v7, v8);
}

void __64__CMContinuityCaptureVideoDevice_setValueForControl_completion___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  OUTLINED_FUNCTION_4_0();
  v6 = 2114;
  v7 = v3;
  OUTLINED_FUNCTION_11_0(&dword_242545000, v4, v4, "%{public}@ unhandled control %{public}@", v5);
}

@end