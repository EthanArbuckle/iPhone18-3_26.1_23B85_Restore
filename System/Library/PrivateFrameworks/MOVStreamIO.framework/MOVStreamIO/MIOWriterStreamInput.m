@interface MIOWriterStreamInput
- (BOOL)canAppend;
- (BOOL)canBeConfigured;
- (BOOL)establishAssociationsWithError:(id *)a3;
- (BOOL)finalizeProcessing;
- (BOOL)pendSample;
- (BOOL)prepareForAppendWithTimeStamp:(id *)a3 error:(id *)a4;
- (BOOL)prepareInputWithWriter:(id)a3 error:(id *)a4;
- (BOOL)registerForAssociating:(id)a3 trackRelation:(id)a4;
- (BOOL)shutDownOutError:(id *)a3;
- (BOOL)verifyNewAppendTimeStamp:(id *)a3 error:(id *)a4;
- (MIOThread)assignedWritingThread;
- (MIOWriter)writer;
- (MIOWriterStreamInput)init;
- (NSString)uuid;
- (OS_dispatch_queue)processingQueue;
- (id)stats;
- (int64_t)pendingSamples;
- (unint64_t)bufferingCapacity;
- (void)finishProcessingInDispatchGroup:(id)a3;
- (void)invalidate;
- (void)observeIsReadyStatus;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)onAVInputsAvailable:(id)a3;
- (void)resolveSample;
- (void)setBufferingCapacity:(unint64_t)a3;
- (void)setCustomMetadata:(id)a3;
- (void)setCustomMetadataItems:(id)a3;
- (void)setMediaTimeScale:(int)a3;
- (void)setThreadingOption:(int64_t)a3;
- (void)setUseOwnProcessingQueue:(BOOL)a3;
- (void)setUseOwnWritingThread:(BOOL)a3;
- (void)setupSignPost;
- (void)stopObservingIsReadyStatus;
@end

@implementation MIOWriterStreamInput

- (MIOWriterStreamInput)init
{
  v11.receiver = self;
  v11.super_class = MIOWriterStreamInput;
  v2 = [(MIOWriterStreamInput *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v9 = *MEMORY[0x277CC0890];
    v10 = *(MEMORY[0x277CC0890] + 16);
    [(MIOWriterStreamInput *)v2 setLastAppendTimeStamp:&v9];
    v3->_initFifoCapacity = 10;
    v3->_mediaTimeScale = 0;
    v3->_threadingOption = 0;
    v4 = objc_opt_new();
    associatedInputs = v3->_associatedInputs;
    v3->_associatedInputs = v4;

    v3->_writingThreadPriority = 1.0;
    v3->_writingThreadQualityOfService = 33;
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
    processingQueueAttributes = v3->_processingQueueAttributes;
    v3->_processingQueueAttributes = v6;
  }

  return v3;
}

- (BOOL)registerForAssociating:(id)a3 trackRelation:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MIOWriterStreamInput *)self canBeConfigured];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v6];
    v13[0] = v9;
    v13[1] = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

    [(NSMutableArray *)self->_associatedInputs addObject:v10];
  }

  else
  {
    v11 = [(MIOWriterStreamInput *)self writer];
    [v11 reportWarning:@"Cannot register input for association after preparing.  No-op."];
  }

  return v8;
}

- (BOOL)establishAssociationsWithError:(id *)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [(MIOWriterStreamInput *)self associatedInputs];
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v25 = a3;
    v8 = *v27;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v10 objectAtIndexedSubscript:0];
        v12 = [v11 nonretainedObjectValue];

        v13 = [v10 objectAtIndexedSubscript:1];
        v14 = [v12 mainAVInput];
        v15 = [(MIOWriterStreamInput *)self mainAVInput];
        v16 = [v14 canAddTrackAssociationWithTrackOfInput:v15 type:v13];

        if ((v16 & 1) == 0)
        {
          v20 = MEMORY[0x277CCACA8];
          v21 = [v12 streamId];
          v22 = [(MIOWriterStreamInput *)self streamId];
          v23 = [v20 stringWithFormat:@"Cannot associate(%@) %@ with %@.", v13, v21, v22];

          [MEMORY[0x277CCA9B8] populateStreamError:v25 message:v23 code:13];
          v19 = 0;
          goto LABEL_11;
        }

        v17 = [v12 mainAVInput];
        v18 = [(MIOWriterStreamInput *)self mainAVInput];
        [v17 addTrackAssociationWithTrackOfInput:v18 type:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_11:

  return v19;
}

- (BOOL)canBeConfigured
{
  v3 = [(MIOWriterStreamInput *)self writer];
  if (v3)
  {
    v4 = [(MIOWriterStreamInput *)self writer];
    v5 = [v4 checkStatus:1768843636];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)setCustomMetadata:(id)a3
{
  v6 = a3;
  if ([(MIOWriterStreamInput *)self canBeConfigured])
  {
    v4 = v6;
    customMetadata = self->_customMetadata;
    self->_customMetadata = v4;
  }

  else
  {
    customMetadata = [(MIOWriterStreamInput *)self writer];
    [customMetadata reportWarning:@"Cannot set input's customMetadata after preparing.  No-op."];
  }
}

- (void)setCustomMetadataItems:(id)a3
{
  v6 = a3;
  if ([(MIOWriterStreamInput *)self canBeConfigured])
  {
    v4 = v6;
    customMetadataItems = self->_customMetadataItems;
    self->_customMetadataItems = v4;
  }

  else
  {
    customMetadataItems = [(MIOWriterStreamInput *)self writer];
    [customMetadataItems reportWarning:@"Cannot set input's customMetadataItems after preparing.  No-op."];
  }
}

- (void)setBufferingCapacity:(unint64_t)a3
{
  if ([(MIOWriterStreamInput *)self canBeConfigured])
  {
    if (self->_fifoBuffer)
    {
      v5 = [MEMORY[0x277CBEAD8] exceptionWithName:@"FIFOAlreadyCreated" reason:@"Fifo is already created userInfo:{capacity cannot be changed anymore.", 0}];
      objc_exception_throw(v5);
    }

    self->_initFifoCapacity = a3;
  }

  else
  {
    v6 = [(MIOWriterStreamInput *)self writer];
    [v6 reportWarning:@"Cannot set input's bufferingCapacity after preparing.  No-op."];
  }
}

- (void)setMediaTimeScale:(int)a3
{
  if ([(MIOWriterStreamInput *)self canBeConfigured])
  {
    self->_mediaTimeScale = a3;
  }

  else
  {
    v5 = [(MIOWriterStreamInput *)self writer];
    [v5 reportWarning:@"Cannot set input's mediaTimeScale after preparing.  No-op."];
  }
}

- (void)setUseOwnWritingThread:(BOOL)a3
{
  if ([(MIOWriterStreamInput *)self canBeConfigured])
  {
    v5 = [(MIOWriterStreamInput *)self assignedWritingThread];

    if (v5)
    {
      v6 = [MEMORY[0x277CBEAD8] exceptionWithName:@"WritingThreadAlreadyAssigned" reason:@"A writing thread is already assigned userInfo:{cannot set usage of own writing thread.", 0}];
      objc_exception_throw(v6);
    }

    self->_useOwnWritingThread = a3;
  }

  else
  {
    v7 = [(MIOWriterStreamInput *)self writer];
    [v7 reportWarning:@"Cannot set input's useOwnWritingThread after preparing.  No-op."];
  }
}

- (void)setUseOwnProcessingQueue:(BOOL)a3
{
  if ([(MIOWriterStreamInput *)self canBeConfigured])
  {
    if (self->_processingQueue)
    {
      v5 = [MEMORY[0x277CBEAD8] exceptionWithName:@"ProcessingQueueAlreadyAssigned" reason:@"A processing queue is already assigned userInfo:{cannot set usage of own processing queue.", 0}];
      objc_exception_throw(v5);
    }

    self->_useOwnProcessingQueue = a3;
  }

  else
  {
    v6 = [(MIOWriterStreamInput *)self writer];
    [v6 reportWarning:@"Cannot set input's useOwnProcessingQueue after preparing.  No-op."];
  }
}

- (void)setThreadingOption:(int64_t)a3
{
  if ([(MIOWriterStreamInput *)self canBeConfigured])
  {
    self->_threadingOption = a3;
  }

  else
  {
    v5 = [(MIOWriterStreamInput *)self writer];
    [v5 reportWarning:@"Cannot set input's threadingOption after preparing.  No-op."];
  }
}

- (id)stats
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MIOWriterStreamInput *)self uuid];
  v5 = [(MIOWriterStreamInput *)self pendingSamples];
  v6 = [(MIOWriterStreamInput *)self fifoBuffer];
  v7 = [v3 stringWithFormat:@"%@: PEND: %lld (FIFO: %zu) REDY: %d", v4, v5, objc_msgSend(v6, "usage"), -[MIOWriterStreamInput areAllInputsReady](self, "areAllInputsReady")];

  return v7;
}

- (void)onAVInputsAvailable:(id)a3
{
  self->_inputsAvailableHandler = MEMORY[0x259C68980](a3, a2);

  MEMORY[0x2821F96F8]();
}

- (int64_t)pendingSamples
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(MIOWriterStreamInput *)self countingQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__MIOWriterStreamInput_pendingSamples__block_invoke;
  v6[3] = &unk_279847C70;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (NSString)uuid
{
  uuid = self->_uuid;
  if (!uuid)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(MIOWriterStreamInput *)self streamId];
    v6 = [v4 stringWithFormat:@"%@_%ld", v5, -[MIOWriterStreamInput mediaType](self, "mediaType")];
    v7 = self->_uuid;
    self->_uuid = v6;

    uuid = self->_uuid;
  }

  return uuid;
}

- (BOOL)verifyNewAppendTimeStamp:(id *)a3 error:(id *)a4
{
  [(MIOWriterStreamInput *)self lastAppendTimeStamp];
  if ((v13 & 1) == 0 || ([(MIOWriterStreamInput *)self lastAppendTimeStamp], time2 = *a3, CMTimeCompare(&time1, &time2) < 0))
  {
    time1 = *a3;
    [(MIOWriterStreamInput *)self setLastAppendTimeStamp:&time1];
    return 1;
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    time1 = *a3;
    Seconds = CMTimeGetSeconds(&time1);
    [(MIOWriterStreamInput *)self lastAppendTimeStamp];
    v9 = [v7 stringWithFormat:@"Invalid time stamp (%f). Time stamp must be higher than %f.", *&Seconds, CMTimeGetSeconds(&time1)];
    [MEMORY[0x277CCA9B8] populateWriterError:a4 message:v9 code:17];

    return 0;
  }
}

- (unint64_t)bufferingCapacity
{
  if (self->_fifoBuffer)
  {
    return [(MIOFifoBuffer *)self->_fifoBuffer capacity];
  }

  else
  {
    return self->_initFifoCapacity;
  }
}

- (BOOL)canAppend
{
  threadingOption = self->_threadingOption;
  if (threadingOption == 1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 1;
    if ([(MIOWriterStreamInput *)self strictlyEnforceBufferCapacity])
    {
      v6 = [(MIOWriterStreamInput *)self countingQueue];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __33__MIOWriterStreamInput_canAppend__block_invoke_2;
      v8[3] = &unk_279847C70;
      v8[4] = self;
      v8[5] = &v10;
      dispatch_sync(v6, v8);
    }

    if (*(v11 + 24) == 1)
    {
      v2 = [(MIOWriterStreamInput *)self areAllInputsReady];
    }

    else
    {
      v2 = 0;
    }

    goto LABEL_9;
  }

  if (!threadingOption)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v5 = [(MIOWriterStreamInput *)self countingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__MIOWriterStreamInput_canAppend__block_invoke;
    block[3] = &unk_279847C70;
    block[4] = self;
    block[5] = &v10;
    dispatch_sync(v5, block);

    v2 = *(v11 + 24);
LABEL_9:
    _Block_object_dispose(&v10, 8);
  }

  return v2 & 1;
}

unint64_t __33__MIOWriterStreamInput_canAppend__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[4] + 1;
  result = [v2 bufferingCapacity];
  *(*(*(a1 + 40) + 8) + 24) = v3 <= result;
  return result;
}

unint64_t __33__MIOWriterStreamInput_canAppend__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[4] + 1;
  result = [v2 bufferingCapacity];
  *(*(*(a1 + 40) + 8) + 24) = v3 <= result;
  return result;
}

- (BOOL)pendSample
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(MIOWriterStreamInput *)self countingQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__MIOWriterStreamInput_pendSample__block_invoke;
  v5[3] = &unk_279847C98;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

unint64_t __34__MIOWriterStreamInput_pendSample__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[4] + 1;
  result = [v2 bufferingCapacity];
  v5 = *(*(a1 + 40) + 8);
  if (v3 <= result)
  {
    *(v5 + 24) = 1;
    ++*(*(a1 + 32) + 32);
  }

  else
  {
    *(v5 + 24) = 0;
  }

  return result;
}

- (void)resolveSample
{
  objc_initWeak(&location, self);
  v3 = [(MIOWriterStreamInput *)self countingQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__MIOWriterStreamInput_resolveSample__block_invoke;
  v4[3] = &unk_279847CC0;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __37__MIOWriterStreamInput_resolveSample__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    --WeakRetained[4];
  }
}

- (BOOL)prepareForAppendWithTimeStamp:(id *)a3 error:(id *)a4
{
  v7 = [(MIOWriterStreamInput *)self writer];
  v8 = [v7 checkStatus:1919247481];

  if ((v8 & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] populateWriterError:a4 message:@"Writer not in state MIOWriterReady. Cannot append" code:17];
LABEL_8:
    LOBYTE(v9) = 0;
    return v9;
  }

  v18 = *&a3->var0;
  var3 = a3->var3;
  v9 = [(MIOWriterStreamInput *)self verifyNewAppendTimeStamp:&v18 error:a4];
  if (!v9)
  {
    return v9;
  }

  if (self->_threadingOption == 1 && ![(MIOWriterStreamInput *)self areAllInputsReady])
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [(MIOWriterStreamInput *)self streamId];
    v16 = [v14 stringWithFormat:@"Stream: %@ inputs are not ready, dropping sample", v15];

    [MEMORY[0x277CCA9B8] populateWriterError:a4 message:v16 code:21];
    goto LABEL_8;
  }

  if (![(MIOWriterStreamInput *)self pendSample])
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [(MIOWriterStreamInput *)self streamId];
    v13 = [v11 stringWithFormat:@"Stream: %@ buffering capacity reached (%zu), dropping sample", v12, -[MIOWriterStreamInput bufferingCapacity](self, "bufferingCapacity")];

    [MEMORY[0x277CCA9B8] populateWriterError:a4 message:v13 code:18];
    goto LABEL_8;
  }

  v10 = [(MIOWriterStreamInput *)self writer];
  v18 = *&a3->var0;
  var3 = a3->var3;
  [v10 proposeSessionStartTime:&v18];

  LOBYTE(v9) = 1;
  return v9;
}

- (BOOL)prepareInputWithWriter:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(MIOWriterStreamInput *)self setWriter:v6];
  v7 = [(MIOWriterStreamInput *)self setupInputsWithWriter:v6 error:a4];

  if (v7)
  {
    inputsAvailableHandler = self->_inputsAvailableHandler;
    if (inputsAvailableHandler)
    {
      v9 = [(MIOWriterStreamInput *)self allWriterInputs];
      inputsAvailableHandler[2](inputsAvailableHandler, self, v9);
    }

    v10 = MEMORY[0x277CCACA8];
    v11 = [(MIOWriterStreamInput *)self uuid];
    v12 = [v10 stringWithFormat:@"mio.counting.%@", v11];

    v13 = dispatch_queue_create([v12 UTF8String], 0);
    countingQueue = self->_countingQueue;
    self->_countingQueue = v13;

    v15 = [[MIOFifoBuffer alloc] initWithCapacity:self->_initFifoCapacity];
    fifoBuffer = self->_fifoBuffer;
    self->_fifoBuffer = v15;

    [(MIOWriterStreamInput *)self setupSignPost];
    [(MIOWriterStreamInput *)self observeIsReadyStatus];
    [(MIOWriterStreamInput *)self prepareInputFinished];
  }

  return v7;
}

- (void)setupSignPost
{
  if ([(MIOWriterStreamInput *)self useOwnProcessingQueue])
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [(MIOWriterStreamInput *)self uuid];
    v10 = [v3 stringWithFormat:@"com.apple.mio.processing.%@", v4];
  }

  else
  {
    v10 = @"com.apple.mio.processing.default";
  }

  v5 = v10;
  v6 = os_log_create([(__CFString *)v10 UTF8String], "PointsOfInterest");
  [(MIOWriterStreamInput *)self setPerfLogHandle:v6];

  v7 = [(MIOWriterStreamInput *)self perfLogHandle];
  [(MIOWriterStreamInput *)self setProcessingSignPostID:os_signpost_id_generate(v7)];

  v8 = [(MIOWriterStreamInput *)self assignedWritingThread];
  v9 = [v8 perfLogHandle];
  [(MIOWriterStreamInput *)self setAvfAppendSignPostID:os_signpost_id_generate(v9)];
}

- (BOOL)finalizeProcessing
{
  v3 = [(MIOWriterStreamInput *)self threadingOption];
  if (v3 == 1)
  {

    return [(MIOWriterStreamInput *)self writeNextItemFromFifo];
  }

  else
  {
    if (!v3)
    {
      v4 = [(MIOWriterStreamInput *)self assignedWritingThread];
      [v4 proceed];
    }

    return 1;
  }
}

- (OS_dispatch_queue)processingQueue
{
  p_processingQueue = &self->_processingQueue;
  if (!self->_processingQueue)
  {
    if (self->_useOwnProcessingQueue)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = [(MIOWriterStreamInput *)self uuid];
      v6 = [v4 stringWithFormat:@"mio.processing.%@", v5];

      v7 = dispatch_queue_create([v6 UTF8String], self->_processingQueueAttributes);
      processingQueue = self->_processingQueue;
      self->_processingQueue = v7;
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__MIOWriterStreamInput_processingQueue__block_invoke;
      block[3] = &unk_279847CE8;
      block[4] = self;
      if (processingQueue_onceToken != -1)
      {
        dispatch_once(&processingQueue_onceToken, block);
      }

      objc_storeStrong(p_processingQueue, processingQueue_proc);
    }
  }

  v9 = *p_processingQueue;

  return v9;
}

void __39__MIOWriterStreamInput_processingQueue__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) writer];
  v1 = [v4 processingQueueAttributes];
  v2 = dispatch_queue_create("mio.processing.shared", v1);
  v3 = processingQueue_proc;
  processingQueue_proc = v2;
}

- (void)finishProcessingInDispatchGroup:(id)a3
{
  v4 = a3;
  if (self->_threadingOption != 1 || [(MIOWriterStreamInput *)self strictlyEnforceBufferCapacity])
  {
    objc_initWeak(&location, self);
    v5 = [(MIOWriterStreamInput *)self processingQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__MIOWriterStreamInput_finishProcessingInDispatchGroup___block_invoke;
    v6[3] = &unk_279847CC0;
    objc_copyWeak(&v7, &location);
    dispatch_group_async(v4, v5, v6);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __56__MIOWriterStreamInput_finishProcessingInDispatchGroup___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained finishProcessing];
    WeakRetained = v2;
  }
}

- (BOOL)shutDownOutError:(id *)a3
{
  [(MIOWriterStreamInput *)self stopObservingIsReadyStatus];
  v4 = [(MIOWriterStreamInput *)self fifoBuffer];
  [v4 emptyFifoBuffer];

  return 1;
}

- (void)invalidate
{
  [(MIOWriterStreamInput *)self stopObservingIsReadyStatus];
  v3 = [(MIOWriterStreamInput *)self fifoBuffer];
  [v3 emptyFifoBuffer];
}

- (void)observeIsReadyStatus
{
  v13 = *MEMORY[0x277D85DE8];
  if (![(MIOWriterStreamInput *)self observingIsReadyStatus])
  {
    [(MIOWriterStreamInput *)self setObservingIsReadyStatus:1];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [(MIOWriterStreamInput *)self allWriterInputs];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) addObserver:self forKeyPath:@"readyForMoreMediaData" options:1 context:0];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)stopObservingIsReadyStatus
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(MIOWriterStreamInput *)self observingIsReadyStatus])
  {
    [(MIOWriterStreamInput *)self setObservingIsReadyStatus:0];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [(MIOWriterStreamInput *)self allWriterInputs];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) removeObserver:self forKeyPath:@"readyForMoreMediaData"];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = [a5 objectForKey:{*MEMORY[0x277CCA2F0], a4}];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    if ([(MIOWriterStreamInput *)self areAllInputsReady])
    {
      v9 = [(MIOWriterStreamInput *)self writer];
      v10 = [v9 canWrite];

      if (v10)
      {
        v11 = [(MIOWriterStreamInput *)self assignedWritingThread];
        [v11 proceed];
      }
    }
  }
}

- (MIOWriter)writer
{
  WeakRetained = objc_loadWeakRetained(&self->_writer);

  return WeakRetained;
}

- (MIOThread)assignedWritingThread
{
  WeakRetained = objc_loadWeakRetained(&self->_assignedWritingThread);

  return WeakRetained;
}

@end