@interface CMContinuityCaptureDeviceBase
+ (BOOL)defaultStateExitGuard:(id)guard dstState:(id)state onEvent:(id)event;
+ (BOOL)keepRemoteClientAliveForEvent:(id)event;
+ (void)defaultStateEntryTransitionActionForState:(id)state onEvent:(id)event;
+ (void)defaultStateExitTransitionActionForState:(id)state onEvent:(id)event;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastStreamStartTimeInHostClock;
- (BOOL)activeConnection;
- (BOOL)startAVConferenceStack:(unint64_t)stack;
- (BOOL)startCameraCaptureStack:(unint64_t)stack;
- (CMContinuityCaptureCompositeDeviceDelegate)compositeDelegate;
- (CMContinuityCaptureDeviceBase)initWithCapabilities:(id)capabilities compositeDelegate:(id)delegate transportDevice:(id)device queue:(id)queue;
- (CMContinuityCaptureState)stateMachineCurrentState;
- (ContinuityCaptureTransportDevice)transportDevice;
- (ContinuityCaptureTransportDeviceStream)transportStream;
- (NSString)description;
- (id)_aggregateEventDuplicatesInAnyState:(id)state eventName:(id)name;
- (id)_aggregateEventPairInAnyState:(id)state entryEventName:(id)name exitEventName:(id)eventName;
- (id)_aggregateStreamEventsInInitState:(id)state;
- (id)_aggregateStreamEventsInStreamState:(id)state;
- (id)aggregateEvents:(id)events;
- (unint64_t)avCaptureStackStartTime;
- (unint64_t)cameraCaptureStackStartTime;
- (unint64_t)currentSessionID;
- (void)_handleAVCNegotiation:(int64_t)negotiation data:(id)data;
- (void)_startStream:(id)stream option:(unint64_t)option completion:(id)completion;
- (void)_stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion;
- (void)dealloc;
- (void)dispatchFrame:(opaqueCMSampleBuffer *)frame entity:(int64_t)entity completion:(id)completion;
- (void)handleAVCNegotiation:(int64_t)negotiation data:(id)data;
- (void)invalidate;
- (void)logStreamSessionSummary;
- (void)postActionCompletionForEventName:(id)name eventData:(id)data error:(id)error;
- (void)postActionOfType:(unint64_t)type forEvent:(id)event option:(unint64_t)option;
- (void)postDeferredEvent:(id)event data:(id)data;
- (void)postEvent:(id)event entity:(int64_t)entity data:(id)data;
- (void)printFrameBufferLog:(int64_t)log;
- (void)resetTransportDevice:(id)device;
- (void)restartSendingInvalidFramesIfApplicable;
- (void)scheduleSendingInvalidFramesAfterTimeout:(BOOL)timeout;
- (void)setStreamStateTimeout:(BOOL)timeout forTime:(unsigned int)time;
- (void)setupStateMachine;
- (void)setupStreamActionStateMachine;
- (void)startSendingInvalidFrames;
- (void)startStream:(id)stream option:(unint64_t)option completion:(id)completion;
- (void)startStreamCompletedWithError:(id)error;
- (void)stateMachineClearDeferredEvents;
- (void)stateMachineReStartStreamOnEvent:(id)event option:(unint64_t)option;
- (void)stateMachineStartStreamOnEvent:(id)event option:(unint64_t)option;
- (void)stateMachineStopStreamOnEvent:(id)event option:(unint64_t)option;
- (void)stateMachineStreamSubstateSendData:(id)data;
- (void)stopCaptureStack:(unint64_t)stack completion:(id)completion;
- (void)stopSendingInvalidFrames;
- (void)stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion;
- (void)terminateComplete:(id)complete;
- (void)unconditionalTransitionForState:(id)state andDeferringEvent:(id)event;
@end

@implementation CMContinuityCaptureDeviceBase

- (CMContinuityCaptureDeviceBase)initWithCapabilities:(id)capabilities compositeDelegate:(id)delegate transportDevice:(id)device queue:(id)queue
{
  capabilitiesCopy = capabilities;
  obj = delegate;
  deviceCopy = device;
  queueCopy = queue;
  location = 0;
  v14 = CMContinuityCaptureMediaIdentifierFromEntityType([capabilitiesCopy entityType]);
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.continuitycapture.%@", v14];
  v34.receiver = self;
  v34.super_class = CMContinuityCaptureDeviceBase;
  v16 = [(CMContinuityCaptureDeviceBase *)&v34 init];
  if (v16 && (objc_storeWeak(&location, v16), *(v16 + 2) = [capabilitiesCopy entityType], objc_storeWeak(v16 + 4, obj), objc_storeStrong(v16 + 3, capabilities), *(v16 + 3)))
  {
    if (queueCopy)
    {
      v17 = queueCopy;
    }

    else
    {
      [v15 UTF8String];
      v17 = FigDispatchQueueCreateWithPriority();
    }

    v18 = *(v16 + 1);
    *(v16 + 1) = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = *(v16 + 5);
    *(v16 + 5) = v19;

    v21 = objc_alloc_init(CMContinuityCaptureConfiguration);
    v22 = *(v16 + 9);
    *(v16 + 9) = v21;

    [*(v16 + 9) setEntity:{objc_msgSend(*(v16 + 3), "entityType")}];
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = *(v16 + 19);
    *(v16 + 19) = v23;

    [v16 setupStreamActionStateMachine];
    [v16 setupStateMachine];
    objc_storeStrong(v16 + 20, device);
    [*(v16 + 20) addObserver:v16 forKeyPath:@"active" options:3 context:0];
    v25 = *(v16 + 7);
    WeakRetained = objc_loadWeakRetained(v16 + 4);
    v27 = objc_loadWeakRetained(&location);
    [v25 addObserver:WeakRetained forKeyPath:@"currentState" options:3 context:v27];

    [*(v16 + 7) addObserver:v16 forKeyPath:@"currentState" options:3 context:0];
    atomic_store(1u, v16 + 208);
    v28 = *(v16 + 1);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94__CMContinuityCaptureDeviceBase_initWithCapabilities_compositeDelegate_transportDevice_queue___block_invoke;
    block[3] = &unk_278D5C080;
    objc_copyWeak(&v33, &location);
    dispatch_async(v28, block);
    objc_destroyWeak(&v33);
    objc_storeWeak(v16 + 23, deviceCopy);
    if ([deviceCopy remote])
    {
      *(v16 + 236) = 0x500000004;
      v16[244] = FigGetCFPreferenceBooleanWithDefault() != 0;
    }

    v29 = v16;
  }

  else
  {
    v29 = 0;
  }

  objc_destroyWeak(&location);
  return v29;
}

void __94__CMContinuityCaptureDeviceBase_initWithCapabilities_compositeDelegate_transportDevice_queue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained transportStream];
    v3 = v4[21];
    v4[21] = v2;

    WeakRetained = v4;
  }
}

- (void)dealloc
{
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_242545000, a2, OS_LOG_TYPE_ERROR, "%@ ContinuityCapture error : dealloc unterminated device", &v2, 0xCu);
}

- (void)invalidate
{
  WeakRetained = objc_loadWeakRetained(&self->_compositeDelegate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    atomic_store(1u, &self->_invalidated);
    queue = self->_queue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__CMContinuityCaptureDeviceBase_invalidate__block_invoke;
    v6[3] = &unk_278D5C008;
    v6[4] = self;
    v7 = WeakRetained;
    dispatch_async(queue, v6);
  }
}

uint64_t __43__CMContinuityCaptureDeviceBase_invalidate__block_invoke(uint64_t result)
{
  v1 = atomic_load((*(result + 32) + 208));
  if (v1)
  {
    v2 = result;
    v3 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v2 + 32);
      v5 = *(v2 + 40);
      v6 = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_242545000, v3, OS_LOG_TYPE_DEFAULT, "%@ remove SM update KVO with composite delegate %@", &v6, 0x16u);
    }

    [*(*(v2 + 32) + 56) removeObserver:*(v2 + 40) forKeyPath:@"currentState" context:?];
    result = [*(*(v2 + 32) + 56) removeObserver:*(v2 + 32) forKeyPath:@"currentState" context:0];
    atomic_store(0, (*(v2 + 32) + 208));
  }

  return result;
}

- (unint64_t)cameraCaptureStackStartTime
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cameraCaptureStackStartTime = selfCopy->_cameraCaptureStackStartTime;
  objc_sync_exit(selfCopy);

  return cameraCaptureStackStartTime;
}

- (unint64_t)avCaptureStackStartTime
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  avCaptureStackStartTime = selfCopy->_avCaptureStackStartTime;
  objc_sync_exit(selfCopy);

  return avCaptureStackStartTime;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastStreamStartTimeInHostClock
{
  dispatch_assert_queue_V2(self->_queue);
  *retstr = self->_lastStreamStartTimeInHostClock;
  return result;
}

- (void)resetTransportDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
  v7 = [deviceCopy isEqual:transportDevice];

  if ((v7 & 1) == 0)
  {
    transportDevice2 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    queue = [transportDevice2 queue];
    dispatch_assert_queue_not_V2(queue);

    transportDevice3 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    queue2 = [transportDevice3 queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__CMContinuityCaptureDeviceBase_resetTransportDevice___block_invoke;
    v13[3] = &unk_278D5C008;
    v13[4] = self;
    v14 = deviceCopy;
    dispatch_async_and_wait(queue2, v13);

    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_transportDevice, device);
    objc_sync_exit(selfCopy);
  }
}

id __54__CMContinuityCaptureDeviceBase_resetTransportDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 184));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((*(a1 + 32) + 184));
    [v3 removeObserver:*(a1 + 32) forKeyPath:@"active" context:0];
  }

  [*(a1 + 40) addObserver:*(a1 + 32) forKeyPath:@"active" options:3 context:0];
  v4 = *(a1 + 40);
  v5 = (*(a1 + 32) + 184);

  return objc_storeWeak(v5, v4);
}

- (void)terminateComplete:(id)complete
{
  completeCopy = complete;
  v5 = completeCopy;
  if (self->_terminated)
  {
    completeCopy[2](completeCopy);
  }

  else
  {
    dispatch_assert_queue_V2(self->_queue);
    objc_initWeak(&location, self);
    WeakRetained = objc_loadWeakRetained(&self->_compositeDelegate);
    if (WeakRetained)
    {
      transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      queue = [transportDevice queue];
      dispatch_assert_queue_not_V2(queue);

      transportDevice2 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      queue2 = [transportDevice2 queue];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __51__CMContinuityCaptureDeviceBase_terminateComplete___block_invoke;
      v14[3] = &unk_278D5C0D0;
      v14[4] = self;
      dispatch_async_and_wait(queue2, v14);

      v11 = atomic_load(&self->_observingStateMachineState);
      if (v11)
      {
        stateMachine = self->_stateMachine;
        v13 = objc_loadWeakRetained(&location);
        [(CMContinuityCaptureStateMachine *)stateMachine removeObserver:WeakRetained forKeyPath:@"currentState" context:v13];

        atomic_store(0, &self->_observingStateMachineState);
      }

      self->_terminated = 1;
      v5[2](v5);
    }

    objc_destroyWeak(&location);
  }
}

id __51__CMContinuityCaptureDeviceBase_terminateComplete___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transportDevice];
  [v2 removeObserver:*(a1 + 32) forKeyPath:@"active" context:0];

  v3 = (*(a1 + 32) + 184);

  return objc_storeWeak(v3, 0);
}

- (ContinuityCaptureTransportDevice)transportDevice
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_transportDevice;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)startSendingInvalidFrames
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543618;
    selfCopy = self;
    v7 = 2080;
    v8 = "[CMContinuityCaptureDeviceBase startSendingInvalidFrames]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v5, 0x16u);
  }

  self->_dispatchingInvalidFrames = 1;
}

- (void)stopSendingInvalidFrames
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if (self->_dispatchingInvalidFrames)
  {
    v4 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543618;
      selfCopy = self;
      v7 = 2080;
      v8 = "[CMContinuityCaptureDeviceBase stopSendingInvalidFrames]";
      _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v5, 0x16u);
    }

    self->_dispatchingInvalidFrames = 0;
  }
}

- (void)restartSendingInvalidFramesIfApplicable
{
  if (self->_dispatchingInvalidFrames)
  {
    v10 = v2;
    v11 = v3;
    v5 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543618;
      selfCopy = self;
      v8 = 2080;
      v9 = "[CMContinuityCaptureDeviceBase restartSendingInvalidFramesIfApplicable]";
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v6, 0x16u);
    }

    [(CMContinuityCaptureDeviceBase *)self stopSendingInvalidFrames];
    [(CMContinuityCaptureDeviceBase *)self startSendingInvalidFrames];
  }
}

- (void)scheduleSendingInvalidFramesAfterTimeout:(BOOL)timeout
{
  timeoutCopy = timeout;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!self->_ignoreSendingInvalidFrames)
  {
    if (timeoutCopy)
    {
      v6 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy = self;
        v23 = 2080;
        v24 = "[CMContinuityCaptureDeviceBase scheduleSendingInvalidFramesAfterTimeout:]";
        _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ %s schedule", buf, 0x16u);
      }

      invalidFrameBlock = self->_invalidFrameBlock;
      if (invalidFrameBlock)
      {
        dispatch_block_cancel(invalidFrameBlock);
        v8 = self->_invalidFrameBlock;
        self->_invalidFrameBlock = 0;
      }

      invalidFrameTimeoutBlock = self->_invalidFrameTimeoutBlock;
      if (invalidFrameTimeoutBlock)
      {
        dispatch_block_cancel(invalidFrameTimeoutBlock);
        v10 = self->_invalidFrameTimeoutBlock;
        self->_invalidFrameTimeoutBlock = 0;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__CMContinuityCaptureDeviceBase_scheduleSendingInvalidFramesAfterTimeout___block_invoke;
      block[3] = &unk_278D5C080;
      objc_copyWeak(&v20, &location);
      v11 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
      v12 = self->_invalidFrameBlock;
      self->_invalidFrameBlock = v11;

      v13 = dispatch_time(0, 1000000000 * self->_timeToWaitBeforeSendingInvalidFramesWhenConnectingInSec);
      queue2 = [(CMContinuityCaptureDeviceBase *)self queue];
      dispatch_after(v13, queue2, self->_invalidFrameBlock);

      objc_destroyWeak(&v20);
    }

    else
    {
      v15 = self->_invalidFrameBlock;
      if (v15)
      {
        dispatch_block_cancel(v15);
        v16 = self->_invalidFrameBlock;
        self->_invalidFrameBlock = 0;
      }

      v17 = self->_invalidFrameTimeoutBlock;
      if (v17)
      {
        dispatch_block_cancel(v17);
        v18 = self->_invalidFrameTimeoutBlock;
        self->_invalidFrameTimeoutBlock = 0;
      }

      [(CMContinuityCaptureDeviceBase *)self stopSendingInvalidFrames];
      if (self->_invalidFrameNotificationScheduled)
      {
        self->_invalidFrameNotificationScheduled = 0;
        [(CMContinuityCaptureDeviceBase *)self scheduleInvalidFramesNotification:0];
      }
    }
  }

  objc_destroyWeak(&location);
}

void __74__CMContinuityCaptureDeviceBase_scheduleSendingInvalidFramesAfterTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained startSendingInvalidFrames];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__CMContinuityCaptureDeviceBase_scheduleSendingInvalidFramesAfterTimeout___block_invoke_2;
    block[3] = &unk_278D5C080;
    objc_copyWeak(&v9, (a1 + 32));
    v4 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
    v5 = *(v3 + 28);
    *(v3 + 28) = v4;

    v6 = dispatch_time(0, 1000000000 * v3[60]);
    v7 = [v3 queue];
    dispatch_after(v6, v7, *(v3 + 28));

    objc_destroyWeak(&v9);
  }
}

void __74__CMContinuityCaptureDeviceBase_scheduleSendingInvalidFramesAfterTimeout___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[232] == 1)
  {
    v4 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_loadWeakRetained((a1 + 32));
      v6 = 138543618;
      v7 = v5;
      v8 = 2080;
      v9 = "[CMContinuityCaptureDeviceBase scheduleSendingInvalidFramesAfterTimeout:]_block_invoke_2";
      _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s no frames after timeout", &v6, 0x16u);
    }

    [v3 scheduleSendingInvalidFramesAfterTimeout:0];
    v3[233] = 1;
    [v3 scheduleInvalidFramesNotification:1];
  }
}

- (void)dispatchFrame:(opaqueCMSampleBuffer *)frame entity:(int64_t)entity completion:(id)completion
{
  completionCopy = completion;
  if (!self->_lastStreamNoOfFramesDispatched)
  {
    v8 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      currentSessionID = [(CMContinuityCaptureDeviceBase *)self currentSessionID];
      v10 = CMContinuityCaptureGetTimeStringFromDate(self->_lastStreamStartTime);
      v13 = 138412802;
      selfCopy = self;
      v15 = 2048;
      v16 = currentSessionID;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%@ [sessionID:%llx] Dispatch first frame for stream started at %{public}@", &v13, 0x20u);
    }

    date = [MEMORY[0x277CBEAA8] date];
    lastStreamFirstFrameDispatchTime = self->_lastStreamFirstFrameDispatchTime;
    self->_lastStreamFirstFrameDispatchTime = date;
  }

  if (CMGetAttachment(frame, @"HighLatencyFrame", 0))
  {
    ++self->_lastStreamNoOfHighLatencyFrames;
  }

  ++self->_lastStreamNoOfFramesDispatched;
  [(CMContinuityCaptureDeviceBase *)self printFrameBufferLog:?];
}

- (ContinuityCaptureTransportDeviceStream)transportStream
{
  transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
  activeStreams = [transportDevice activeStreams];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = activeStreams;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        entity = [v10 entity];
        if (entity == [(CMContinuityCaptureDeviceBase *)self entity])
        {
          v12 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (CMContinuityCaptureState)stateMachineCurrentState
{
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  stateMachine = self->_stateMachine;

  return [(CMContinuityCaptureStateMachine *)stateMachine currentState];
}

- (void)stateMachineStreamSubstateSendData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyConfiguration"];
  if (v5 && (v6 = v5, -[CMContinuityCaptureDeviceBase transportDevice](self, "transportDevice"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 remote], v7, v6, v8))
  {
    if (self->_avcStreamNegotiator)
    {
      [(CMContinuityCaptureStateMachine *)self->_streamActionStateMachine enqueueEventWithNameToPostOnCurrentQueue:@"kCMContinuityCaptureStreamActionEventReceivedData" data:0];
      if (self->_avcStackStarted)
      {
        [(CMContinuityCaptureStateMachine *)self->_streamActionStateMachine enqueueEventWithNameToPost:@"kCMContinuityCaptureStreamActionEventCaptureStarted" data:0];
      }
    }

    transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
    v10 = [dataCopy objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyConfiguration"];
    v11 = [dataCopy objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyOption"];
    [transportDevice startStream:v10 option:objc_msgSend(v11 completion:{"integerValue"), &__block_literal_global_4}];
  }

  else
  {
    v12 = [dataCopy objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyAVCData"];
    if (v12)
    {
      v13 = v12;
      transportDevice2 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
      remote = [transportDevice2 remote];

      if ((remote & 1) == 0)
      {
        v16 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138543618;
          selfCopy = self;
          v22 = 2048;
          currentSessionID = [(CMContinuityCaptureDeviceBase *)self currentSessionID];
          _os_log_impl(&dword_242545000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] Negotiation data sent", &v20, 0x16u);
        }

        transportDevice3 = [(CMContinuityCaptureDeviceBase *)self transportDevice];
        entity = self->_entity;
        v19 = [dataCopy objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyAVCData"];
        [transportDevice3 handleAVCNegotiation:entity data:v19];
      }
    }
  }
}

- (void)postActionOfType:(unint64_t)type forEvent:(id)event option:(unint64_t)option
{
  eventCopy = event;
  objc_initWeak(&location, self);
  dispatch_assert_queue_V2(self->_queue);
  if (type > 9)
  {
    switch(type)
    {
      case 0xAuLL:
        v12 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v18.value) = 138543362;
          *(&v18.value + 4) = self;
          _os_log_impl(&dword_242545000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ terminate", &v18, 0xCu);
        }

        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __66__CMContinuityCaptureDeviceBase_postActionOfType_forEvent_option___block_invoke;
        v16[3] = &unk_278D5C080;
        objc_copyWeak(&v17, &location);
        [(CMContinuityCaptureDeviceBase *)self terminateComplete:v16];
        objc_destroyWeak(&v17);
        break;
      case 0xCuLL:
        stateMachine = self->_stateMachine;
        v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:3 userInfo:0];
        [(CMContinuityCaptureStateMachine *)stateMachine notifyCompletion:v15];

        break;
      case 0xDuLL:
        [(CMContinuityCaptureStateMachine *)self->_stateMachine notifyCompletion:0];
        break;
    }
  }

  else
  {
    switch(type)
    {
      case 1uLL:
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&v18, HostTimeClock);
        self->_lastStreamStartTimeInHostClock = v18;
        date = [MEMORY[0x277CBEAA8] date];
        lastStreamStartTime = self->_lastStreamStartTime;
        self->_lastStreamStartTime = date;

        [(CMContinuityCaptureDeviceBase *)self stateMachineStartStreamOnEvent:eventCopy option:option];
        break;
      case 2uLL:
        v13 = MEMORY[0x277CC0898];
        *&self->_lastStreamStartTimeInHostClock.value = *MEMORY[0x277CC0898];
        self->_lastStreamStartTimeInHostClock.epoch = *(v13 + 16);
        [(CMContinuityCaptureDeviceBase *)self stateMachineStopStreamOnEvent:eventCopy option:option];
        break;
      case 3uLL:
        [(CMContinuityCaptureDeviceBase *)self stateMachineReStartStreamOnEvent:eventCopy option:option];
        break;
    }
  }

  objc_destroyWeak(&location);
}

void __66__CMContinuityCaptureDeviceBase_postActionOfType_forEvent_option___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 4);
    if (v2)
    {
      [v3 stopCameraCaptureStack:512];
      [v2 terminateCompleteForDevice:v3];
      [v3 stateMachineNotifyComplete:0];
    }

    WeakRetained = v3;
  }
}

- (void)postActionCompletionForEventName:(id)name eventData:(id)data error:(id)error
{
  nameCopy = name;
  dataCopy = data;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  v11 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    currentState = [(CMContinuityCaptureStateMachine *)self->_stateMachine currentState];
    v15 = 138544130;
    selfCopy = self;
    v17 = 2114;
    v18 = nameCopy;
    v19 = 2114;
    v20 = currentState;
    v21 = 2112;
    v22 = errorCopy;
    _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ postCompletion for %{public}@ with currentState:%{public}@ eventStatus:%@", &v15, 0x2Au);
  }

  if (dataCopy)
  {
    v13 = [dataCopy objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataCompletionBlock"];

    if (v13)
    {
      v14 = [dataCopy objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataCompletionBlock"];
      (v14)[2](v14, errorCopy);
    }
  }
}

- (void)stopCaptureStack:(unint64_t)stack completion:(id)completion
{
  queue = self->_queue;
  completionCopy = completion;
  dispatch_assert_queue_V2(queue);
  avcStreamNegotiator = self->_avcStreamNegotiator;
  self->_avcStreamNegotiator = 0;

  self->_avcStackStarted = 0;
  completionCopy[2](completionCopy, 0);
}

- (BOOL)startAVConferenceStack:(unint64_t)stack
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2080;
    v10 = "[CMContinuityCaptureDeviceBase startAVConferenceStack:]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v7, 0x16u);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(CMContinuityCaptureStateMachine *)self->_streamActionStateMachine enqueueEventWithNameToPost:@"kCMContinuityCaptureStreamActionEventCaptureStarted" data:0];
  self->_avcStackStarted = 1;
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  selfCopy2->_avCaptureStackStartTime = mach_continuous_time();
  objc_sync_exit(selfCopy2);

  return 1;
}

- (BOOL)startCameraCaptureStack:(unint64_t)stack
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    selfCopy = self;
    v9 = 2080;
    v10 = "[CMContinuityCaptureDeviceBase startCameraCaptureStack:]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", &v7, 0x16u);
  }

  [(CMContinuityCaptureStateMachine *)self->_streamActionStateMachine enqueueEventWithNameToPost:@"kCMContinuityCaptureStreamActionEventCaptureStarting" data:0];
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  selfCopy2->_cameraCaptureStackStartTime = mach_continuous_time();
  objc_sync_exit(selfCopy2);

  return 1;
}

- (void)handleAVCNegotiation:(int64_t)negotiation data:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__CMContinuityCaptureDeviceBase_handleAVCNegotiation_data___block_invoke;
  v9[3] = &unk_278D5C770;
  objc_copyWeak(v11, &location);
  v11[1] = negotiation;
  v10 = dataCopy;
  v8 = dataCopy;
  dispatch_async(queue, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __59__CMContinuityCaptureDeviceBase_handleAVCNegotiation_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleAVCNegotiation:*(a1 + 48) data:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_handleAVCNegotiation:(int64_t)negotiation data:(id)data
{
  dataCopy = data;
  objc_initWeak(&location, self);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__5;
  v29 = __Block_byref_object_dispose__5;
  v30 = 0;
  dispatch_assert_queue_V2(self->_queue);
  v6 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v23 = 2048;
    currentSessionID = [(CMContinuityCaptureDeviceBase *)self currentSessionID];
    _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] Negotiation data received", buf, 0x16u);
  }

  transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
  remote = [transportDevice remote];

  if (remote)
  {
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__CMContinuityCaptureDeviceBase__handleAVCNegotiation_data___block_invoke;
    block[3] = &unk_278D5CAA0;
    objc_copyWeak(&v20, &location);
    v18 = dataCopy;
    v19 = &v25;
    dispatch_async(v9, block);

    objc_destroyWeak(&v20);
  }

  else
  {
    avcStreamNegotiator = self->_avcStreamNegotiator;
    v11 = (v26 + 5);
    obj = v26[5];
    v12 = [(AVCMediaStreamNegotiator *)avcStreamNegotiator setAnswer:dataCopy withError:&obj];
    objc_storeStrong(v11, obj);
    if (v12)
    {
      [(CMContinuityCaptureDeviceBase *)self startAVConferenceStack:0];
    }

    else
    {
      v13 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_loadWeakRetained(&location);
        v15 = v26[5];
        *buf = 138543618;
        selfCopy = v14;
        v23 = 2114;
        currentSessionID = v15;
        _os_log_impl(&dword_242545000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ StartStream Failed to get set answer AVCNegotiator error %{public}@", buf, 0x16u);
      }
    }
  }

  [(CMContinuityCaptureStateMachine *)self->_streamActionStateMachine enqueueEventWithNameToPostOnCurrentQueue:@"kCMContinuityCaptureStreamActionEventReceivedData" data:0];
  _Block_object_dispose(&v25, 8);

  objc_destroyWeak(&location);
}

void __60__CMContinuityCaptureDeviceBase__handleAVCNegotiation_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = objc_alloc(MEMORY[0x277CE5708]);
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 40) + 8);
    v18 = *(v5 + 40);
    v6 = [v3 initWithOffer:v4 error:&v18];
    objc_storeStrong((v5 + 40), v18);
    if (v6)
    {
      v7 = WeakRetained[1];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__CMContinuityCaptureDeviceBase__handleAVCNegotiation_data___block_invoke_29;
      block[3] = &unk_278D5CA78;
      block[4] = WeakRetained;
      v12 = v6;
      objc_copyWeak(&v13, (a1 + 48));
      dispatch_async(v7, block);
      objc_destroyWeak(&v13);
    }

    else
    {
      v8 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_loadWeakRetained((a1 + 48));
        v10 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138543618;
        v15 = v9;
        v16 = 2114;
        v17 = v10;
        _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ StartStream Failed to get AVCNegotiator error %{public}@", buf, 0x16u);
      }
    }
  }
}

uint64_t __60__CMContinuityCaptureDeviceBase__handleAVCNegotiation_data___block_invoke_29(id *a1)
{
  objc_storeStrong(a1[4] + 18, a1[5]);
  v2 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v4 = [a1[4] currentSessionID];
    v9 = 138543618;
    v10 = WeakRetained;
    v11 = 2048;
    v12 = v4;
    _os_log_impl(&dword_242545000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] Negotiation data sent", &v9, 0x16u);
  }

  v5 = [a1[4] transportDevice];
  v6 = [a1[4] entity];
  v7 = [*(a1[4] + 18) answer];
  [v5 handleAVCNegotiation:v6 data:v7];

  return [a1[4] startAVConferenceStack:0];
}

- (void)startStream:(id)stream option:(unint64_t)option completion:(id)completion
{
  streamCopy = stream;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__CMContinuityCaptureDeviceBase_startStream_option_completion___block_invoke;
  block[3] = &unk_278D5C288;
  objc_copyWeak(v16, &location);
  v16[1] = option;
  v14 = streamCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = streamCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __63__CMContinuityCaptureDeviceBase_startStream_option_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _startStream:*(a1 + 32) option:*(a1 + 56) completion:*(a1 + 40)];
    WeakRetained = v3;
  }
}

- (void)_startStream:(id)stream option:(unint64_t)option completion:(id)completion
{
  streamCopy = stream;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  if ([(CMContinuityCaptureDeviceBase *)self streaming])
  {
    v11 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 138543362;
      *(&buf.value + 4) = self;
      _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Stream Session In Progress", &buf, 0xCu);
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    if (!self->_lastStreamStartTime)
    {
      date = [MEMORY[0x277CBEAA8] date];
      lastStreamStartTime = self->_lastStreamStartTime;
      self->_lastStreamStartTime = date;
    }

    if ((self->_lastStreamStartTimeInHostClock.flags & 1) == 0)
    {
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&buf, HostTimeClock);
      self->_lastStreamStartTimeInHostClock = buf;
    }

    sessionID = [streamCopy sessionID];

    if (sessionID)
    {
      [(CMContinuityCaptureDeviceBase *)self willChangeValueForKey:@"activeConfiguration"];
      objc_storeStrong(&self->_activeConfiguration, stream);
      [(CMContinuityCaptureDeviceBase *)self didChangeValueForKey:@"activeConfiguration"];
      [(CMContinuityCaptureDeviceBase *)self willChangeValueForKey:@"streaming"];
      atomic_store(1u, &self->_streaming);
      [(CMContinuityCaptureDeviceBase *)self didChangeValueForKey:@"streaming"];
      v16 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 138543874;
        *(&buf.value + 4) = self;
        LOWORD(buf.flags) = 2114;
        *(&buf.flags + 2) = streamCopy;
        HIWORD(buf.epoch) = 1024;
        optionCopy = option;
        _os_log_impl(&dword_242545000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ StartStream config:%{public}@ option:%d", &buf, 0x1Cu);
      }

      [(CMContinuityCaptureDeviceBase *)self startCollectingFrameLatencyMetrics];
      if ((option & 0x800) != 0)
      {
        v23 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:2 userInfo:0];
        (completionCopy)[2](completionCopy, v23);
      }

      else
      {
        if ([(NSMutableArray *)self->_pendingCompletionBlocks count])
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ ContinuityCapture error : Invalid completion block array", self}];
        }

        pendingCompletionBlocks = self->_pendingCompletionBlocks;
        v18 = MEMORY[0x245D12020](completionCopy);
        [(NSMutableArray *)pendingCompletionBlocks addObject:v18];

        transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
        LOBYTE(v18) = [transportDevice remote];

        if (v18)
        {
          streamActionStateMachine = self->_streamActionStateMachine;
          v41[0] = @"CMContinuityCaptureStateMachineEventDataKeyOption";
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:option];
          v41[1] = @"CMContinuityCaptureStateMachineEventDataKeyConfiguration";
          v42[0] = v21;
          v42[1] = streamCopy;
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
          [(CMContinuityCaptureStateMachine *)streamActionStateMachine enqueueEventWithNameToPostOnCurrentQueue:@"kCMContinuityCaptureStreamActionEventSendData" data:v22];
        }

        else
        {
          if ([(CMContinuityCaptureDeviceBase *)self entity]== 3)
          {
            activeConfiguration = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
            audioDeviceMode = [activeConfiguration audioDeviceMode];

            if (audioDeviceMode == 1667329132)
            {
              v47 = *MEMORY[0x277CE55E8];
              v48 = &unk_2854EC848;
              v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
              v27 = 4;
            }

            else
            {
              activeConfiguration2 = [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
              audioDeviceMode2 = [activeConfiguration2 audioDeviceMode];

              v26 = 0;
              if (audioDeviceMode2 == 1987010925)
              {
                v27 = 11;
              }

              else
              {
                v27 = 4;
              }
            }

            v46 = 0;
            v32 = [objc_alloc(MEMORY[0x277CE5708]) initWithMode:v27 options:v26 error:&v46];
            v29 = v46;
            avcStreamNegotiator = self->_avcStreamNegotiator;
            self->_avcStreamNegotiator = v32;
          }

          else
          {
            v45 = 0;
            v28 = [objc_alloc(MEMORY[0x277CE5708]) initWithMode:3 error:&v45];
            v29 = v45;
            v26 = self->_avcStreamNegotiator;
            self->_avcStreamNegotiator = v28;
          }

          v34 = self->_avcStreamNegotiator;
          if (v34 && ([(AVCMediaStreamNegotiator *)v34 offer], v35 = objc_claimAutoreleasedReturnValue(), v35, v35))
          {
            v36 = self->_streamActionStateMachine;
            v43[0] = @"CMContinuityCaptureStateMachineEventDataKeyAVCData";
            offer = [(AVCMediaStreamNegotiator *)self->_avcStreamNegotiator offer];
            v44[0] = offer;
            v43[1] = @"CMContinuityCaptureStateMachineEventDataKeyOption";
            v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:option];
            v44[1] = v38;
            v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
            [(CMContinuityCaptureStateMachine *)v36 enqueueEventWithNameToPostOnCurrentQueue:@"kCMContinuityCaptureStreamActionEventSendData" data:v39];
          }

          else
          {
            v40 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf.value) = 138543618;
              *(&buf.value + 4) = self;
              LOWORD(buf.flags) = 2114;
              *(&buf.flags + 2) = v29;
              _os_log_impl(&dword_242545000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ StartStream Failed to get AVCNegotiator error %{public}@", &buf, 0x16u);
            }
          }
        }
      }
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ ContinuityCapture error : Invalid sessionID", self}];
    }
  }
}

- (void)stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__CMContinuityCaptureDeviceBase_stopStream_option_completion___block_invoke;
  block[3] = &unk_278D5C378;
  objc_copyWeak(v13, &location);
  v13[1] = stream;
  v13[2] = option;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

void __62__CMContinuityCaptureDeviceBase_stopStream_option_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _stopStream:*(a1 + 48) option:*(a1 + 56) completion:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_stopStream:(int64_t)stream option:(unint64_t)option completion:(id)completion
{
  completionCopy = completion;
  queue = [(CMContinuityCaptureDeviceBase *)self queue];
  dispatch_assert_queue_V2(queue);

  objc_initWeak(&location, self);
  if ([(CMContinuityCaptureDeviceBase *)self streaming])
  {
    v10 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      activeConfiguration = self->_activeConfiguration;
      *buf = 138543874;
      selfCopy2 = self;
      v29 = 2114;
      v30 = activeConfiguration;
      v31 = 1024;
      optionCopy = option;
      _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ StopStream config:%{public}@ option:%d", buf, 0x1Cu);
    }

    [(CMContinuityCaptureDeviceBase *)self willChangeValueForKey:@"streaming"];
    atomic_store(0, &self->_streaming);
    [(CMContinuityCaptureDeviceBase *)self didChangeValueForKey:@"streaming"];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __63__CMContinuityCaptureDeviceBase__stopStream_option_completion___block_invoke;
    v24 = &unk_278D5C3F0;
    objc_copyWeak(v26, &location);
    v26[1] = option;
    v26[2] = stream;
    v25 = completionCopy;
    [(CMContinuityCaptureDeviceBase *)self stopCaptureStack:option completion:&v21];
    if (self->_lastStreamStartTime)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceDate:self->_lastStreamStartTime];
      v14 = v13;

      v15 = v14 * 1000.0;
    }

    else
    {
      v15 = 0.0;
    }

    [(CMContinuityCaptureDeviceBase *)self stopCollectingFrameLatencyMetrics:v15, v21, v22, v23, v24];
    [(CMContinuityCaptureDeviceBase *)self logStreamSessionSummary];
    self->_lastStreamNoOfFramesDispatched = 0;
    self->_lastStreamNoOfHighLatencyFrames = 0;
    lastStreamStartTime = self->_lastStreamStartTime;
    self->_lastStreamStartTime = 0;

    lastStreamFirstFrameDispatchTime = self->_lastStreamFirstFrameDispatchTime;
    self->_lastStreamFirstFrameDispatchTime = 0;

    v20 = MEMORY[0x277CC0898];
    *&self->_lastStreamStartTimeInHostClock.value = *MEMORY[0x277CC0898];
    self->_lastStreamStartTimeInHostClock.epoch = *(v20 + 16);

    objc_destroyWeak(v26);
  }

  else
  {
    v16 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_242545000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Stream Session not In Progress", buf, 0xCu);
    }

    v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:3 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v17);
  }

  objc_destroyWeak(&location);
}

void __63__CMContinuityCaptureDeviceBase__stopStream_option_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v13 = 138543618;
    v14 = WeakRetained;
    v15 = 2114;
    v16 = a2;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ stopCaptureStack %{public}@", &v13, 0x16u);
  }

  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = v6;
  if (v6)
  {
    v8 = [v6 transportDevice];
    if (![v8 remote] || (v9 = *(a1 + 48), (v9 & 0x10) != 0))
    {
    }

    else
    {

      if ((v9 & 0x80) == 0)
      {
        v10 = CMContinuityCaptureLog(2);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138543362;
          v14 = v7;
          _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ sending stop to remote", &v13, 0xCu);
        }

        v11 = [v7 transportDevice];
        [v11 stopStream:*(a1 + 56) option:*(a1 + 48) completion:&__block_literal_global_42];
LABEL_13:

        v12 = *(a1 + 32);
        if (v12)
        {
          (*(v12 + 16))(v12, a2);
        }

        goto LABEL_15;
      }
    }

    v11 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v7;
      _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ skip sending stop", &v13, 0xCu);
    }

    goto LABEL_13;
  }

LABEL_15:
}

- (void)printFrameBufferLog:(int64_t)log
{
  if (log <= 0x1E && ((1 << log) & 0x40000022) != 0 || __ROR8__(0x4FA4FA4FA4FA4FA5 * log + 0x2D82D82D82D82D8, 1) <= 0x2D82D82D82D82D8uLL)
  {
    v5 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543874;
      selfCopy = self;
      v8 = 2048;
      currentSessionID = [(CMContinuityCaptureDeviceBase *)self currentSessionID];
      v10 = 2048;
      logCopy = log;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] Received FrameCounter %lu", &v6, 0x20u);
    }
  }
}

- (void)postEvent:(id)event entity:(int64_t)entity data:(id)data
{
  eventCopy = event;
  dataCopy = data;
  v10 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy = self;
    v21 = 2080;
    v22 = "[CMContinuityCaptureDeviceBase postEvent:entity:data:]";
    v23 = 2112;
    v24 = eventCopy;
    v25 = 2048;
    entityCopy = entity;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ %s %@ %ld", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__CMContinuityCaptureDeviceBase_postEvent_entity_data___block_invoke;
  v14[3] = &unk_278D5C030;
  objc_copyWeak(&v18, buf);
  v15 = dataCopy;
  selfCopy2 = self;
  v17 = eventCopy;
  v12 = eventCopy;
  v13 = dataCopy;
  dispatch_async(queue, v14);

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

void __55__CMContinuityCaptureDeviceBase_postEvent_entity_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = [v3 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyConfiguration"];

      if (v4)
      {
        [*(a1 + 40) willChangeValueForKey:@"activeConfiguration"];
        v5 = [*(a1 + 32) objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyConfiguration"];
        v6 = *(v7 + 9);
        *(v7 + 9) = v5;

        [*(a1 + 40) didChangeValueForKey:@"activeConfiguration"];
      }
    }

    [*(v7 + 7) enqueueEventWithNameToPostOnCurrentQueue:*(a1 + 48) data:*(a1 + 32)];
    WeakRetained = v7;
  }
}

+ (BOOL)keepRemoteClientAliveForEvent:(id)event
{
  v3 = keepRemoteClientAliveForEvent__onceToken;
  eventCopy = event;
  if (v3 != -1)
  {
    +[CMContinuityCaptureDeviceBase keepRemoteClientAliveForEvent:];
  }

  v5 = [keepRemoteClientAliveForEvent__keepAliveEventNames containsObject:eventCopy];

  return v5;
}

uint64_t __63__CMContinuityCaptureDeviceBase_keepRemoteClientAliveForEvent___block_invoke()
{
  keepRemoteClientAliveForEvent__keepAliveEventNames = [MEMORY[0x277CBEB98] setWithObjects:{@"kCMContinuityCaptureEventUserPause", @"kCMContinuityCaptureEventUserResume", @"kCMContinuityCaptureEventActiveCallStart", @"kCMContinuityCaptureEventActiveCallEnd", @"kCMContinuityCaptureEventCaptureSessionStarted", @"kCMContinuityCaptureEventCaptureSessionEnded", @"kCMContinuityCaptureEventStreamDisableForDeviceInUse", @"kCMContinuityCaptureEventStreamDisableForDeviceInUseExit", 0}];

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)currentSessionID
{
  compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
  currentSessionID = [compositeDelegate currentSessionID];

  return currentSessionID;
}

- (void)stateMachineReStartStreamOnEvent:(id)event option:(unint64_t)option
{
  eventCopy = event;
  objc_initWeak(&location, self);
  name = [eventCopy name];
  v8 = [name isEqualToString:@"kCMContinuityCaptureEventStreamInterrupted"];

  if (v8)
  {
    data = [eventCopy data];
    v10 = [data objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyAttemptStreamRestart"];
    option |= 4uLL;
    if (v10)
    {
      data2 = [eventCopy data];
      v12 = [data2 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyAttemptStreamRestart"];
      bOOLValue = [v12 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        [(CMContinuityCaptureDeviceBase *)self stopCaptureStack:option completion:&__block_literal_global_47];
        stateMachine = self->_stateMachine;
        v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:2 userInfo:0];
        [(CMContinuityCaptureStateMachine *)stateMachine notifyCompletion:v15];

        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  data3 = [eventCopy data];
  if (data3)
  {
    data4 = [eventCopy data];
    v18 = [data4 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyOption"];

    if (v18)
    {
      data5 = [eventCopy data];
      v20 = [data5 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyOption"];
      option |= [v20 integerValue];
    }
  }

  v21 = CMContinuityCaptureLog(2);
  v22 = (option | 1);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy = self;
    v28 = 2082;
    v29 = "[CMContinuityCaptureDeviceBase stateMachineReStartStreamOnEvent:option:]";
    v30 = 2114;
    v31 = eventCopy;
    v32 = 1024;
    v33 = v22;
    _os_log_impl(&dword_242545000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s %{public}@ option %d", buf, 0x26u);
  }

  entity = self->_entity;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __73__CMContinuityCaptureDeviceBase_stateMachineReStartStreamOnEvent_option___block_invoke_48;
  v24[3] = &unk_278D5C210;
  objc_copyWeak(v25, &location);
  v25[1] = v22;
  [(CMContinuityCaptureDeviceBase *)self stopStream:entity option:v22 completion:v24];
  objc_destroyWeak(v25);
LABEL_12:
  objc_destroyWeak(&location);
}

void __73__CMContinuityCaptureDeviceBase_stateMachineReStartStreamOnEvent_option___block_invoke_48(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(2);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v6)
      {
        v7 = objc_loadWeakRetained((a1 + 32));
        *buf = 138412546;
        v14 = v7;
        v15 = 2114;
        v16 = a2;
        _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ Stream Stop failed with error %{public}@", buf, 0x16u);
      }

      [WeakRetained[7] notifyCompletion:a2];
    }

    else
    {
      if (v6)
      {
        v8 = objc_loadWeakRetained((a1 + 32));
        *buf = 138412290;
        v14 = v8;
        _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%@ Stream Stop complete, restart new session", buf, 0xCu);
      }

      v9 = [WeakRetained activeConfiguration];
      v10 = *(a1 + 40);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __73__CMContinuityCaptureDeviceBase_stateMachineReStartStreamOnEvent_option___block_invoke_49;
      v11[3] = &unk_278D5C1E8;
      objc_copyWeak(&v12, (a1 + 32));
      [WeakRetained startStream:v9 option:v10 completion:v11];

      objc_destroyWeak(&v12);
    }
  }
}

void __73__CMContinuityCaptureDeviceBase_stateMachineReStartStreamOnEvent_option___block_invoke_49(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[7] notifyCompletion:a2];
    if (a2)
    {
      v6 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_loadWeakRetained((a1 + 32));
        v8 = 138412546;
        v9 = v7;
        v10 = 2112;
        v11 = a2;
        _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ start stream failed error %@", &v8, 0x16u);
      }
    }
  }
}

- (void)stateMachineStartStreamOnEvent:(id)event option:(unint64_t)option
{
  eventCopy = event;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_compositeDelegate);
  if (!WeakRetained)
  {
    goto LABEL_16;
  }

  data = [eventCopy data];
  if (data)
  {
    data2 = [eventCopy data];
    v10 = [data2 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyOption"];

    if (v10)
    {
      data3 = [eventCopy data];
      v12 = [data3 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyOption"];
      option |= [v12 integerValue];
    }
  }

  name = [eventCopy name];
  v14 = [name isEqualToString:@"kCMContinuityCaptureEventRemoteClientReconnect"];

  if (v14)
  {
    optionCopy = option | 0x20;
  }

  else
  {
    optionCopy = option;
  }

  name2 = [eventCopy name];
  if ([name2 isEqualToString:@"kCMContinuityCaptureEventCaptureSessionEnded"])
  {

LABEL_11:
    optionCopy |= 0x100uLL;
    goto LABEL_12;
  }

  name3 = [eventCopy name];
  v18 = [name3 isEqualToString:@"kCMContinuityCaptureEventStreamDisableForDeviceInUseExit"];

  if (v18)
  {
    goto LABEL_11;
  }

LABEL_12:
  name4 = [eventCopy name];
  v20 = [CMContinuityCaptureDeviceBase keepRemoteClientAliveForEvent:name4];

  transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
  remote = [transportDevice remote];
  v23 = (optionCopy | v20);

  [(CMContinuityCaptureDeviceBase *)self activeConfiguration];
  if (remote)
    v24 = {;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __71__CMContinuityCaptureDeviceBase_stateMachineStartStreamOnEvent_option___block_invoke_51;
    v27[3] = &unk_278D5CAC8;
    v25 = v29;
    objc_copyWeak(v29, &location);
    v28 = eventCopy;
    v29[1] = v23;
    [WeakRetained startStream:v24 option:v23 completion:v27];

    v26 = v28;
  }

  else
    v26 = {;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __71__CMContinuityCaptureDeviceBase_stateMachineStartStreamOnEvent_option___block_invoke;
    v30[3] = &unk_278D5C1E8;
    v25 = &v31;
    objc_copyWeak(&v31, &location);
    [(CMContinuityCaptureDeviceBase *)self startStream:v26 option:v23 completion:v30];
  }

  objc_destroyWeak(v25);
LABEL_16:

  objc_destroyWeak(&location);
}

void __71__CMContinuityCaptureDeviceBase_stateMachineStartStreamOnEvent_option___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[7] notifyCompletion:a2];
    if (a2)
    {
      v6 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_loadWeakRetained((a1 + 32));
        v8 = 138412546;
        v9 = v7;
        v10 = 2112;
        v11 = a2;
        _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_DEFAULT, "%@ start stream failed error %@", &v8, 0x16u);
      }
    }
  }
}

void __71__CMContinuityCaptureDeviceBase_stateMachineStartStreamOnEvent_option___block_invoke_51(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_loadWeakRetained((a1 + 40));
      v7 = [WeakRetained currentSessionID];
      v8 = *(a1 + 32);
      v9 = *(a1 + 48);
      v10 = [WeakRetained activeConfiguration];
      v13 = 138544642;
      v14 = v6;
      v15 = 2048;
      v16 = v7;
      v17 = 2082;
      v18 = "[CMContinuityCaptureDeviceBase stateMachineStartStreamOnEvent:option:]_block_invoke";
      v19 = 2114;
      v20 = v8;
      v21 = 1024;
      v22 = v9;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] %{public}s %{public}@ option %d configuration %{public}@", &v13, 0x3Au);
    }

    [WeakRetained[7] notifyCompletion:v3];
    if (v3)
    {
      v11 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_loadWeakRetained((a1 + 40));
        v13 = 138412546;
        v14 = v12;
        v15 = 2112;
        v16 = v3;
        _os_log_impl(&dword_242545000, v11, OS_LOG_TYPE_DEFAULT, "%@ start stream failed error %@", &v13, 0x16u);
      }
    }
  }
}

- (void)stateMachineStopStreamOnEvent:(id)event option:(unint64_t)option
{
  eventCopy = event;
  objc_initWeak(location, self);
  WeakRetained = objc_loadWeakRetained(&self->_compositeDelegate);
  if (!WeakRetained)
  {
    goto LABEL_25;
  }

  data = [eventCopy data];
  if (data)
  {
    data2 = [eventCopy data];
    v10 = [data2 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyOption"];

    if (v10)
    {
      data3 = [eventCopy data];
      v12 = [data3 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyOption"];
      option |= [v12 integerValue];
    }
  }

  name = [eventCopy name];
  v14 = [CMContinuityCaptureDeviceBase keepRemoteClientAliveForEvent:name];

  name2 = [eventCopy name];
  v16 = option | v14;
  if (([name2 isEqualToString:?] & 1) == 0)
  {

    goto LABEL_14;
  }

  data4 = [eventCopy data];
  if (!data4)
  {
    goto LABEL_12;
  }

  data5 = [eventCopy data];
  v19 = [data5 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyAttemptStreamRestart"];
  if (!v19)
  {

LABEL_12:
    goto LABEL_13;
  }

  data6 = [eventCopy data];
  v21 = [data6 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyAttemptStreamRestart"];
  bOOLValue = [v21 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
LABEL_13:
    v16 |= 0x10uLL;
  }

LABEL_14:
  name3 = [eventCopy name];
  if ([name3 isEqualToString:@"kCMContinuityCaptureEventTerminate"])
  {

LABEL_17:
    v16 |= 0x200uLL;
    goto LABEL_18;
  }

  name4 = [eventCopy name];
  v24 = [name4 isEqualToString:@"kCMContinuityCaptureEventUserDisconnect"];

  if (v24)
  {
    goto LABEL_17;
  }

LABEL_18:
  v25 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy = self;
    v43 = 2082;
    v44 = "[CMContinuityCaptureDeviceBase stateMachineStopStreamOnEvent:option:]";
    v45 = 2114;
    v46 = eventCopy;
    v47 = 1024;
    v48 = v16;
    _os_log_impl(&dword_242545000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s %{public}@ option %d", buf, 0x26u);
  }

  transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
  remote = [transportDevice remote];

  if (remote)
  {
    v37[0] = @"kCMContinuityCaptureEventUserPause";
    v37[1] = @"kCMContinuityCaptureEventActiveCallStart";
    v37[2] = @"kCMContinuityCaptureEventUserDisconnect";
    v37[3] = @"kCMContinuityCaptureEventRemoteClientDisconnect";
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
    name5 = [eventCopy name];
    v30 = [v28 containsObject:name5];

    if (v30)
    {
      v16 |= 0x80uLL;
    }

    entity = self->_entity;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke_3;
    v34[3] = &unk_278D5C660;
    objc_copyWeak(&v36, location);
    v35 = eventCopy;
    [WeakRetained stopStream:entity option:v16 completion:v34];

    objc_destroyWeak(&v36);
  }

  else
  {
    entity = [(CMContinuityCaptureDeviceBase *)self entity];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke;
    v38[3] = &unk_278D5C660;
    objc_copyWeak(&v40, location);
    v39 = eventCopy;
    [(CMContinuityCaptureDeviceBase *)self stopStream:entity option:v16 completion:v38];

    objc_destroyWeak(&v40);
  }

LABEL_25:

  objc_destroyWeak(location);
}

void __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) name];
    v6 = [v5 isEqualToString:@"kCMContinuityCaptureEventTerminate"];

    if (v6)
    {
      v7 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_loadWeakRetained((a1 + 40));
        *buf = 138543362;
        v14 = v8;
        _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ terminate", buf, 0xCu);
      }

      v9 = *(WeakRetained + 1);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke_52;
      v10[3] = &unk_278D5C0A8;
      objc_copyWeak(&v12, (a1 + 40));
      v11 = v3;
      dispatch_async(v9, v10);

      objc_destroyWeak(&v12);
    }

    else
    {
      [*(WeakRetained + 7) notifyCompletion:v3];
    }
  }
}

void __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke_52(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke_2;
    v3[3] = &unk_278D5C0A8;
    objc_copyWeak(&v5, (a1 + 40));
    v4 = *(a1 + 32);
    [WeakRetained terminateComplete:v3];

    objc_destroyWeak(&v5);
  }
}

void __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 4);
    v4 = v3;
    if (v3)
    {
      [v3 terminateCompleteForDevice:v5];
      [v5[7] notifyCompletion:*(a1 + 32)];
    }

    WeakRetained = v5;
  }
}

void __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) name];
    v6 = [v5 isEqualToString:@"kCMContinuityCaptureEventTerminate"];

    if (v6)
    {
      v7 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_loadWeakRetained((a1 + 40));
        *buf = 138543362;
        v14 = v8;
        _os_log_impl(&dword_242545000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ terminate", buf, 0xCu);
      }

      v9 = *(WeakRetained + 1);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke_54;
      block[3] = &unk_278D5C120;
      objc_copyWeak(&v12, (a1 + 40));
      block[4] = WeakRetained;
      v11 = v3;
      dispatch_async(v9, block);

      objc_destroyWeak(&v12);
    }

    else
    {
      [*(WeakRetained + 7) notifyCompletion:v3];
    }
  }
}

void __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke_54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke_2_55;
    v4[3] = &unk_278D5C0A8;
    objc_copyWeak(&v6, (a1 + 48));
    v5 = *(a1 + 40);
    [v3 terminateComplete:v4];

    objc_destroyWeak(&v6);
  }
}

void __70__CMContinuityCaptureDeviceBase_stateMachineStopStreamOnEvent_option___block_invoke_2_55(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 4);
    v4 = v3;
    if (v3)
    {
      [v3 terminateCompleteForDevice:v5];
      [v5[7] notifyCompletion:*(a1 + 32)];
    }

    WeakRetained = v5;
  }
}

+ (void)defaultStateEntryTransitionActionForState:(id)state onEvent:(id)event
{
  stateCopy = state;
  eventCopy = event;
  name = [eventCopy name];
  name2 = [stateCopy name];
  valid = CMContinuityCaptureSMIsValidEntryEventForState(name, name2);

  if (valid)
  {
    pendingEvents = [stateCopy pendingEvents];
    name3 = [eventCopy name];
    [pendingEvents addObject:name3];
  }
}

+ (void)defaultStateExitTransitionActionForState:(id)state onEvent:(id)event
{
  stateCopy = state;
  name = [event name];
  name2 = [stateCopy name];
  v7 = CMContinuityCaptureSMGetMatchingStateEntryEventForExitEvent(name, name2);

  if (v7)
  {
    pendingEvents = [stateCopy pendingEvents];
    v9 = [pendingEvents containsObject:v7];

    if (v9)
    {
      pendingEvents2 = [stateCopy pendingEvents];
      [pendingEvents2 removeObject:v7];
    }
  }
}

+ (BOOL)defaultStateExitGuard:(id)guard dstState:(id)state onEvent:(id)event
{
  guardCopy = guard;
  eventCopy = event;
  name = [eventCopy name];
  name2 = [guardCopy name];
  valid = CMContinuityCaptureSMIsValidExitEventForState(name, name2);

  name3 = [eventCopy name];

  name4 = [guardCopy name];
  v13 = CMContinuityCaptureSMGetMatchingStateEntryEventForExitEvent(name3, name4);

  v14 = 0;
  if (valid && v13)
  {
    pendingEvents = [guardCopy pendingEvents];
    if ([pendingEvents count] == 1)
    {
      pendingEvents2 = [guardCopy pendingEvents];
      v14 = [pendingEvents2 containsObject:v13];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)unconditionalTransitionForState:(id)state andDeferringEvent:(id)event
{
  eventCopy = event;
  pendingEvents = [state pendingEvents];
  [pendingEvents removeAllObjects];

  deferredEvents = [(CMContinuityCaptureStateMachine *)self->_stateMachine deferredEvents];
  [deferredEvents addObject:eventCopy];
}

- (void)stateMachineClearDeferredEvents
{
  deferredEvents = [(CMContinuityCaptureStateMachine *)self->_stateMachine deferredEvents];
  [deferredEvents removeAllObjects];
}

- (void)startStreamCompletedWithError:(id)error
{
  pendingCompletionBlocks = self->_pendingCompletionBlocks;
  errorCopy = error;
  if (![(NSMutableArray *)pendingCompletionBlocks count])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ ContinuityCapture error : Invalid completion block array", self}];
  }

  firstObject = [(NSMutableArray *)self->_pendingCompletionBlocks firstObject];
  (firstObject)[2](firstObject, errorCopy);

  v7 = self->_pendingCompletionBlocks;

  [(NSMutableArray *)v7 removeObjectAtIndex:0];
}

- (BOOL)activeConnection
{
  transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
  activeStreams = [transportDevice activeStreams];

  LOBYTE(transportDevice) = [activeStreams count] != 0;
  return transportDevice;
}

- (void)setStreamStateTimeout:(BOOL)timeout forTime:(unsigned int)time
{
  timeoutCopy = timeout;
  objc_initWeak(&location, self);
  if (timeoutCopy)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__CMContinuityCaptureDeviceBase_setStreamStateTimeout_forTime___block_invoke;
    v12[3] = &unk_278D5C080;
    objc_copyWeak(&v13, &location);
    v7 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, v12);
    streamTimeoutBlock = self->_streamTimeoutBlock;
    self->_streamTimeoutBlock = v7;

    v9 = dispatch_time(0, 1000000000 * time);
    dispatch_after(v9, self->_queue, self->_streamTimeoutBlock);
    objc_destroyWeak(&v13);
  }

  else
  {
    v10 = self->_streamTimeoutBlock;
    if (v10)
    {
      dispatch_block_cancel(v10);
      v11 = self->_streamTimeoutBlock;
      self->_streamTimeoutBlock = 0;
    }
  }

  objc_destroyWeak(&location);
}

void __63__CMContinuityCaptureDeviceBase_setStreamStateTimeout_forTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[8] enqueueEventWithNameToPostOnCurrentQueue:@"kCMContinuityCaptureStreamActionEventTimeout" data:0];
    WeakRetained = v2;
  }
}

- (void)logStreamSessionSummary
{
  if ([(NSMutableArray *)self->_streamSessionLogs count]>= 0xB)
  {
    [(NSMutableArray *)self->_streamSessionLogs removeObjectAtIndex:0];
  }

  v62[0] = @"StreamSessionStartTime";
  lastStreamStartTime = self->_lastStreamStartTime;
  v39 = lastStreamStartTime;
  if (lastStreamStartTime)
  {
    v4 = CMContinuityCaptureGetTimeStringFromDate(lastStreamStartTime);
  }

  else
  {
    v4 = &stru_2854DE150;
  }

  currentSessionActivationStartTime2 = v4;
  v63[0] = v4;
  v62[1] = @"StreamSessionTransport";
  sessionID2 = 0x277CCA000;
  v6 = MEMORY[0x277CCABB0];
  transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
  v36 = [v6 numberWithBool:{objc_msgSend(transportDevice, "wired")}];
  v63[1] = v36;
  v62[2] = @"StreamSessionStopTime";
  v7 = CMContinuityCaptureGetCurrentTimeString();
  v63[2] = v7;
  v62[3] = @"GID";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[CMContinuityCaptureConfiguration generationID](self->_activeConfiguration, "generationID")}];
  v63[3] = v8;
  v62[4] = @"StreamSessionFirstFrameDispatchTime";
  lastStreamFirstFrameDispatchTime = self->_lastStreamFirstFrameDispatchTime;
  if (lastStreamFirstFrameDispatchTime)
  {
    v10 = CMContinuityCaptureGetTimeStringFromDate(self->_lastStreamFirstFrameDispatchTime);
  }

  else
  {
    v10 = &stru_2854DE150;
  }

  v63[4] = v10;
  v62[5] = @"StreamSessionTotalFrameDispatched";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_lastStreamNoOfFramesDispatched];
  v63[5] = v11;
  v62[6] = @"StreamSessionID";
  sessionID = [(CMContinuityCaptureConfiguration *)self->_activeConfiguration sessionID];
  uUIDString = [sessionID UUIDString];
  if (uUIDString)
  {
    sessionID2 = [(CMContinuityCaptureConfiguration *)self->_activeConfiguration sessionID];
    uUIDString2 = [sessionID2 UUIDString];
  }

  else
  {
    uUIDString2 = @"NA";
  }

  v63[6] = uUIDString2;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:7];
  if (uUIDString)
  {
  }

  if (lastStreamFirstFrameDispatchTime)
  {
  }

  v15 = v41;
  if (v39)
  {
  }

  [(NSMutableArray *)self->_streamSessionLogs addObject:v41];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_lastStreamFirstFrameDispatchTime];
  v18 = v17;

  v19 = self->_lastStreamFirstFrameDispatchTime;
  v20 = 0.0;
  if (v19 && self->_lastStreamStartTime)
  {
    [(NSDate *)v19 timeIntervalSinceDate:?];
    v20 = fmax(v21, 0.0);
  }

  lastStreamNoOfFramesDispatched = self->_lastStreamNoOfFramesDispatched;
  v23 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 1.0;
    if (v18 >= 1.0)
    {
      v24 = v18;
    }

    v25 = lastStreamNoOfFramesDispatched / v24;
    compositeDelegate = [(CMContinuityCaptureDeviceBase *)self compositeDelegate];
    lastSessionID = [compositeDelegate lastSessionID];
    v26 = [v41 objectForKeyedSubscript:@"StreamSessionStartTime"];
    v27 = [v41 objectForKeyedSubscript:@"StreamSessionStopTime"];
    v28 = self->_lastStreamNoOfFramesDispatched;
    v29 = [v41 objectForKeyedSubscript:@"StreamSessionFirstFrameDispatchTime"];
    v30 = v25;
    lastStreamNoOfHighLatencyFrames = self->_lastStreamNoOfHighLatencyFrames;
    WeakRetained = objc_loadWeakRetained(&self->_compositeDelegate);
    currentSessionActivationStartTime = [WeakRetained currentSessionActivationStartTime];
    if (currentSessionActivationStartTime)
    {
      v36 = objc_loadWeakRetained(&self->_compositeDelegate);
      currentSessionActivationStartTime2 = [v36 currentSessionActivationStartTime];
      v34 = CMContinuityCaptureGetTimeStringFromDate(currentSessionActivationStartTime2);
    }

    else
    {
      v34 = &stru_2854DE150;
    }

    *buf = 138545666;
    selfCopy = self;
    v44 = 2048;
    v45 = lastSessionID;
    v46 = 2114;
    v47 = v26;
    v48 = 2114;
    v49 = v27;
    v50 = 2048;
    v51 = v28;
    v52 = 2114;
    v53 = v29;
    v54 = 2048;
    v55 = v30;
    v56 = 2048;
    v57 = lastStreamNoOfHighLatencyFrames;
    v58 = 2048;
    v59 = v20;
    v60 = 2114;
    v61 = v34;
    _os_log_impl(&dword_242545000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ [sessionID:%llx] Stream stop requested, summary : StartTime %{public}@ StopTime %{public}@ #ofFramesDispatched %llu FirstFrameDispatchTime %{public}@ FrameRate %.3f fps #ofHighLatencyFrames %lld timeToFirstFrame %.3f currentSessionActivationStartTime %{public}@", buf, 0x66u);
    if (currentSessionActivationStartTime)
    {
    }

    v15 = v41;
  }
}

- (void)setupStreamActionStateMachine
{
  objc_initWeak(location, self);
  v3 = [[CMContinuityCaptureStateMachine alloc] initWithActionDelegate:self queue:self->_queue];
  streamActionStateMachine = self->_streamActionStateMachine;
  self->_streamActionStateMachine = v3;

  v5 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureStreamActionEventSendData" isEntry:1 eventAction:0];
  v6 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureStreamActionEventReceivedData" isEntry:0 eventAction:0];
  v7 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureStreamActionEventCaptureStarting" isEntry:1 eventAction:0];
  v8 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureStreamActionEventCaptureStarted" isEntry:0 eventAction:0];
  v9 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureStreamActionEventTimeout" isEntry:0 eventAction:0];
  v10 = self->_streamActionStateMachine;
  v74[0] = v5;
  v74[1] = v6;
  v74[2] = v9;
  v74[3] = v8;
  v74[4] = v7;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:5];
  [(CMContinuityCaptureStateMachine *)v10 addEvents:v11];

  v44 = [[CMContinuityCaptureState alloc] initWithAttributes:@"kCMContinuityCaptureStreamStateReady" entryAction:&__block_literal_global_88 exitAction:&__block_literal_global_90];
  v37 = v8;
  v12 = [CMContinuityCaptureState alloc];
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_3;
  v72[3] = &unk_278D5CB10;
  objc_copyWeak(&v73, location);
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_4;
  v70[3] = &unk_278D5CB10;
  objc_copyWeak(&v71, location);
  v13 = [(CMContinuityCaptureState *)v12 initWithAttributes:@"kCMContinuityCaptureStreamStateWait" entryAction:v72 exitAction:v70];
  v43 = v9;
  v14 = [CMContinuityCaptureStateTransition alloc];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_5;
  v66[3] = &unk_278D5CB38;
  v15 = v13;
  v67 = v15;
  v68 = v5;
  objc_copyWeak(&v69, location);
  v36 = v68;
  v41 = [(CMContinuityCaptureStateTransition *)v14 initWithAttributes:v44 dstState:v15 event:v68 guard:0 action:v66];
  selfCopy = self;
  v16 = [CMContinuityCaptureStateTransition alloc];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_7;
  v62[3] = &unk_278D5CB38;
  v17 = v15;
  v63 = v17;
  v18 = v6;
  v64 = v18;
  objc_copyWeak(&v65, location);
  v40 = [(CMContinuityCaptureStateTransition *)v16 initWithAttributes:v17 dstState:v17 event:v18 guard:&__block_literal_global_94_0 action:v62];
  v19 = [CMContinuityCaptureStateTransition alloc];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_8;
  v58[3] = &unk_278D5CB38;
  v20 = v17;
  v59 = v20;
  v21 = v7;
  v60 = v21;
  objc_copyWeak(&v61, location);
  v39 = [(CMContinuityCaptureStateTransition *)v19 initWithAttributes:v20 dstState:v20 event:v21 guard:0 action:v58];
  v22 = [CMContinuityCaptureStateTransition alloc];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_10;
  v54[3] = &unk_278D5CB38;
  v23 = v20;
  v55 = v23;
  v24 = v37;
  v56 = v24;
  objc_copyWeak(&v57, location);
  v25 = [(CMContinuityCaptureStateTransition *)v22 initWithAttributes:v23 dstState:v23 event:v24 guard:&__block_literal_global_96 action:v54];
  v26 = [CMContinuityCaptureStateTransition alloc];
  v38 = v21;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_12;
  v52[3] = &unk_278D5CB10;
  objc_copyWeak(&v53, location);
  v27 = [(CMContinuityCaptureStateTransition *)v26 initWithAttributes:v23 dstState:v44 event:v24 guard:&__block_literal_global_98 action:v52];
  v28 = [CMContinuityCaptureStateTransition alloc];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_14;
  v48[3] = &unk_278D5CB38;
  v29 = v23;
  v49 = v29;
  v30 = v18;
  v50 = v30;
  objc_copyWeak(&v51, location);
  v31 = [(CMContinuityCaptureStateTransition *)v28 initWithAttributes:v29 dstState:v44 event:v30 guard:&__block_literal_global_100 action:v48];
  v32 = [CMContinuityCaptureStateTransition alloc];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_15;
  v46[3] = &unk_278D5CB10;
  objc_copyWeak(&v47, location);
  v33 = [(CMContinuityCaptureStateTransition *)v32 initWithAttributes:v29 dstState:v44 event:v43 guard:0 action:v46];
  v34 = selfCopy->_streamActionStateMachine;
  v45[0] = v41;
  v45[1] = v40;
  v45[2] = v31;
  v45[3] = v25;
  v45[4] = v27;
  v45[5] = v33;
  v45[6] = v39;
  v45[7] = v25;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:8];
  [(CMContinuityCaptureStateMachine *)v34 addStateTransitions:v35];

  [(CMContinuityCaptureStateMachine *)selfCopy->_streamActionStateMachine setCurrentState:v44];
  objc_destroyWeak(&v47);

  objc_destroyWeak(&v51);
  objc_destroyWeak(&v53);

  objc_destroyWeak(&v57);
  objc_destroyWeak(&v61);

  objc_destroyWeak(&v65);
  objc_destroyWeak(&v69);

  objc_destroyWeak(&v71);
  objc_destroyWeak(&v73);

  objc_destroyWeak(location);
}

void __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setStreamStateTimeout:1 forTime:10];
}

void __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setStreamStateTimeout:0 forTime:0];
}

void __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_5(uint64_t a1, void *a2)
{
  v11 = a2;
  [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:*(a1 + 32) onEvent:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [v11 data];
  [WeakRetained stateMachineStreamSubstateSendData:v4];

  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = [v11 data];
  v7 = [v6 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyOption"];
  if (v7)
  {
    v8 = [v11 data];
    v9 = [v8 objectForKeyedSubscript:@"CMContinuityCaptureStateMachineEventDataKeyOption"];
    [v5 startCameraCaptureStack:{objc_msgSend(v9, "integerValue")}];
  }

  else
  {
    [v5 startCameraCaptureStack:0];
  }

  v10 = objc_loadWeakRetained((a1 + 48));
  [v10 streamStateMachineNotifyComplete:0];
}

void __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:v3 onEvent:v4];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = [v5 data];

  [WeakRetained stateMachineStreamSubstateReceiveData:v7];
  v8 = objc_loadWeakRetained((a1 + 48));
  [v8 streamStateMachineNotifyComplete:0];
}

void __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_8(uint64_t a1)
{
  [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:*(a1 + 32) onEvent:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained streamStateMachineNotifyComplete:0];
}

void __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_10(uint64_t a1)
{
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:*(a1 + 32) onEvent:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained streamStateMachineNotifyComplete:0];
}

void __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startStreamCompletedWithError:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 streamStateMachineNotifyComplete:0];
}

void __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_14(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:v3 onEvent:v4];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = [v5 data];

  [WeakRetained stateMachineStreamSubstateReceiveData:v7];
  v8 = objc_loadWeakRetained((a1 + 48));
  [v8 startStreamCompletedWithError:0];

  v9 = objc_loadWeakRetained((a1 + 48));
  [v9 streamStateMachineNotifyComplete:0];
}

void __62__CMContinuityCaptureDeviceBase_setupStreamActionStateMachine__block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:-536870186 userInfo:0];
  [WeakRetained startStreamCompletedWithError:v3];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 streamStateMachineNotifyComplete:0];
}

- (void)setupStateMachine
{
  objc_initWeak(location, self);
  v3 = [[CMContinuityCaptureStateMachine alloc] initWithActionDelegate:self queue:self->_queue];
  stateMachine = self->_stateMachine;
  self->_stateMachine = v3;

  v170 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventStartStream" isEntry:1 eventAction:0];
  v149 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventStopStream" isEntry:0 eventAction:0];
  v5 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventUserDisconnect" isEntry:0 eventAction:0];
  v6 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventForceRestartStream" isEntry:1 eventAction:0];
  v7 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventStreamInterrupted" isEntry:1 eventAction:0];
  v155 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventCaptureSessionStarted" isEntry:1 eventAction:0];
  v153 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventCaptureSessionEnded" isEntry:0 eventAction:0];
  v167 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventSystemSleep" isEntry:1 eventAction:0];
  v174 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventSystemWake" isEntry:0 eventAction:0];
  v8 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventAssociatedDevicePause" isEntry:1 eventAction:0];
  v9 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventAssociatedDeviceResume" isEntry:0 eventAction:0];
  v160 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventTerminate" isEntry:1 eventAction:0];
  v10 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventUserPause" isEntry:1 eventAction:0];
  v147 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventUserResume" isEntry:0 eventAction:0];
  v166 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventStreamDisableForMultipleStream" isEntry:1 eventAction:0];
  v173 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventStreamEnableForMultipleStreamExit" isEntry:0 eventAction:0];
  v159 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventImageCapture" isEntry:0 eventAction:0];
  v158 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventEnqueueReactionEffect" isEntry:0 eventAction:0];
  v11 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventStreamDisableForDeviceInUse" isEntry:1 eventAction:0];
  v143 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventStreamDisableForDeviceInUseExit" isEntry:0 eventAction:0];
  v145 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventActiveCallStart" isEntry:1 eventAction:0];
  v141 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventActiveCallEnd" isEntry:0 eventAction:0];
  v163 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventStreamDisableForWifiContention" isEntry:1 eventAction:0];
  v168 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventStreamEnableForWifiContentionExit" isEntry:0 eventAction:0];
  v162 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventScreenLocked" isEntry:1 eventAction:0];
  v172 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventScreenUnlocked" isEntry:0 eventAction:0];
  v161 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventRemoteClientDisconnect" isEntry:1 eventAction:0];
  v164 = [[CMContinuityCaptureStateMachineEvent alloc] initWithName:@"kCMContinuityCaptureEventRemoteClientReconnect" isEntry:0 eventAction:0];
  v12 = self->_stateMachine;
  v323[0] = v170;
  v323[1] = v149;
  v323[2] = v155;
  v323[3] = v7;
  v323[4] = v153;
  v323[5] = v167;
  v323[6] = v174;
  v323[7] = v160;
  v323[8] = v6;
  v323[9] = v10;
  v323[10] = v147;
  v323[11] = v163;
  v323[12] = v168;
  v323[13] = v8;
  v323[14] = v11;
  v323[15] = v143;
  v323[16] = v9;
  v323[17] = v166;
  v323[18] = v173;
  v323[19] = v159;
  v323[20] = v158;
  v323[21] = v5;
  v323[22] = v145;
  v323[23] = v141;
  v323[24] = v162;
  v323[25] = v172;
  v323[26] = v161;
  v323[27] = v164;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v323 count:28];
  [(CMContinuityCaptureStateMachine *)v12 addEvents:v13];
  v135 = v9;

  v14 = [[CMContinuityCaptureState alloc] initWithAttributes:@"kCMContinuityCaptureStateInit" entryAction:0 exitAction:0];
  v136 = v8;
  v15 = [CMContinuityCaptureState alloc];
  v321[0] = MEMORY[0x277D85DD0];
  v321[1] = 3221225472;
  v321[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke;
  v321[3] = &unk_278D5CB10;
  objc_copyWeak(&v322, location);
  v319[0] = MEMORY[0x277D85DD0];
  v319[1] = 3221225472;
  v319[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_2;
  v319[3] = &unk_278D5CB10;
  objc_copyWeak(&v320, location);
  v16 = [(CMContinuityCaptureState *)v15 initWithAttributes:@"kCMContinuityCaptureStateStreaming" entryAction:v321 exitAction:v319];
  v114 = [[CMContinuityCaptureState alloc] initWithAttributes:@"kCMContinuityCaptureStateDisabled" entryAction:0 exitAction:0];
  v137 = v7;
  v17 = [CMContinuityCaptureState alloc];
  v317[0] = MEMORY[0x277D85DD0];
  v317[1] = 3221225472;
  v317[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_3;
  v317[3] = &unk_278D5CB10;
  objc_copyWeak(&v318, location);
  v315[0] = MEMORY[0x277D85DD0];
  v315[1] = 3221225472;
  v315[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_4;
  v315[3] = &unk_278D5CB10;
  objc_copyWeak(&v316, location);
  v18 = [(CMContinuityCaptureState *)v17 initWithAttributes:@"kCMContinuityCaptureStatePaused" entryAction:v317 exitAction:v315];
  v138 = v6;
  v152 = [[CMContinuityCaptureState alloc] initWithAttributes:@"kCMContinuityCaptureStateTerminated" entryAction:0 exitAction:0];
  v19 = [CMContinuityCaptureStateTransition alloc];
  v312[1] = MEMORY[0x277D85DD0];
  v312[2] = 3221225472;
  v312[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_5;
  v312[4] = &unk_278D5CB80;
  v20 = v18;
  v313 = v20;
  v314 = v10;
  v157 = v314;
  v102 = [CMContinuityCaptureStateTransition initWithAttributes:v19 dstState:"initWithAttributes:dstState:event:guard:action:" event:v16 guard:v20 action:?];
  v21 = [CMContinuityCaptureStateTransition alloc];
  v311[1] = MEMORY[0x277D85DD0];
  v311[2] = 3221225472;
  v311[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_6;
  v311[4] = &unk_278D5CBA8;
  objc_copyWeak(v312, location);
  v308[1] = MEMORY[0x277D85DD0];
  v308[2] = 3221225472;
  v308[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_7;
  v308[4] = &unk_278D5CBD0;
  objc_copyWeak(v311, location);
  v22 = v20;
  v309 = v22;
  v310 = v155;
  v140 = v310;
  v134 = [CMContinuityCaptureStateTransition initWithAttributes:v21 dstState:"initWithAttributes:dstState:event:guard:action:" event:v16 guard:v22 action:?];
  v23 = [CMContinuityCaptureStateTransition alloc];
  v307[1] = MEMORY[0x277D85DD0];
  v307[2] = 3221225472;
  v307[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_8;
  v307[4] = &unk_278D5CBA8;
  objc_copyWeak(v308, location);
  v301 = MEMORY[0x277D85DD0];
  v302 = 3221225472;
  v303 = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_9;
  v304 = &unk_278D5CBD0;
  objc_copyWeak(v307, location);
  v24 = v22;
  v305 = v24;
  v306 = v11;
  v139 = v306;
  v133 = [CMContinuityCaptureStateTransition initWithAttributes:v23 dstState:"initWithAttributes:dstState:event:guard:action:" event:v16 guard:v24 action:?];
  v25 = [CMContinuityCaptureStateTransition alloc];
  v298[0] = MEMORY[0x277D85DD0];
  v298[1] = 3221225472;
  v298[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_10;
  v298[3] = &unk_278D5CB80;
  v26 = v24;
  v299 = v26;
  v27 = v145;
  v300 = v27;
  v132 = [(CMContinuityCaptureStateTransition *)v25 initWithAttributes:v16 dstState:v26 event:v27 guard:0 action:v298];
  v28 = [CMContinuityCaptureStateTransition alloc];
  v295[1] = MEMORY[0x277D85DD0];
  v295[2] = 3221225472;
  v295[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_12;
  v295[4] = &unk_278D5CB80;
  v29 = v26;
  v296 = v29;
  v297 = v147;
  v156 = v297;
  v131 = [CMContinuityCaptureStateTransition initWithAttributes:v28 dstState:"initWithAttributes:dstState:event:guard:action:" event:v29 guard:v16 action:?];
  v30 = [CMContinuityCaptureStateTransition alloc];
  v292[1] = MEMORY[0x277D85DD0];
  v292[2] = 3221225472;
  v292[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_14;
  v292[4] = &unk_278D5CBD0;
  objc_copyWeak(v295, location);
  v31 = v29;
  v293 = v31;
  v294 = v153;
  v148 = v294;
  v130 = [CMContinuityCaptureStateTransition initWithAttributes:v30 dstState:"initWithAttributes:dstState:event:guard:action:" event:v31 guard:v16 action:?];
  v32 = [CMContinuityCaptureStateTransition alloc];
  v286 = MEMORY[0x277D85DD0];
  v287 = 3221225472;
  v288 = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_16;
  v289 = &unk_278D5CBD0;
  objc_copyWeak(v292, location);
  v33 = v31;
  v290 = v33;
  v291 = v143;
  v146 = v291;
  v129 = [CMContinuityCaptureStateTransition initWithAttributes:v32 dstState:"initWithAttributes:dstState:event:guard:action:" event:v33 guard:v16 action:?];
  v34 = [CMContinuityCaptureStateTransition alloc];
  v283[1] = MEMORY[0x277D85DD0];
  v283[2] = 3221225472;
  v283[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_18;
  v283[4] = &unk_278D5CB80;
  v35 = v33;
  v284 = v35;
  v285 = v141;
  v154 = v285;
  v142 = [CMContinuityCaptureStateTransition initWithAttributes:v34 dstState:"initWithAttributes:dstState:event:guard:action:" event:v35 guard:v16 action:?];
  v36 = [CMContinuityCaptureStateTransition alloc];
  v280[1] = MEMORY[0x277D85DD0];
  v280[2] = 3221225472;
  v280[3] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_19;
  v280[4] = &unk_278D5CBD0;
  objc_copyWeak(v283, location);
  v37 = v35;
  v281 = v37;
  v282 = v149;
  v150 = v282;
  v128 = [CMContinuityCaptureStateTransition initWithAttributes:v36 dstState:"initWithAttributes:dstState:event:guard:action:" event:v37 guard:v16 action:?];
  v38 = [CMContinuityCaptureStateTransition alloc];
  v279[0] = MEMORY[0x277D85DD0];
  v279[1] = 3221225472;
  v279[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_20;
  v279[3] = &unk_278D5CB10;
  objc_copyWeak(v280, location);
  v126 = [(CMContinuityCaptureStateTransition *)v38 initWithAttributes:v37 dstState:v37 event:v170 guard:0 action:v279];
  v39 = [CMContinuityCaptureStateTransition alloc];
  v275[4] = MEMORY[0x277D85DD0];
  v275[5] = 3221225472;
  v275[6] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_21;
  v275[7] = &unk_278D5CBD0;
  objc_copyWeak(&v278, location);
  v40 = v37;
  v276 = v40;
  v277 = v5;
  v144 = v277;
  v125 = [CMContinuityCaptureStateTransition initWithAttributes:v39 dstState:"initWithAttributes:dstState:event:guard:action:" event:v40 guard:v16 action:?];
  v275[0] = v157;
  v275[1] = v27;
  v275[2] = v140;
  v275[3] = v139;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v275 count:4];
  v272[0] = MEMORY[0x277D85DD0];
  v272[1] = 3221225472;
  v272[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_22;
  v272[3] = &unk_278D5CBF8;
  v42 = v40;
  v273 = v42;
  objc_copyWeak(&v274, location);
  v124 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinationOnEvents(v42, v42, v41, v272, 0);
  v127 = v27;

  v271[0] = v156;
  v271[1] = v154;
  v271[2] = v148;
  v271[3] = v146;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v271 count:4];
  v268[0] = MEMORY[0x277D85DD0];
  v268[1] = 3221225472;
  v268[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_23;
  v268[3] = &unk_278D5CBF8;
  v269 = v42;
  objc_copyWeak(&v270, location);
  v266[0] = MEMORY[0x277D85DD0];
  v266[1] = 3221225472;
  v266[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_24;
  v266[3] = &unk_278D5CC20;
  v44 = v269;
  v267 = v44;
  v123 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinationOnEvents(v44, v44, v43, v268, v266);

  v45 = [CMContinuityCaptureStateTransition alloc];
  v264[0] = MEMORY[0x277D85DD0];
  v264[1] = 3221225472;
  v264[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_25;
  v264[3] = &unk_278D5CBA8;
  objc_copyWeak(&v265, location);
  v122 = [(CMContinuityCaptureStateTransition *)v45 initWithAttributes:v14 dstState:v16 event:v170 guard:v264 action:0];
  v121 = [[CMContinuityCaptureStateTransition alloc] initWithAttributes:v16 dstState:v14 event:v150 guard:0 action:0];
  v120 = [[CMContinuityCaptureStateTransition alloc] initWithAttributes:v16 dstState:v14 event:v144 guard:0 action:0];
  v46 = [CMContinuityCaptureStateTransition alloc];
  v262[0] = MEMORY[0x277D85DD0];
  v262[1] = 3221225472;
  v262[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_26;
  v262[3] = &unk_278D5CB10;
  objc_copyWeak(&v263, location);
  v119 = [(CMContinuityCaptureStateTransition *)v46 initWithAttributes:v16 dstState:v16 event:v138 guard:0 action:v262];
  v47 = [CMContinuityCaptureStateTransition alloc];
  v260[0] = MEMORY[0x277D85DD0];
  v260[1] = 3221225472;
  v260[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_27;
  v260[3] = &unk_278D5CB10;
  objc_copyWeak(&v261, location);
  v118 = [(CMContinuityCaptureStateTransition *)v47 initWithAttributes:v16 dstState:v16 event:v137 guard:0 action:v260];
  v48 = [CMContinuityCaptureStateTransition alloc];
  v258[0] = MEMORY[0x277D85DD0];
  v258[1] = 3221225472;
  v258[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_28;
  v258[3] = &unk_278D5CB10;
  objc_copyWeak(&v259, location);
  v117 = [(CMContinuityCaptureStateTransition *)v48 initWithAttributes:v16 dstState:v16 event:v159 guard:0 action:v258];
  v49 = [CMContinuityCaptureStateTransition alloc];
  v256[0] = MEMORY[0x277D85DD0];
  v256[1] = 3221225472;
  v256[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_29;
  v256[3] = &unk_278D5CB10;
  objc_copyWeak(&v257, location);
  v116 = [(CMContinuityCaptureStateTransition *)v49 initWithAttributes:v16 dstState:v16 event:v158 guard:0 action:v256];
  v255[0] = v174;
  v255[1] = v173;
  v255[2] = v168;
  v255[3] = v172;
  v255[4] = v164;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v255 count:5];
  v252[0] = MEMORY[0x277D85DD0];
  v252[1] = 3221225472;
  v252[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_30;
  v252[3] = &unk_278D5CBF8;
  v51 = v114;
  v253 = v51;
  objc_copyWeak(&v254, location);
  v250[0] = MEMORY[0x277D85DD0];
  v250[1] = 3221225472;
  v250[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_31;
  v250[3] = &unk_278D5CBA8;
  objc_copyWeak(&v251, location);
  v115 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinationOnEvents(v51, v16, v50, v252, v250);

  v249[0] = v167;
  v249[1] = v166;
  v249[2] = v163;
  v249[3] = v162;
  v249[4] = v161;
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v249 count:5];
  v246[0] = MEMORY[0x277D85DD0];
  v246[1] = 3221225472;
  v246[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_32;
  v246[3] = &unk_278D5CBF8;
  v53 = v51;
  v247 = v53;
  objc_copyWeak(&v248, location);
  v101 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinationOnEvents(v16, v53, v52, v246, 0);

  v245[0] = v14;
  v245[1] = v53;
  v245[2] = v44;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v245 count:3];
  v242[0] = MEMORY[0x277D85DD0];
  v242[1] = 3221225472;
  v242[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_33;
  v242[3] = &unk_278D5CBF8;
  v55 = v53;
  v243 = v55;
  objc_copyWeak(&v244, location);
  v113 = CMContinuityCaptureSMCreateTransitionsFromStatesToDestination(v54, v55, v166, v242, 0);

  v241[0] = v14;
  v241[1] = v55;
  v241[2] = v44;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v241 count:3];
  v238[0] = MEMORY[0x277D85DD0];
  v238[1] = 3221225472;
  v238[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_34;
  v238[3] = &unk_278D5CBF8;
  v57 = v55;
  v239 = v57;
  objc_copyWeak(&v240, location);
  v112 = CMContinuityCaptureSMCreateTransitionsFromStatesToDestination(v56, v57, v163, v238, 0);

  v237[0] = v14;
  v237[1] = v57;
  v237[2] = v44;
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v237 count:3];
  v234[0] = MEMORY[0x277D85DD0];
  v234[1] = 3221225472;
  v234[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_35;
  v234[3] = &unk_278D5CBF8;
  v59 = v57;
  v235 = v59;
  objc_copyWeak(&v236, location);
  v111 = CMContinuityCaptureSMCreateTransitionsFromStatesToDestination(v58, v59, v162, v234, 0);

  v233[0] = v14;
  v233[1] = v59;
  v233[2] = v44;
  v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v233 count:3];
  v230[0] = MEMORY[0x277D85DD0];
  v230[1] = 3221225472;
  v230[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_36;
  v230[3] = &unk_278D5CBF8;
  v61 = v59;
  v231 = v61;
  objc_copyWeak(&v232, location);
  v110 = CMContinuityCaptureSMCreateTransitionsFromStatesToDestination(v60, v61, v167, v230, 0);

  v229 = v61;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v229 count:1];
  v226[0] = MEMORY[0x277D85DD0];
  v226[1] = 3221225472;
  v226[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_37;
  v226[3] = &unk_278D5CBF8;
  v63 = v61;
  v227 = v63;
  objc_copyWeak(&v228, location);
  v108 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinations(v14, v62, v136, v226, 0);

  v225[0] = v14;
  v225[1] = v63;
  v225[2] = v44;
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v225 count:3];
  v222[0] = MEMORY[0x277D85DD0];
  v222[1] = 3221225472;
  v222[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_38;
  v222[3] = &unk_278D5CBF8;
  v65 = v63;
  v223 = v65;
  objc_copyWeak(&v224, location);
  v109 = CMContinuityCaptureSMCreateTransitionsFromStatesToDestination(v64, v65, v161, v222, 0);

  v221[0] = v14;
  v221[1] = v44;
  v66 = [MEMORY[0x277CBEA60] arrayWithObjects:v221 count:2];
  v218[0] = MEMORY[0x277D85DD0];
  v218[1] = 3221225472;
  v218[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_39;
  v218[3] = &unk_278D5CBF8;
  v67 = v65;
  v219 = v67;
  objc_copyWeak(&v220, location);
  v107 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinations(v67, v66, v173, v218, &__block_literal_global_110);

  v217[0] = v14;
  v217[1] = v44;
  v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v217 count:2];
  v214[0] = MEMORY[0x277D85DD0];
  v214[1] = 3221225472;
  v214[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_41;
  v214[3] = &unk_278D5CBF8;
  v69 = v67;
  v215 = v69;
  objc_copyWeak(&v216, location);
  v106 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinations(v69, v68, v168, v214, &__block_literal_global_112);

  v213[0] = v14;
  v213[1] = v44;
  v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v213 count:2];
  v210[0] = MEMORY[0x277D85DD0];
  v210[1] = 3221225472;
  v210[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_43;
  v210[3] = &unk_278D5CBF8;
  v71 = v69;
  v211 = v71;
  objc_copyWeak(&v212, location);
  v105 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinations(v71, v70, v172, v210, &__block_literal_global_114);

  v209[0] = v14;
  v209[1] = v44;
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v209 count:2];
  v206[0] = MEMORY[0x277D85DD0];
  v206[1] = 3221225472;
  v206[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_45;
  v206[3] = &unk_278D5CBF8;
  v73 = v71;
  v207 = v73;
  objc_copyWeak(&v208, location);
  v104 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinations(v73, v72, v174, v206, &__block_literal_global_116);

  v205[0] = v14;
  v205[1] = v44;
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v205 count:2];
  v202[0] = MEMORY[0x277D85DD0];
  v202[1] = 3221225472;
  v202[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_47;
  v202[3] = &unk_278D5CBF8;
  v75 = v73;
  v203 = v75;
  objc_copyWeak(&v204, location);
  v103 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinations(v75, v74, v164, v202, &__block_literal_global_118);

  v201 = v14;
  v76 = [MEMORY[0x277CBEA60] arrayWithObjects:&v201 count:1];
  v198[0] = MEMORY[0x277D85DD0];
  v198[1] = 3221225472;
  v198[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_49;
  v198[3] = &unk_278D5CBF8;
  v77 = v75;
  v199 = v77;
  objc_copyWeak(&v200, location);
  v100 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinations(v77, v76, v9, v198, &__block_literal_global_120);

  v197[0] = v174;
  v197[1] = v173;
  v197[2] = v168;
  v197[3] = v172;
  v197[4] = v164;
  v197[5] = v9;
  v78 = [MEMORY[0x277CBEA60] arrayWithObjects:v197 count:6];
  v192[0] = MEMORY[0x277D85DD0];
  v192[1] = 3221225472;
  v192[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_51;
  v192[3] = &unk_278D5CC48;
  v193 = v77;
  v79 = v164;
  v194 = v79;
  v80 = v168;
  v195 = v80;
  objc_copyWeak(&v196, location);
  v190[0] = MEMORY[0x277D85DD0];
  v190[1] = 3221225472;
  v190[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_52;
  v190[3] = &unk_278D5CC20;
  v81 = v193;
  v191 = v81;
  v169 = CMContinuityCaptureSMCreateTransitionsFromStateToDestinationOnEvents(v81, v81, v78, v192, v190);

  v189[0] = v14;
  v189[1] = v81;
  v189[2] = v44;
  v82 = [MEMORY[0x277CBEA60] arrayWithObjects:v189 count:3];
  v187[0] = MEMORY[0x277D85DD0];
  v187[1] = 3221225472;
  v187[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_53;
  v187[3] = &unk_278D5CB10;
  objc_copyWeak(&v188, location);
  v165 = CMContinuityCaptureSMCreateTransitionsFromStatesToDestination(v82, v152, v160, v187, 0);

  v186 = v16;
  v83 = [MEMORY[0x277CBEA60] arrayWithObjects:&v186 count:1];
  v84 = CMContinuityCaptureSMCreateTransitionsFromStatesToDestination(v83, v152, v160, 0, 0);
  v99 = v80;

  v185[0] = v150;
  v185[1] = v170;
  v185[2] = v157;
  v185[3] = v156;
  v185[4] = v127;
  v185[5] = v154;
  v85 = [MEMORY[0x277CBEA60] arrayWithObjects:v185 count:6];
  v86 = self->_stateMachine;
  v180[0] = MEMORY[0x277D85DD0];
  v180[1] = 3221225472;
  v180[2] = __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_54;
  v180[3] = &unk_278D5CC70;
  v181 = v81;
  v171 = v170;
  v182 = v171;
  objc_copyWeak(&v184, location);
  v151 = v150;
  v183 = v151;
  v98 = v181;
  v87 = CMContinuityCaptureSMDeferEventsInState(v85, v181, v86, v180);

  v88 = self->_stateMachine;
  v179[0] = v102;
  v179[1] = v132;
  v179[2] = v134;
  v179[3] = v133;
  v89 = [MEMORY[0x277CBEA60] arrayWithObjects:v179 count:4];
  [(CMContinuityCaptureStateMachine *)v88 addStateTransitions:v89];

  v90 = self->_stateMachine;
  v178[0] = v131;
  v178[1] = v142;
  v178[2] = v128;
  v178[3] = v130;
  v178[4] = v129;
  v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v178 count:5];
  [(CMContinuityCaptureStateMachine *)v90 addStateTransitions:v91];

  v92 = self->_stateMachine;
  v177[0] = v126;
  v177[1] = v125;
  v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v177 count:2];
  [(CMContinuityCaptureStateMachine *)v92 addStateTransitions:v93];

  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:v124];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:v123];
  v94 = self->_stateMachine;
  v176[0] = v122;
  v176[1] = v121;
  v176[2] = v120;
  v176[3] = v119;
  v95 = [MEMORY[0x277CBEA60] arrayWithObjects:v176 count:4];
  [(CMContinuityCaptureStateMachine *)v94 addStateTransitions:v95];

  v96 = self->_stateMachine;
  v175[0] = v118;
  v175[1] = v117;
  v175[2] = v116;
  v97 = [MEMORY[0x277CBEA60] arrayWithObjects:v175 count:3];
  [(CMContinuityCaptureStateMachine *)v96 addStateTransitions:v97];

  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:v115];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:v101];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:v109];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:v113];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:v112];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:v111];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:v110];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:v108];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:v107];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:v106];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:v105];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:v104];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:v103];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:v100];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:v169];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:v165];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:v84];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine addStateTransitions:v87];
  [(CMContinuityCaptureStateMachine *)self->_stateMachine setCurrentState:v14];

  objc_destroyWeak(&v184);
  objc_destroyWeak(&v188);

  objc_destroyWeak(&v196);
  objc_destroyWeak(&v200);

  objc_destroyWeak(&v204);
  objc_destroyWeak(&v208);

  objc_destroyWeak(&v212);
  objc_destroyWeak(&v216);

  objc_destroyWeak(&v220);
  objc_destroyWeak(&v224);

  objc_destroyWeak(&v228);
  objc_destroyWeak(&v232);

  objc_destroyWeak(&v236);
  objc_destroyWeak(&v240);

  objc_destroyWeak(&v244);
  objc_destroyWeak(&v248);

  objc_destroyWeak(&v251);
  objc_destroyWeak(&v254);

  objc_destroyWeak(&v257);
  objc_destroyWeak(&v259);

  objc_destroyWeak(&v261);
  objc_destroyWeak(&v263);

  objc_destroyWeak(&v265);
  objc_destroyWeak(&v270);

  objc_destroyWeak(&v274);
  objc_destroyWeak(&v278);

  objc_destroyWeak(v280);
  objc_destroyWeak(v283);

  objc_destroyWeak(v292);
  objc_destroyWeak(v295);

  objc_destroyWeak(v307);
  objc_destroyWeak(v308);

  objc_destroyWeak(v311);
  objc_destroyWeak(v312);

  objc_destroyWeak(&v316);
  objc_destroyWeak(&v318);

  objc_destroyWeak(&v320);
  objc_destroyWeak(&v322);

  objc_destroyWeak(location);
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained postActionOfType:1 forEvent:v3 option:0];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained postActionOfType:2 forEvent:v3 option:0];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setStreamStateTimeout:1 forTime:0];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained postActionOfType:8 forEvent:v3 option:0];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained postActionOfType:9 forEvent:v3 option:0];
}

uint64_t __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained activeConnection];

  return v2 ^ 1u;
}

uint64_t __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained scheduleDeviceBusyNotification:1];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:v3 onEvent:v4];
}

uint64_t __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained activeConnection];

  return v2 ^ 1u;
}

uint64_t __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained scheduleDeviceBusyNotification:1];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:v3 onEvent:v4];
}

uint64_t __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained scheduleDeviceBusyNotification:0];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:v3 onEvent:v4];
}

uint64_t __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_16(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained scheduleDeviceBusyNotification:0];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:v3 onEvent:v4];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_19(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained scheduleDeviceBusyNotification:0];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 unconditionalTransitionForState:*(a1 + 32) andDeferringEvent:*(a1 + 40)];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stateMachineClearDeferredEvents];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 stateMachineNotifyComplete:0];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_21(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained scheduleDeviceBusyNotification:0];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 unconditionalTransitionForState:*(a1 + 32) andDeferringEvent:*(a1 + 40)];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_22(uint64_t a1, void *a2)
{
  v8 = a2;
  [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:*(a1 + 32) onEvent:v8];
  v3 = [v8 name];
  if ([v3 isEqualToString:@"kCMContinuityCaptureEventCaptureSessionStarted"])
  {
  }

  else
  {
    v4 = [v8 name];
    v5 = [v4 isEqualToString:@"kCMContinuityCaptureEventStreamDisableForDeviceInUse"];

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained scheduleDeviceBusyNotification:1];

LABEL_5:
  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 stateMachineNotifyComplete:0];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_23(uint64_t a1, void *a2)
{
  v8 = a2;
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:*(a1 + 32) onEvent:v8];
  v3 = [v8 name];
  if ([v3 isEqualToString:@"kCMContinuityCaptureEventCaptureSessionStarted"])
  {
  }

  else
  {
    v4 = [v8 name];
    v5 = [v4 isEqualToString:@"kCMContinuityCaptureEventStreamDisableForDeviceInUse"];

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained scheduleDeviceBusyNotification:0];

LABEL_5:
  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 stateMachineNotifyComplete:0];
}

BOOL __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_24(uint64_t a1)
{
  v1 = [*(a1 + 32) pendingEvents];
  v2 = [v1 count] > 1;

  return v2;
}

uint64_t __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_25(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [v5 name];

  v8 = [WeakRetained postActionGuardOfType:1 forEventName:v7 option:0];
  return v8;
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained postActionOfType:3 forEvent:v3 option:0];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained postActionOfType:3 forEvent:v3 option:0];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_28(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained postActionOfType:4 forEvent:v3 option:0];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_29(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained postActionOfType:5 forEvent:v3 option:0];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_30(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:v3 onEvent:v4];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:7 forEvent:v4 option:64];
}

uint64_t __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_31(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if ([CMContinuityCaptureDeviceBase defaultStateExitGuard:a2 dstState:a3 onEvent:v7])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v9 = [v7 name];
    v10 = [WeakRetained postActionGuardOfType:1 forEventName:v9 option:64];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_32(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:v3 onEvent:v4];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:6 forEvent:v4 option:2];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_33(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:v3 onEvent:v4];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:6 forEvent:v4 option:0];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 stateMachineNotifyComplete:0];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:v3 onEvent:v4];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:6 forEvent:v4 option:0];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 stateMachineNotifyComplete:0];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_35(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:v3 onEvent:v4];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:6 forEvent:v4 option:0];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 stateMachineNotifyComplete:0];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_36(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:v3 onEvent:v4];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:6 forEvent:v4 option:0];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 stateMachineNotifyComplete:0];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_37(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:v3 onEvent:v4];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:6 forEvent:v4 option:0];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 stateMachineNotifyComplete:0];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_38(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [CMContinuityCaptureDeviceBase defaultStateEntryTransitionActionForState:v3 onEvent:v4];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:6 forEvent:v4 option:0];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 stateMachineNotifyComplete:0];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_39(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:v3 onEvent:v4];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:7 forEvent:v4 option:0];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 stateMachineNotifyComplete:0];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_41(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:v3 onEvent:v4];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:7 forEvent:v4 option:0];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 stateMachineNotifyComplete:0];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_43(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:v3 onEvent:v4];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:7 forEvent:v4 option:0];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 stateMachineNotifyComplete:0];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_45(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:v3 onEvent:v4];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:7 forEvent:v4 option:0];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 stateMachineNotifyComplete:0];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_47(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:v3 onEvent:v4];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:7 forEvent:v4 option:0];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 stateMachineNotifyComplete:0];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_49(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:v3 onEvent:v4];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained postActionOfType:7 forEvent:v4 option:0];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 stateMachineNotifyComplete:0];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_51(uint64_t a1, void *a2)
{
  v6 = a2;
  [CMContinuityCaptureDeviceBase defaultStateExitTransitionActionForState:*(a1 + 32) onEvent:v6];
  if (*(a1 + 40) == v6 || *(a1 + 48) == v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v4 = *(a1 + 48) == v6;
    [WeakRetained postActionOfType:7 forEvent:? option:?];
  }

  v5 = objc_loadWeakRetained((a1 + 56));
  [v5 stateMachineNotifyComplete:0];
}

BOOL __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_52(uint64_t a1)
{
  v1 = [*(a1 + 32) pendingEvents];
  v2 = [v1 count] > 1;

  return v2;
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_53(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained postActionOfType:10 forEvent:v3 option:0];
}

void __50__CMContinuityCaptureDeviceBase_setupStateMachine__block_invoke_54(id *a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (a1[4] == v11)
  {
    if (a1[5] == v5)
    {
      WeakRetained = objc_loadWeakRetained(a1 + 7);
      v7 = WeakRetained;
      v8 = 6;
      v9 = v5;
      v10 = 2;
    }

    else
    {
      if (a1[6] != v5)
      {
        goto LABEL_7;
      }

      WeakRetained = objc_loadWeakRetained(a1 + 7);
      v7 = WeakRetained;
      v8 = 7;
      v9 = v5;
      v10 = 64;
    }

    [WeakRetained postActionOfType:v8 forEvent:v9 option:v10];
  }

LABEL_7:
}

- (id)_aggregateStreamEventsInStreamState:(id)state
{
  stateCopy = state;
  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  dispatch_assert_queue_V2(self->_queue);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = stateCopy;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (!v6)
  {

    v8 = 0;
    goto LABEL_27;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = *v38;
  v11 = @"kCMContinuityCaptureEventData";
  v33 = v5;
  v32 = *v38;
  do
  {
    v12 = 0;
    v34 = v7;
    do
    {
      if (*v38 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v13 = *(*(&v37 + 1) + 8 * v12);
      if (v9)
      {
        [v35 addObject:*(*(&v37 + 1) + 8 * v12)];
LABEL_8:
        v9 = 1;
        goto LABEL_18;
      }

      v14 = v11;
      v15 = [*(*(&v37 + 1) + 8 * v12) objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
      v16 = [v15 isEqualToString:@"kCMContinuityCaptureEventStartStream"];

      if (v16)
      {
        v11 = v14;
        if (v8)
        {
          v17 = [v8 objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
          v18 = [v8 objectForKeyedSubscript:v14];
          v19 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:2 userInfo:0];
          [(CMContinuityCaptureDeviceBase *)self postActionCompletionForEventName:v17 eventData:v18 error:v19];

          v11 = v14;
        }

        v20 = [v13 objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
        v21 = [v13 objectForKeyedSubscript:v11];
        v22 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:2 userInfo:0];
        [(CMContinuityCaptureDeviceBase *)self postActionCompletionForEventName:v20 eventData:v21 error:v22];

        v8 = 0;
        v9 = 0;
      }

      else
      {
        v23 = [v13 objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
        v24 = [v23 isEqualToString:@"kCMContinuityCaptureEventStopStream"];

        v11 = v14;
        if (!v24)
        {
          v5 = v33;
          v7 = v34;
          v10 = v32;
          if (v8)
          {
            [v35 addObject:v8];
          }

          [v35 addObject:v13];
          v8 = 0;
          goto LABEL_8;
        }

        if (v8)
        {
          v25 = [v8 objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
          v26 = [v8 objectForKeyedSubscript:v14];
          v27 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:2 userInfo:0];
          [(CMContinuityCaptureDeviceBase *)self postActionCompletionForEventName:v25 eventData:v26 error:v27];

          v11 = v14;
        }

        v28 = v13;

        v9 = 0;
        v8 = v28;
      }

      v5 = v33;
      v7 = v34;
      v10 = v32;
LABEL_18:
      ++v12;
    }

    while (v7 != v12);
    v29 = [v5 countByEnumeratingWithState:&v37 objects:v36 count:16];
    v7 = v29;
  }

  while (v29);

  if (v8)
  {
    v30 = v35;
    [v35 addObject:v8];
    goto LABEL_28;
  }

LABEL_27:
  v30 = v35;
LABEL_28:

  return v30;
}

- (id)_aggregateStreamEventsInInitState:(id)state
{
  stateCopy = state;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  dispatch_assert_queue_V2(self->_queue);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = stateCopy;
  v7 = [v6 countByEnumeratingWithState:&v42 objects:v41 count:16];
  if (!v7)
  {

    v9 = 0;
    goto LABEL_32;
  }

  v8 = v7;
  selfCopy = self;
  v9 = 0;
  v10 = 0;
  v11 = *v43;
  v38 = v6;
  v39 = v5;
  v36 = *v43;
  do
  {
    v12 = 0;
    v40 = v8;
    do
    {
      if (*v43 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v42 + 1) + 8 * v12);
      if (v10)
      {
        [v5 addObject:*(*(&v42 + 1) + 8 * v12)];
        v10 = 1;
        goto LABEL_23;
      }

      v14 = [*(*(&v42 + 1) + 8 * v12) objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
      v15 = [v14 isEqualToString:@"kCMContinuityCaptureEventStartStream"];

      if (v15)
      {
        if (v9)
        {
          v16 = [v9 objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
          v17 = [v9 objectForKeyedSubscript:@"kCMContinuityCaptureEventData"];
          v18 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:2 userInfo:0];
          [(CMContinuityCaptureDeviceBase *)selfCopy postActionCompletionForEventName:v16 eventData:v17 error:v18];
        }

        v19 = v13;

        v10 = 0;
        v9 = v19;
      }

      else
      {
        v20 = [v13 objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
        v21 = [v20 isEqualToString:@"kCMContinuityCaptureEventStopStream"];

        if (v21)
        {
          if (v9)
          {
            v22 = [v9 objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
            v23 = [v9 objectForKeyedSubscript:@"kCMContinuityCaptureEventData"];
            v24 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:2 userInfo:0];
            [(CMContinuityCaptureDeviceBase *)selfCopy postActionCompletionForEventName:v22 eventData:v23 error:v24];
          }

          v25 = [v13 objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
          v26 = [v13 objectForKeyedSubscript:@"kCMContinuityCaptureEventData"];
          v27 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:2 userInfo:0];
          [(CMContinuityCaptureDeviceBase *)selfCopy postActionCompletionForEventName:v25 eventData:v26 error:v27];

          v9 = 0;
          v10 = 0;
          v5 = v39;
          v6 = v38;
          v11 = v36;
          goto LABEL_22;
        }

        v28 = [v13 objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
        if ([v28 isEqualToString:@"kCMContinuityCaptureEventForceRestartStream"])
        {
        }

        else
        {
          v29 = [v13 objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
          v30 = [v29 isEqualToString:@"kCMContinuityCaptureEventStreamInterrupted"];

          if (!v30)
          {
            v5 = v39;
            if (v9)
            {
              [v39 addObject:v9];
            }

            [v39 addObject:v13];
            v9 = 0;
            v10 = 1;
            goto LABEL_21;
          }
        }

        v31 = [v13 objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
        v32 = [v13 objectForKeyedSubscript:@"kCMContinuityCaptureEventData"];
        v33 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:2 userInfo:0];
        [(CMContinuityCaptureDeviceBase *)selfCopy postActionCompletionForEventName:v31 eventData:v32 error:v33];

        v10 = 0;
      }

      v5 = v39;
LABEL_21:
      v6 = v38;
LABEL_22:
      v8 = v40;
LABEL_23:
      ++v12;
    }

    while (v8 != v12);
    v34 = [v6 countByEnumeratingWithState:&v42 objects:v41 count:16];
    v8 = v34;
  }

  while (v34);

  if (v9)
  {
    [v5 addObject:v9];
  }

LABEL_32:

  return v5;
}

- (id)_aggregateEventPairInAnyState:(id)state entryEventName:(id)name exitEventName:(id)eventName
{
  stateCopy = state;
  nameCopy = name;
  eventNameCopy = eventName;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  dispatch_assert_queue_V2(self->_queue);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = stateCopy;
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (!v11)
  {

    v13 = 0;
    goto LABEL_22;
  }

  v12 = v11;
  v13 = 0;
  v14 = 0;
  v15 = *v32;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v32 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v31 + 1) + 8 * i);
      if (v14)
      {
        [v9 addObject:*(*(&v31 + 1) + 8 * i)];
        v14 = 1;
        continue;
      }

      v18 = v10;
      v19 = [*(*(&v31 + 1) + 8 * i) objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
      if ([v19 isEqualToString:nameCopy])
      {

LABEL_11:
        if (v13)
        {
          v22 = [v13 objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
          v23 = [v13 objectForKeyedSubscript:@"kCMContinuityCaptureEventData"];
          v24 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:2 userInfo:0];
          [(CMContinuityCaptureDeviceBase *)selfCopy postActionCompletionForEventName:v22 eventData:v23 error:v24];
        }

        v25 = v17;

        v14 = 0;
        v13 = v25;
        v10 = v18;
        continue;
      }

      v20 = [v17 objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
      v21 = [v20 isEqualToString:eventNameCopy];

      if (v21)
      {
        goto LABEL_11;
      }

      v10 = v18;
      if (v13)
      {
        [v9 addObject:v13];
      }

      [v9 addObject:v17];
      v13 = 0;
      v14 = 1;
    }

    v12 = [v10 countByEnumeratingWithState:&v31 objects:v30 count:16];
  }

  while (v12);

  if (v13)
  {
    [v9 addObject:v13];
  }

LABEL_22:

  return v9;
}

- (id)_aggregateEventDuplicatesInAnyState:(id)state eventName:(id)name
{
  stateCopy = state;
  nameCopy = name;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  dispatch_assert_queue_V2(self->_queue);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = stateCopy;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (!v9)
  {

    v11 = 0;
    goto LABEL_21;
  }

  v10 = v9;
  v11 = 0;
  v12 = 0;
  v13 = *v27;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v27 != v13)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v26 + 1) + 8 * i);
      if (v12)
      {
        [v7 addObject:*(*(&v26 + 1) + 8 * i)];
LABEL_15:
        v12 = 1;
        continue;
      }

      v16 = [*(*(&v26 + 1) + 8 * i) objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
      v17 = [v16 isEqualToString:nameCopy];

      if (!v17)
      {
        if (v11)
        {
          [v7 addObject:v11];
        }

        [v7 addObject:v15];
        v11 = 0;
        goto LABEL_15;
      }

      if (v11)
      {
        v18 = [v11 objectForKeyedSubscript:@"kCMContinuityCaptureEventName"];
        v19 = [v11 objectForKeyedSubscript:@"kCMContinuityCaptureEventData"];
        v20 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuityCapture" code:2 userInfo:0];
        [(CMContinuityCaptureDeviceBase *)selfCopy postActionCompletionForEventName:v18 eventData:v19 error:v20];
      }

      v21 = v15;

      v12 = 0;
      v11 = v21;
    }

    v10 = [v8 countByEnumeratingWithState:&v26 objects:v25 count:16];
  }

  while (v10);

  if (v11)
  {
    [v7 addObject:v11];
  }

LABEL_21:

  return v7;
}

- (id)aggregateEvents:(id)events
{
  eventsCopy = events;
  dispatch_assert_queue_V2(self->_queue);
  if ([eventsCopy count])
  {
    currentState = [(CMContinuityCaptureStateMachine *)self->_stateMachine currentState];
    name = [currentState name];
    v7 = [name isEqualToString:@"kCMContinuityCaptureStateInit"];

    if (v7)
    {
      v8 = [(CMContinuityCaptureDeviceBase *)self _aggregateStreamEventsInInitState:eventsCopy];
    }

    else
    {
      currentState2 = [(CMContinuityCaptureStateMachine *)self->_stateMachine currentState];
      name2 = [currentState2 name];
      v12 = [name2 isEqualToString:@"kCMContinuityCaptureStateStreaming"];

      if (v12)
      {
        v8 = [(CMContinuityCaptureDeviceBase *)self _aggregateStreamEventsInStreamState:eventsCopy];
      }

      else
      {
        v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:eventsCopy];
      }
    }

    v13 = v8;
    v14 = [(CMContinuityCaptureDeviceBase *)self _aggregateEventPairInAnyState:v8 entryEventName:@"kCMContinuityCaptureEventUserPause" exitEventName:@"kCMContinuityCaptureEventUserResume"];

    v15 = [(CMContinuityCaptureDeviceBase *)self _aggregateEventPairInAnyState:v14 entryEventName:@"kCMContinuityCaptureEventActiveCallStart" exitEventName:@"kCMContinuityCaptureEventActiveCallEnd"];

    v16 = [(CMContinuityCaptureDeviceBase *)self _aggregateEventDuplicatesInAnyState:v15 eventName:@"kCMContinuityCaptureEventStreamInterrupted"];

    v9 = [(CMContinuityCaptureDeviceBase *)self _aggregateEventDuplicatesInAnyState:v16 eventName:@"kCMContinuityCaptureEventForceRestartStream"];
  }

  else
  {
    v9 = eventsCopy;
  }

  return v9;
}

- (void)postDeferredEvent:(id)event data:(id)data
{
  eventCopy = event;
  dataCopy = data;
  WeakRetained = objc_loadWeakRetained(&self->_compositeDelegate);
  if (WeakRetained)
  {
    v9 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543874;
      selfCopy = self;
      v12 = 2080;
      v13 = "[CMContinuityCaptureDeviceBase postDeferredEvent:data:]";
      v14 = 2112;
      v15 = eventCopy;
      _os_log_impl(&dword_242545000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %s name:%{pubic}@", &v10, 0x20u);
    }

    [WeakRetained postEvent:eventCopy entity:-[CMContinuityCaptureDeviceBase entity](self data:{"entity"), dataCopy}];
  }
}

- (CMContinuityCaptureCompositeDeviceDelegate)compositeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_compositeDelegate);

  return WeakRetained;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  transportDevice = [(CMContinuityCaptureDeviceBase *)self transportDevice];
  deviceIdentifier = [transportDevice deviceIdentifier];
  v8 = [v3 stringWithFormat:@"%@: %@ entity:%u [%p]", v5, deviceIdentifier, self->_entity, self];

  return v8;
}

@end