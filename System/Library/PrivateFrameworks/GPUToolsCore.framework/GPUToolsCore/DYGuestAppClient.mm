@interface DYGuestAppClient
+ (id)timebaseDictionary;
- (BOOL)triggerArmedCapture;
- (DYGuestAppClient)init;
- (DYGuestAppClient)initWithTransport:(id)a3;
- (id)_buildLibraryLinkTimeVersionsDictionary;
- (id)_buildQueueThreadLabelsDictionary;
- (unint64_t)handleFrameBoundaryCommon;
- (void)_appendLinkTimeLibrary:(const char *)a3 toVersionsDictionary:(id)a4;
- (void)_armCapture;
- (void)_handleActivateCaptureMessage:(id)a3;
- (void)_resetBufferUsageCounters;
- (void)_sendBufferUsageCounters;
- (void)_startCapture;
- (void)_turnOffCapturing;
- (void)_turnOnCapturing;
- (void)atexit;
- (void)dealloc;
- (void)handleCaptureModeTransition:(BOOL)a3;
- (void)handleFrameBoundaryCommon;
- (void)incrementCapturedFramesCounter;
- (void)invalidateCapture;
- (void)invalidateSavePointerMap:(id)a3;
- (void)lockGraphicsAndWaitForThreads:(BOOL)a3;
- (void)notifyAllCaptureDataSent;
- (void)notifyAllCaptureMetadataSent;
- (void)notifyUsedDataSentWithDictionary:(id)a3;
- (void)processMessage:(id)a3;
- (void)resetPointerToUrlAssociation:(const void *)a3;
- (void)sendCaptureData:(id)a3 name:(id)a4 inReplyTo:(id)a5;
- (void)sendTimebaseUpdate;
- (void)setTraceMode:(int)a3;
- (void)stopCapture;
- (void)unlockGraphics;
@end

@implementation DYGuestAppClient

+ (id)timebaseDictionary
{
  v2 = mach_absolute_time();
  gettimeofday(&v10, 0);
  v3 = mach_absolute_time();
  mach_timebase_info(&g_DYTimebaseInfo);
  v4 = v2 + ((v3 - v2) >> 1);
  v5 = MEMORY[0x277CBEAC0];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:1000000000 * v10.tv_sec + 1000 * v10.tv_usec];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v4];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:g_DYTimebaseInfo];
  return [v5 dictionaryWithObjectsAndKeys:{v6, @"nanoseconds since epoch timestamp", v7, @"mach absolute timestamp", v8, @"mach timebase numerator", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", dword_27F0982A4), @"mach timebase denominator", 0}];
}

- (DYGuestAppClient)init
{
  [(DYGuestAppClient *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setTraceMode:(int)a3
{
  traceMode = self->_traceMode;
  if (traceMode != a3)
  {
    self->_traceMode = a3;
    self->_previousTraceMode = traceMode;
  }

  v5 = +[DYTransportMessage messageWithKind:objectPayload:](DYTransportMessage, "messageWithKind:objectPayload:", 1796, [MEMORY[0x277CCABB0] numberWithInt:?]);

  [(DYGuestAppClient *)self sendMessage:v5];
}

- (DYGuestAppClient)initWithTransport:(id)a3
{
  v10.receiver = self;
  v10.super_class = DYGuestAppClient;
  v3 = [(DYGuestAppClient *)&v10 init];
  if (v3)
  {
    if ([DYGuestAppClient initWithTransport:]::onceToken != -1)
    {
      [DYGuestAppClient initWithTransport:];
    }

    [_gWeakAppClients addPointer:v3];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__DYGuestAppClient_initWithTransport___block_invoke_2;
    v9[3] = &unk_27930D210;
    v9[4] = v3;
    v4 = [v9 copy];
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 8uLL, 0x40uLL, 0x51FE263DuLL);
    v5 = memptr;
    GPUTools::FB::Stream::Stream(memptr, v4, 0);
    *(v3 + 8) = v5;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 8uLL, 0x40uLL, 0x51FE263DuLL);
    v6 = memptr;
    GPUTools::FB::Stream::Stream(memptr, v4, 0);
    *(v3 + 9) = v6;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 8uLL, 0x40uLL, 0x51FE263DuLL);
    v7 = memptr;
    GPUTools::FB::Stream::Stream(memptr, v4, 0);
    *(v3 + 10) = v7;

    GPUTools::FB::Stream::Open(*(v3 + 8), @"live");
  }

  return 0;
}

id __38__DYGuestAppClient_initWithTransport___block_invoke()
{
  result = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
  _gWeakAppClients = result;
  return result;
}

intptr_t __38__DYGuestAppClient_initWithTransport___block_invoke_6(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 48));
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

- (void)dealloc
{
  dispatch_release(self->_globalSyncQueue);
  v3.receiver = self;
  v3.super_class = DYGuestAppClient;
  [(DYGuestAppClient *)&v3 dealloc];
}

- (void)atexit
{
  if (self->_state == 3)
  {
    [(DYGuestAppClient *)self handleCaptureModeTransition:0];
  }

  if ([(DYCaptureState *)self->_activeCaptureState capturedFrames]&& ![(DYCaptureState *)self->_activeCaptureState allDataReceivedAck])
  {
    do
    {
      if ([(DYTransport *)self->_transport invalid])
      {
        break;
      }

      sleep(1u);
    }

    while (![(DYCaptureState *)self->_activeCaptureState allDataReceivedAck]);
  }
}

- (void)handleFrameBoundaryCommon
{
  if (self->_state)
  {
    [(DYGuestAppClient *)self handleFrameBoundaryCommon];
  }
}

- (void)handleCaptureModeTransition:(BOOL)a3
{
  globalSyncQueue = self->_globalSyncQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__DYGuestAppClient_handleCaptureModeTransition___block_invoke;
  v4[3] = &unk_27930C710;
  v5 = a3;
  v4[4] = self;
  dispatch_sync(globalSyncQueue, v4);
}

void __48__DYGuestAppClient_handleCaptureModeTransition___block_invoke(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    *(*(a1 + 32) + 152) = 4;
    v2 = g_dySignpostLog;
    if (os_signpost_enabled(g_dySignpostLog))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_24D66C000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "StopActiveCapture", &unk_24D6BAC2E, v5, 2u);
    }
  }

  if ([*(*(a1 + 32) + 160) sessionId])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    if (*(a1 + 40) == 1)
    {
      [v4 _turnOnCapturing];
    }

    else
    {
      [v4 _turnOffCapturing];
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    *(*(a1 + 32) + 152) = 0;

    *(*(a1 + 32) + 160) = 0;
    *(*(a1 + 32) + 168) = 0;
  }
}

- (void)processMessage:(id)a3
{
  v5 = [a3 kind];
  if (v5 > 1536)
  {
    if (v5 > 1544)
    {
      switch(v5)
      {
        case 1545:

          [(DYGuestAppClient *)self lockGraphicsAndWaitForThreads:0];
          break;
        case 1546:

          [(DYGuestAppClient *)self unlockGraphics];
          break;
        case 1795:
          defaultFbufStream = self->_defaultFbufStream;

          GPUTools::FB::Stream::Flush(defaultFbufStream);
          break;
      }
    }

    else
    {
      switch(v5)
      {
        case 1537:
          v10 = GPUTools::Interpose::gInterposeSemaphore;

          dispatch_semaphore_signal(v10);
          break;
        case 1539:
          v9 = +[DYTransportMessage messageWithKind:attributes:](DYTransportMessage, "messageWithKind:attributes:", 1539, [objc_opt_class() timebaseDictionary]);

          [(DYGuestAppClient *)self sendMessage:v9 inReplyTo:a3];
          break;
        case 1540:

          [(DYGuestAppClient *)self invalidateSavePointerMap:a3];
          break;
      }
    }

    return;
  }

  if (v5 <= 262)
  {
    if (v5 == 256)
    {
      [(DYCaptureDescriptor *)self->_activeCaptureDescriptor setTriggerFrame:self->_globalFrameCounter];
    }

    else
    {
      if (v5 != 260)
      {
        return;
      }

      if ((self->_state | 2) == 3)
      {
        [(DYGuestAppClient *)self lockGraphicsAndWaitForThreads:1];
        stopCaptureQueue = self->_stopCaptureQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __35__DYGuestAppClient_processMessage___block_invoke;
        block[3] = &unk_27930C1E8;
        block[4] = self;
        dispatch_async(stopCaptureQueue, block);
      }
    }

LABEL_36:
    v6 = [objc_msgSend(a3 attributeForKey:{@"capture serial", "unsignedIntValue"}];
    if ([(DYCaptureDescriptor *)self->_activeCaptureDescriptor sessionId]== v6)
    {
      return;
    }

LABEL_44:
    dy_abort("received capture session message with invalid session serial: serial=%u expected=%u message=%s", v6, -[DYCaptureDescriptor sessionId](self->_activeCaptureDescriptor, "sessionId"), [objc_msgSend(a3 "description")]);
  }

  if (v5 == 263)
  {
    [(DYCaptureState *)self->_activeCaptureState setAllDataReceivedAck:1];
    goto LABEL_36;
  }

  if (v5 == 264)
  {
    [(DYGuestAppClient *)self _handleActivateCaptureMessage:a3];
    goto LABEL_36;
  }

  if (v5 != 265)
  {
    return;
  }

  v6 = [objc_msgSend(a3 attributeForKey:{@"capture serial", "unsignedIntValue"}];
  if ([(DYCaptureDescriptor *)self->_activeCaptureDescriptor sessionId]!= v6)
  {
    goto LABEL_44;
  }

  [(DYGuestAppClient *)self invalidateCapture];
}

uint64_t __35__DYGuestAppClient_processMessage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[19] == 3)
  {
    [v2 stopCapture];
  }

  else
  {
    [v2 invalidateCapture];
  }

  v3 = *(a1 + 32);

  return [v3 unlockGraphics];
}

- (void)sendCaptureData:(id)a3 name:(id)a4 inReplyTo:(id)a5
{
  v9 = objc_alloc(MEMORY[0x277CBEAC0]);
  v10 = [v9 initWithObjectsAndKeys:{a4, @"buffer name", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", -[DYCaptureDescriptor sessionId](self->_activeCaptureDescriptor, "sessionId")), @"capture serial", 0}];
  v11 = [[DYTransportMessage alloc] initWithKind:258 attributes:v10 payload:a3];
  [(DYGuestAppClient *)self sendMessage:v11 inReplyTo:a5];
}

- (void)sendTimebaseUpdate
{
  v3 = +[DYTransportMessage messageWithKind:attributes:](DYTransportMessage, "messageWithKind:attributes:", 1539, [objc_opt_class() timebaseDictionary]);

  [(DYGuestAppClient *)self sendMessage:v3 inReplyTo:0];
}

- (void)resetPointerToUrlAssociation:(const void *)a3
{
  ptrUrlInfoDict = self->_ptrUrlInfoDict;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];

  [(NSMutableDictionary *)ptrUrlInfoDict removeObjectForKey:v4];
}

- (void)invalidateSavePointerMap:(id)a3
{
  v5 = a3;
  saveptrQueue = self->_saveptrQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__DYGuestAppClient_invalidateSavePointerMap___block_invoke;
  block[3] = &unk_27930C1E8;
  block[4] = self;
  dispatch_sync(saveptrQueue, block);
  if (a3)
  {
    v7 = [[DYTransportMessage alloc] initWithKind:1540 attributes:0 payload:0];
    [(DYGuestAppClient *)self sendMessage:v7 inReplyTo:a3];
  }
}

uint64_t __45__DYGuestAppClient_invalidateSavePointerMap___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeAllObjects];
  v2 = *(*(a1 + 32) + 40);

  return [v2 removeAllObjects];
}

- (void)notifyAllCaptureDataSent
{
  v13[1] = *MEMORY[0x277D85DE8];
  activeCaptureDescriptor = self->_activeCaptureDescriptor;
  if (activeCaptureDescriptor && ![(DYCaptureDescriptor *)activeCaptureDescriptor localFilePathURL])
  {
    if (self->_state != 4)
    {
      [DYGuestAppClient notifyAllCaptureDataSent];
    }

    v4 = g_dySignpostLog;
    if (os_signpost_enabled(g_dySignpostLog))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_24D66C000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CaptureSentAllData", &unk_24D6BAC2E, buf, 2u);
    }

    v5 = [(DYGuestAppClient *)self _buildLibraryLinkTimeVersionsDictionary];
    v6 = [(DYGuestAppClient *)self _buildQueueThreadLabelsDictionary];
    v7 = MEMORY[0x277CBEB38];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[DYCaptureState capturedFrames](self->_activeCaptureState, "capturedFrames")}];
    v9 = [v7 dictionaryWithObjectsAndKeys:{v8, @"captured frames counter", v5, @"library link-time versions", v6, @"queue/thread labels", objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", _CFExecutableLinkedOnOrAfter() != 0), @"LinkedOnApexOrLater", 0}];
    [(DYGuestAppClient *)self _appendToAllCaptureDataSentMessagePayload:v9];
    v12 = @"capture serial";
    v13[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DYCaptureDescriptor sessionId](self->_activeCaptureDescriptor, "sessionId")}];
    -[DYGuestAppClient sendMessage:](self, "sendMessage:", +[DYTransportMessage messageWithKind:attributes:objectPayload:](DYTransportMessage, "messageWithKind:attributes:objectPayload:", 263, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1], v9));
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)notifyUsedDataSentWithDictionary:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (self->_state != 4)
  {
    [DYGuestAppClient notifyUsedDataSentWithDictionary:];
  }

  v5 = g_dySignpostLog;
  if (os_signpost_enabled(g_dySignpostLog))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24D66C000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CaptureSentUsedData", &unk_24D6BAC2E, buf, 2u);
  }

  v6 = [(DYGuestAppClient *)self _buildLibraryLinkTimeVersionsDictionary];
  v7 = [(DYGuestAppClient *)self _buildQueueThreadLabelsDictionary];
  v8 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLong:", -[DYCaptureState capturedFrames](self->_activeCaptureState, "capturedFrames")), @"captured frames counter", v6, @"library link-time versions", v7, @"queue/thread labels", 0}];
  [v8 addEntriesFromDictionary:a3];
  [(DYGuestAppClient *)self _appendToAllCaptureDataSentMessagePayload:v8];
  v11 = @"capture serial";
  v12[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DYCaptureDescriptor sessionId](self->_activeCaptureDescriptor, "sessionId")}];
  -[DYGuestAppClient sendMessage:](self, "sendMessage:", +[DYTransportMessage messageWithKind:attributes:objectPayload:](DYTransportMessage, "messageWithKind:attributes:objectPayload:", 266, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1], v8));
  v9 = *MEMORY[0x277D85DE8];
}

- (void)notifyAllCaptureMetadataSent
{
  if (self->_state != 4)
  {
    [DYGuestAppClient notifyAllCaptureMetadataSent];
  }

  v3 = g_dySignpostLog;
  if (os_signpost_enabled(g_dySignpostLog))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_24D66C000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CaptureSentAllMetadata", &unk_24D6BAC2E, v4, 2u);
  }

  [(DYGuestAppClient *)self sendMessage:[DYTransportMessage messageWithKind:267]];
}

- (void)lockGraphicsAndWaitForThreads:(BOOL)a3
{
  v3 = a3;
  dispatch_suspend(self->_graphicsLockWaitQueue);
  atomic_fetch_add(&self->_waitOnGraphicsSemaphoreAssertions, 1u);
  if (v3)
  {

    [(DYGuestAppClient *)self _waitForGraphicsThreads];
  }
}

- (void)unlockGraphics
{
  if (self->_waitOnGraphicsSemaphoreAssertions)
  {
    atomic_fetch_add(&self->_waitOnGraphicsSemaphoreAssertions, 0xFFFFFFFF);
    dispatch_resume(self->_graphicsLockWaitQueue);
  }
}

- (void)incrementCapturedFramesCounter
{
  activeCaptureState = self->_activeCaptureState;
  objc_sync_enter(activeCaptureState);
  [(DYCaptureState *)self->_activeCaptureState setCapturedFrames:[(DYCaptureState *)self->_activeCaptureState capturedFrames]+ 1];
  [(DYGuestAppClient *)self _handleFrameEnd:[(DYCaptureState *)self->_activeCaptureState capturedFrames]];

  objc_sync_exit(activeCaptureState);
}

- (id)_buildQueueThreadLabelsDictionary
{
  [(DYGuestAppClient *)self _populateQueueAndThreadLabelMaps];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  [v3 setObject:v4 forKey:@"queues"];

  for (i = self->_activeCaptureState->_dispatchQueueLabelMap.__table_.__first_node_.__next_; i; i = *i)
  {
    v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:i[2]];
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = i + 3;
    if (*(i + 47) < 0)
    {
      v8 = *v8;
    }

    v9 = [v7 initWithUTF8String:v8];
    [v4 setObject:v9 forKey:v6];
  }

  v10 = objc_opt_new();
  [v3 setObject:v10 forKey:@"threads"];

  for (j = self->_activeCaptureState->_threadLabelMap.__table_.__first_node_.__next_; j; j = *j)
  {
    v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLongLong:j[2]];
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = j + 3;
    if (*(j + 47) < 0)
    {
      v14 = *v14;
    }

    v15 = [v13 initWithUTF8String:v14];
    [v10 setObject:v15 forKey:v12];
  }

  return v3;
}

- (id)_buildLibraryLinkTimeVersionsDictionary
{
  v3 = objc_opt_new();
  for (i = 0; i != 5; ++i)
  {
    [(DYGuestAppClient *)self _appendLinkTimeLibrary:[DYGuestAppClient _buildLibraryLinkTimeVersionsDictionary]::commonLibraries[i] toVersionsDictionary:v3];
  }

  [(DYGuestAppClient *)self _appendLinkTimeLibrariesToVersionsDictionary:v3];

  return v3;
}

- (void)_sendBufferUsageCounters
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (![(DYCaptureDescriptor *)self->_activeCaptureDescriptor localFilePathURL])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    saveptrQueue = self->_saveptrQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__DYGuestAppClient__sendBufferUsageCounters__block_invoke;
    block[3] = &unk_27930C170;
    block[4] = self;
    block[5] = v3;
    dispatch_sync(saveptrQueue, block);
    v7 = @"capture serial";
    v8[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DYCaptureDescriptor sessionId](self->_activeCaptureDescriptor, "sessionId")}];
    -[DYGuestAppClient sendMessage:](self, "sendMessage:", +[DYTransportMessage messageWithKind:attributes:plistPayload:](DYTransportMessage, "messageWithKind:attributes:plistPayload:", 262, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1], v3));
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __44__DYGuestAppClient__sendBufferUsageCounters__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__DYGuestAppClient__sendBufferUsageCounters__block_invoke_2;
  v3[3] = &unk_27930D288;
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void __44__DYGuestAppClient__sendBufferUsageCounters__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:{objc_msgSend(a3, "usage")}];
  [v4 setObject:v5 forKey:a2];
}

- (void)_resetBufferUsageCounters
{
  saveptrQueue = self->_saveptrQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__DYGuestAppClient__resetBufferUsageCounters__block_invoke;
  block[3] = &unk_27930C1E8;
  block[4] = self;
  dispatch_sync(saveptrQueue, block);
}

- (void)_appendLinkTimeLibrary:(const char *)a3 toVersionsDictionary:(id)a4
{
  v6 = NSVersionOfLinkTimeLibrary(a3);
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:a3 length:strlen(a3) encoding:1 freeWhenDone:0];
  v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v6];
  [a4 setObject:v8 forKey:v7];
}

- (void)_startCapture
{
  if (!self->_state)
  {
    activeCaptureDescriptor = self->_activeCaptureDescriptor;
    if (activeCaptureDescriptor)
    {
      if (self->_activeCaptureState)
      {
        ++self->_lastSessionSerial;
        [(DYCaptureDescriptor *)activeCaptureDescriptor setSessionId:?];
        if ([(DYCaptureDescriptor *)self->_activeCaptureDescriptor triggerFrame]== 0xFFFFFFFF)
        {
          [(DYCaptureDescriptor *)self->_activeCaptureDescriptor setTriggerFrame:self->_globalFrameCounter];
        }

        self->_state = 2;
        if ([(DYCaptureDescriptor *)self->_activeCaptureDescriptor localFilePathURL])
        {
          [(DYCaptureDescriptor *)self->_activeCaptureDescriptor setSuspendAfterCapture:0];
          [(DYCaptureDescriptor *)self->_activeCaptureDescriptor setLockGraphicsAfterCapture:0];
          if ([(DYCaptureDescriptor *)self->_activeCaptureDescriptor armPreparedCapture])
          {
            self->_state = 1;
          }

          else
          {

            [(DYGuestAppClient *)self _turnOnCapturing];
          }
        }

        else
        {
          v4 = [MEMORY[0x277CBEB38] dictionary];
          [v4 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedLong:", self->_lastSessionSerial), @"Serial"}];
          [v4 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInteger:", 0), @"TriggerFrame"}];
          [v4 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithUnsignedInteger:", 0), @"FrameLimit"}];
          [v4 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", 1), @"TriggerOnNextGLCommand"}];
          [v4 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", 1), @"LockOpenGLAfterCompletion"}];
          [v4 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithBool:", 1), @"SuspendAfterCompletion"}];
          -[DYGuestAppClient sendMessage:](self, "sendMessage:", +[DYTransportMessage messageWithKind:attributes:plistPayload:](DYTransportMessage, "messageWithKind:attributes:plistPayload:", 264, [MEMORY[0x277CBEAC0] dictionaryWithObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedLong:", self->_lastSessionSerial), @"capture serial"}], v4));

          [(DYGuestAppClient *)self lockGraphicsAndWaitForThreads:1];
        }
      }
    }
  }
}

- (void)_armCapture
{
  if (!self->_state)
  {
    activeCaptureDescriptor = self->_activeCaptureDescriptor;
    if (activeCaptureDescriptor)
    {
      if ([(DYCaptureDescriptor *)activeCaptureDescriptor sessionId])
      {
        [(DYGuestAppClient *)self lockGraphicsAndWaitForThreads:1];
        if (![(DYCaptureDescriptor *)self->_activeCaptureDescriptor triggerFrame])
        {
          [(DYGuestAppClient *)self _turnOnCapturing];
        }

        self->_state = 1;

        [(DYGuestAppClient *)self unlockGraphics];
      }
    }
  }
}

- (void)_turnOnCapturing
{
  v3 = g_dySignpostLog;
  if (os_signpost_enabled(g_dySignpostLog))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24D66C000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "StartCapture", &unk_24D6BAC2E, buf, 2u);
  }

  [(DYGuestAppClient *)self lockGraphicsAndWaitForThreads:1];
  if (!self->_localActiveArchive)
  {
    v4 = DYGetInterposeVersion();
    v6 = v5;
    v7 = MEMORY[0x277CBEAC0];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[DYCaptureDescriptor sessionId](self->_activeCaptureDescriptor, "sessionId")}];
    v9 = [MEMORY[0x277CCABB0] numberWithInt:18];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[DYCaptureDescriptor isBoundaryLess](self->_activeCaptureDescriptor, "isBoundaryLess")}];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
    -[DYGuestAppClient sendMessage:](self, "sendMessage:", +[DYTransportMessage messageWithKind:attributes:](DYTransportMessage, "messageWithKind:attributes:", 257, [v7 dictionaryWithObjectsAndKeys:{v8, @"capture serial", v9, @"version", &unk_2860B20A0, @"nativePointerSize", v10, @"BoundaryLess", v11, @"interpose-feature-version", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", v6), @"interpose-patch-version", 0}]));
  }

  [(DYGuestAppClient *)self _handleTurnOnCapture];
  [(DYGuestAppClient *)self _resetBufferUsageCounters];
  GPUTools::FB::Stream::Flush(self->_defaultFbufStream);
  GPUTools::FB::Stream::Flush(self->_startup0Stream);
  GPUTools::FB::Stream::Open(self->_startup1Stream, [MEMORY[0x277CCACA8] stringWithFormat:@"%@-1-%@", @"startup", @"platform"]);
}

- (void)_handleActivateCaptureMessage:(id)a3
{
  state = self->_state;
  if (state)
  {
    if (state == 2)
    {
      v5 = [a3 plistPayload];
      v6 = [objc_msgSend(v5 objectForKey:{@"Serial", "unsignedIntValue"}];
      if ([(DYCaptureDescriptor *)self->_activeCaptureDescriptor sessionId]!= v6)
      {
        [DYGuestAppClient _handleActivateCaptureMessage:];
      }

      -[DYCaptureDescriptor setSuspendAfterCapture:](self->_activeCaptureDescriptor, "setSuspendAfterCapture:", [objc_msgSend(v5 objectForKey:{@"SuspendAfterCompletion", "BOOLValue"}]);
      -[DYCaptureDescriptor setLockGraphicsAfterCapture:](self->_activeCaptureDescriptor, "setLockGraphicsAfterCapture:", [objc_msgSend(v5 objectForKey:{@"LockOpenGLAfterCompletion", "BOOLValue"}]);
      if ([(DYCaptureDescriptor *)self->_activeCaptureDescriptor armPreparedCapture])
      {
        self->_state = 1;
      }

      else
      {
        [(DYGuestAppClient *)self _turnOnCapturing];
      }

      if ([(DYCaptureDescriptor *)self->_activeCaptureDescriptor unlockGraphicThreadsOnActivateCapture])
      {

        [(DYGuestAppClient *)self unlockGraphics];
      }
    }
  }

  else
  {

    [(DYGuestAppClient *)self _armCaptureWithTransportMessage:a3];
  }
}

- (void)_turnOffCapturing
{
  [(DYGuestAppClient *)self lockGraphicsAndWaitForThreads:1];
  if ([(DYCaptureDescriptor *)self->_activeCaptureDescriptor sessionId])
  {
    GPUTools::FB::Stream::Flush(self->_defaultFbufStream);
    [(DYGuestAppClient *)self _sendBufferUsageCounters];
    [(DYGuestAppClient *)self _handleTurnOffCapture];
    [(DYGuestAppClient *)self notifyAllCaptureDataSent];
    v3 = [(DYCaptureDescriptor *)self->_activeCaptureDescriptor suspendAfterCapture]|| [(DYCaptureDescriptor *)self->_activeCaptureDescriptor lockGraphicsAfterCapture];
  }

  else
  {
    v3 = 0;
  }

  if ([(DYGuestAppClient *)self traceMode]== 5)
  {
    [(DYGuestAppClient *)self invalidateSavePointerMap:0];
    [(DYGuestAppClient *)self setTraceMode:self->_previousTraceMode];
    GPUTools::FB::Stream::Close(self->_defaultFbufStream);
    GPUTools::FB::Stream::Open(self->_defaultFbufStream, @"live");
  }

  if (!v3)
  {
    [(DYGuestAppClient *)self unlockGraphics];
  }

  self->_state = 5;
}

- (void)invalidateCapture
{
  if (self->_state == 3)
  {
    [(DYGuestAppClient *)self stopCapture];
  }

  if ([(DYCaptureState *)self->_activeCaptureState allDataReceivedAck])
  {
    if ([(DYCaptureDescriptor *)self->_activeCaptureDescriptor suspendAfterCapture])
    {
      task_suspend(*MEMORY[0x277D85F48]);
      if (![(DYCaptureDescriptor *)self->_activeCaptureDescriptor lockGraphicsAfterCapture])
      {
        [(DYGuestAppClient *)self unlockGraphics];
      }
    }
  }

  self->_activeCaptureDescriptor = 0;
  self->_activeCaptureState = 0;
  self->_state = 0;
}

- (BOOL)triggerArmedCapture
{
  state = self->_state;
  if (state == 1)
  {
    [(DYGuestAppClient *)self handleCaptureModeTransition:1];
  }

  return state == 1;
}

- (void)stopCapture
{
  if (self->_state == 3)
  {
    [(DYGuestAppClient *)self handleCaptureModeTransition:0];
  }
}

- (unint64_t)handleFrameBoundaryCommon
{
  result = [*(a1 + 160) framesToCapture];
  if (*a2 == 1)
  {
    v7 = *(a1 + 96);
    result = [*(a1 + 160) triggerFrame];
    if (result <= v7)
    {
      result = [*(a1 + 168) capturedFrames];
      if (!result)
      {
        result = [a1 _canTriggerCaptureOnNextGraphicsCommand];
        if (result)
        {

          return [a1 triggerArmedCapture];
        }
      }
    }
  }

  else
  {
    v5 = result;
    if (*a2 == 3 && result != 0)
    {
      result = [*(a1 + 168) capturedFrames];
      if (result >= v5)
      {

        return [a1 stopCapture];
      }
    }
  }

  return result;
}

@end