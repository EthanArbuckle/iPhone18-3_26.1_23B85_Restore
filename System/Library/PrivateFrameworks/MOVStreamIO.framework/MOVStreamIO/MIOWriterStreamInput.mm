@interface MIOWriterStreamInput
- (BOOL)canAppend;
- (BOOL)canBeConfigured;
- (BOOL)establishAssociationsWithError:(id *)error;
- (BOOL)finalizeProcessing;
- (BOOL)pendSample;
- (BOOL)prepareForAppendWithTimeStamp:(id *)stamp error:(id *)error;
- (BOOL)prepareInputWithWriter:(id)writer error:(id *)error;
- (BOOL)registerForAssociating:(id)associating trackRelation:(id)relation;
- (BOOL)shutDownOutError:(id *)error;
- (BOOL)verifyNewAppendTimeStamp:(id *)stamp error:(id *)error;
- (MIOThread)assignedWritingThread;
- (MIOWriter)writer;
- (MIOWriterStreamInput)init;
- (NSString)uuid;
- (OS_dispatch_queue)processingQueue;
- (id)stats;
- (int64_t)pendingSamples;
- (unint64_t)bufferingCapacity;
- (void)finishProcessingInDispatchGroup:(id)group;
- (void)invalidate;
- (void)observeIsReadyStatus;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)onAVInputsAvailable:(id)available;
- (void)resolveSample;
- (void)setBufferingCapacity:(unint64_t)capacity;
- (void)setCustomMetadata:(id)metadata;
- (void)setCustomMetadataItems:(id)items;
- (void)setMediaTimeScale:(int)scale;
- (void)setThreadingOption:(int64_t)option;
- (void)setUseOwnProcessingQueue:(BOOL)queue;
- (void)setUseOwnWritingThread:(BOOL)thread;
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

- (BOOL)registerForAssociating:(id)associating trackRelation:(id)relation
{
  v13[2] = *MEMORY[0x277D85DE8];
  associatingCopy = associating;
  relationCopy = relation;
  canBeConfigured = [(MIOWriterStreamInput *)self canBeConfigured];
  if (canBeConfigured)
  {
    v9 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:associatingCopy];
    v13[0] = v9;
    v13[1] = relationCopy;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

    [(NSMutableArray *)self->_associatedInputs addObject:v10];
  }

  else
  {
    writer = [(MIOWriterStreamInput *)self writer];
    [writer reportWarning:@"Cannot register input for association after preparing.  No-op."];
  }

  return canBeConfigured;
}

- (BOOL)establishAssociationsWithError:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  associatedInputs = [(MIOWriterStreamInput *)self associatedInputs];
  v6 = [associatedInputs countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    errorCopy = error;
    v8 = *v27;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(associatedInputs);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [v10 objectAtIndexedSubscript:0];
        nonretainedObjectValue = [v11 nonretainedObjectValue];

        v13 = [v10 objectAtIndexedSubscript:1];
        mainAVInput = [nonretainedObjectValue mainAVInput];
        mainAVInput2 = [(MIOWriterStreamInput *)self mainAVInput];
        v16 = [mainAVInput canAddTrackAssociationWithTrackOfInput:mainAVInput2 type:v13];

        if ((v16 & 1) == 0)
        {
          v20 = MEMORY[0x277CCACA8];
          streamId = [nonretainedObjectValue streamId];
          streamId2 = [(MIOWriterStreamInput *)self streamId];
          v23 = [v20 stringWithFormat:@"Cannot associate(%@) %@ with %@.", v13, streamId, streamId2];

          [MEMORY[0x277CCA9B8] populateStreamError:errorCopy message:v23 code:13];
          v19 = 0;
          goto LABEL_11;
        }

        mainAVInput3 = [nonretainedObjectValue mainAVInput];
        mainAVInput4 = [(MIOWriterStreamInput *)self mainAVInput];
        [mainAVInput3 addTrackAssociationWithTrackOfInput:mainAVInput4 type:v13];
      }

      v7 = [associatedInputs countByEnumeratingWithState:&v26 objects:v30 count:16];
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
  writer = [(MIOWriterStreamInput *)self writer];
  if (writer)
  {
    writer2 = [(MIOWriterStreamInput *)self writer];
    v5 = [writer2 checkStatus:1768843636];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)setCustomMetadata:(id)metadata
{
  metadataCopy = metadata;
  if ([(MIOWriterStreamInput *)self canBeConfigured])
  {
    v4 = metadataCopy;
    customMetadata = self->_customMetadata;
    self->_customMetadata = v4;
  }

  else
  {
    customMetadata = [(MIOWriterStreamInput *)self writer];
    [customMetadata reportWarning:@"Cannot set input's customMetadata after preparing.  No-op."];
  }
}

- (void)setCustomMetadataItems:(id)items
{
  itemsCopy = items;
  if ([(MIOWriterStreamInput *)self canBeConfigured])
  {
    v4 = itemsCopy;
    customMetadataItems = self->_customMetadataItems;
    self->_customMetadataItems = v4;
  }

  else
  {
    customMetadataItems = [(MIOWriterStreamInput *)self writer];
    [customMetadataItems reportWarning:@"Cannot set input's customMetadataItems after preparing.  No-op."];
  }
}

- (void)setBufferingCapacity:(unint64_t)capacity
{
  if ([(MIOWriterStreamInput *)self canBeConfigured])
  {
    if (self->_fifoBuffer)
    {
      v5 = [MEMORY[0x277CBEAD8] exceptionWithName:@"FIFOAlreadyCreated" reason:@"Fifo is already created userInfo:{capacity cannot be changed anymore.", 0}];
      objc_exception_throw(v5);
    }

    self->_initFifoCapacity = capacity;
  }

  else
  {
    writer = [(MIOWriterStreamInput *)self writer];
    [writer reportWarning:@"Cannot set input's bufferingCapacity after preparing.  No-op."];
  }
}

- (void)setMediaTimeScale:(int)scale
{
  if ([(MIOWriterStreamInput *)self canBeConfigured])
  {
    self->_mediaTimeScale = scale;
  }

  else
  {
    writer = [(MIOWriterStreamInput *)self writer];
    [writer reportWarning:@"Cannot set input's mediaTimeScale after preparing.  No-op."];
  }
}

- (void)setUseOwnWritingThread:(BOOL)thread
{
  if ([(MIOWriterStreamInput *)self canBeConfigured])
  {
    assignedWritingThread = [(MIOWriterStreamInput *)self assignedWritingThread];

    if (assignedWritingThread)
    {
      v6 = [MEMORY[0x277CBEAD8] exceptionWithName:@"WritingThreadAlreadyAssigned" reason:@"A writing thread is already assigned userInfo:{cannot set usage of own writing thread.", 0}];
      objc_exception_throw(v6);
    }

    self->_useOwnWritingThread = thread;
  }

  else
  {
    writer = [(MIOWriterStreamInput *)self writer];
    [writer reportWarning:@"Cannot set input's useOwnWritingThread after preparing.  No-op."];
  }
}

- (void)setUseOwnProcessingQueue:(BOOL)queue
{
  if ([(MIOWriterStreamInput *)self canBeConfigured])
  {
    if (self->_processingQueue)
    {
      v5 = [MEMORY[0x277CBEAD8] exceptionWithName:@"ProcessingQueueAlreadyAssigned" reason:@"A processing queue is already assigned userInfo:{cannot set usage of own processing queue.", 0}];
      objc_exception_throw(v5);
    }

    self->_useOwnProcessingQueue = queue;
  }

  else
  {
    writer = [(MIOWriterStreamInput *)self writer];
    [writer reportWarning:@"Cannot set input's useOwnProcessingQueue after preparing.  No-op."];
  }
}

- (void)setThreadingOption:(int64_t)option
{
  if ([(MIOWriterStreamInput *)self canBeConfigured])
  {
    self->_threadingOption = option;
  }

  else
  {
    writer = [(MIOWriterStreamInput *)self writer];
    [writer reportWarning:@"Cannot set input's threadingOption after preparing.  No-op."];
  }
}

- (id)stats
{
  v3 = MEMORY[0x277CCACA8];
  uuid = [(MIOWriterStreamInput *)self uuid];
  pendingSamples = [(MIOWriterStreamInput *)self pendingSamples];
  fifoBuffer = [(MIOWriterStreamInput *)self fifoBuffer];
  v7 = [v3 stringWithFormat:@"%@: PEND: %lld (FIFO: %zu) REDY: %d", uuid, pendingSamples, objc_msgSend(fifoBuffer, "usage"), -[MIOWriterStreamInput areAllInputsReady](self, "areAllInputsReady")];

  return v7;
}

- (void)onAVInputsAvailable:(id)available
{
  self->_inputsAvailableHandler = MEMORY[0x259C68980](available, a2);

  MEMORY[0x2821F96F8]();
}

- (int64_t)pendingSamples
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  countingQueue = [(MIOWriterStreamInput *)self countingQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__MIOWriterStreamInput_pendingSamples__block_invoke;
  v6[3] = &unk_279847C70;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(countingQueue, v6);

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
    streamId = [(MIOWriterStreamInput *)self streamId];
    v6 = [v4 stringWithFormat:@"%@_%ld", streamId, -[MIOWriterStreamInput mediaType](self, "mediaType")];
    v7 = self->_uuid;
    self->_uuid = v6;

    uuid = self->_uuid;
  }

  return uuid;
}

- (BOOL)verifyNewAppendTimeStamp:(id *)stamp error:(id *)error
{
  [(MIOWriterStreamInput *)self lastAppendTimeStamp];
  if ((v13 & 1) == 0 || ([(MIOWriterStreamInput *)self lastAppendTimeStamp], time2 = *stamp, CMTimeCompare(&time1, &time2) < 0))
  {
    time1 = *stamp;
    [(MIOWriterStreamInput *)self setLastAppendTimeStamp:&time1];
    return 1;
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    time1 = *stamp;
    Seconds = CMTimeGetSeconds(&time1);
    [(MIOWriterStreamInput *)self lastAppendTimeStamp];
    v9 = [v7 stringWithFormat:@"Invalid time stamp (%f). Time stamp must be higher than %f.", *&Seconds, CMTimeGetSeconds(&time1)];
    [MEMORY[0x277CCA9B8] populateWriterError:error message:v9 code:17];

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
      countingQueue = [(MIOWriterStreamInput *)self countingQueue];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __33__MIOWriterStreamInput_canAppend__block_invoke_2;
      v8[3] = &unk_279847C70;
      v8[4] = self;
      v8[5] = &v10;
      dispatch_sync(countingQueue, v8);
    }

    if (*(v11 + 24) == 1)
    {
      areAllInputsReady = [(MIOWriterStreamInput *)self areAllInputsReady];
    }

    else
    {
      areAllInputsReady = 0;
    }

    goto LABEL_9;
  }

  if (!threadingOption)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    countingQueue2 = [(MIOWriterStreamInput *)self countingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__MIOWriterStreamInput_canAppend__block_invoke;
    block[3] = &unk_279847C70;
    block[4] = self;
    block[5] = &v10;
    dispatch_sync(countingQueue2, block);

    areAllInputsReady = *(v11 + 24);
LABEL_9:
    _Block_object_dispose(&v10, 8);
  }

  return areAllInputsReady & 1;
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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  countingQueue = [(MIOWriterStreamInput *)self countingQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__MIOWriterStreamInput_pendSample__block_invoke;
  v5[3] = &unk_279847C98;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(countingQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
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
  countingQueue = [(MIOWriterStreamInput *)self countingQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__MIOWriterStreamInput_resolveSample__block_invoke;
  v4[3] = &unk_279847CC0;
  objc_copyWeak(&v5, &location);
  dispatch_async(countingQueue, v4);

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

- (BOOL)prepareForAppendWithTimeStamp:(id *)stamp error:(id *)error
{
  writer = [(MIOWriterStreamInput *)self writer];
  v8 = [writer checkStatus:1919247481];

  if ((v8 & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] populateWriterError:error message:@"Writer not in state MIOWriterReady. Cannot append" code:17];
LABEL_8:
    LOBYTE(v9) = 0;
    return v9;
  }

  v18 = *&stamp->var0;
  var3 = stamp->var3;
  v9 = [(MIOWriterStreamInput *)self verifyNewAppendTimeStamp:&v18 error:error];
  if (!v9)
  {
    return v9;
  }

  if (self->_threadingOption == 1 && ![(MIOWriterStreamInput *)self areAllInputsReady])
  {
    v14 = MEMORY[0x277CCACA8];
    streamId = [(MIOWriterStreamInput *)self streamId];
    v16 = [v14 stringWithFormat:@"Stream: %@ inputs are not ready, dropping sample", streamId];

    [MEMORY[0x277CCA9B8] populateWriterError:error message:v16 code:21];
    goto LABEL_8;
  }

  if (![(MIOWriterStreamInput *)self pendSample])
  {
    v11 = MEMORY[0x277CCACA8];
    streamId2 = [(MIOWriterStreamInput *)self streamId];
    v13 = [v11 stringWithFormat:@"Stream: %@ buffering capacity reached (%zu), dropping sample", streamId2, -[MIOWriterStreamInput bufferingCapacity](self, "bufferingCapacity")];

    [MEMORY[0x277CCA9B8] populateWriterError:error message:v13 code:18];
    goto LABEL_8;
  }

  writer2 = [(MIOWriterStreamInput *)self writer];
  v18 = *&stamp->var0;
  var3 = stamp->var3;
  [writer2 proposeSessionStartTime:&v18];

  LOBYTE(v9) = 1;
  return v9;
}

- (BOOL)prepareInputWithWriter:(id)writer error:(id *)error
{
  writerCopy = writer;
  [(MIOWriterStreamInput *)self setWriter:writerCopy];
  v7 = [(MIOWriterStreamInput *)self setupInputsWithWriter:writerCopy error:error];

  if (v7)
  {
    inputsAvailableHandler = self->_inputsAvailableHandler;
    if (inputsAvailableHandler)
    {
      allWriterInputs = [(MIOWriterStreamInput *)self allWriterInputs];
      inputsAvailableHandler[2](inputsAvailableHandler, self, allWriterInputs);
    }

    v10 = MEMORY[0x277CCACA8];
    uuid = [(MIOWriterStreamInput *)self uuid];
    v12 = [v10 stringWithFormat:@"mio.counting.%@", uuid];

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
    uuid = [(MIOWriterStreamInput *)self uuid];
    v10 = [v3 stringWithFormat:@"com.apple.mio.processing.%@", uuid];
  }

  else
  {
    v10 = @"com.apple.mio.processing.default";
  }

  v5 = v10;
  v6 = os_log_create([(__CFString *)v10 UTF8String], "PointsOfInterest");
  [(MIOWriterStreamInput *)self setPerfLogHandle:v6];

  perfLogHandle = [(MIOWriterStreamInput *)self perfLogHandle];
  [(MIOWriterStreamInput *)self setProcessingSignPostID:os_signpost_id_generate(perfLogHandle)];

  assignedWritingThread = [(MIOWriterStreamInput *)self assignedWritingThread];
  perfLogHandle2 = [assignedWritingThread perfLogHandle];
  [(MIOWriterStreamInput *)self setAvfAppendSignPostID:os_signpost_id_generate(perfLogHandle2)];
}

- (BOOL)finalizeProcessing
{
  threadingOption = [(MIOWriterStreamInput *)self threadingOption];
  if (threadingOption == 1)
  {

    return [(MIOWriterStreamInput *)self writeNextItemFromFifo];
  }

  else
  {
    if (!threadingOption)
    {
      assignedWritingThread = [(MIOWriterStreamInput *)self assignedWritingThread];
      [assignedWritingThread proceed];
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
      uuid = [(MIOWriterStreamInput *)self uuid];
      v6 = [v4 stringWithFormat:@"mio.processing.%@", uuid];

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

- (void)finishProcessingInDispatchGroup:(id)group
{
  groupCopy = group;
  if (self->_threadingOption != 1 || [(MIOWriterStreamInput *)self strictlyEnforceBufferCapacity])
  {
    objc_initWeak(&location, self);
    processingQueue = [(MIOWriterStreamInput *)self processingQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__MIOWriterStreamInput_finishProcessingInDispatchGroup___block_invoke;
    v6[3] = &unk_279847CC0;
    objc_copyWeak(&v7, &location);
    dispatch_group_async(groupCopy, processingQueue, v6);

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

- (BOOL)shutDownOutError:(id *)error
{
  [(MIOWriterStreamInput *)self stopObservingIsReadyStatus];
  fifoBuffer = [(MIOWriterStreamInput *)self fifoBuffer];
  [fifoBuffer emptyFifoBuffer];

  return 1;
}

- (void)invalidate
{
  [(MIOWriterStreamInput *)self stopObservingIsReadyStatus];
  fifoBuffer = [(MIOWriterStreamInput *)self fifoBuffer];
  [fifoBuffer emptyFifoBuffer];
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
    allWriterInputs = [(MIOWriterStreamInput *)self allWriterInputs];
    v4 = [allWriterInputs countByEnumeratingWithState:&v8 objects:v12 count:16];
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
            objc_enumerationMutation(allWriterInputs);
          }

          [*(*(&v8 + 1) + 8 * v7++) addObserver:self forKeyPath:@"readyForMoreMediaData" options:1 context:0];
        }

        while (v5 != v7);
        v5 = [allWriterInputs countByEnumeratingWithState:&v8 objects:v12 count:16];
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
    allWriterInputs = [(MIOWriterStreamInput *)self allWriterInputs];
    v4 = [allWriterInputs countByEnumeratingWithState:&v8 objects:v12 count:16];
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
            objc_enumerationMutation(allWriterInputs);
          }

          [*(*(&v8 + 1) + 8 * v7++) removeObserver:self forKeyPath:@"readyForMoreMediaData"];
        }

        while (v5 != v7);
        v5 = [allWriterInputs countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v7 = [change objectForKey:{*MEMORY[0x277CCA2F0], object}];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    if ([(MIOWriterStreamInput *)self areAllInputsReady])
    {
      writer = [(MIOWriterStreamInput *)self writer];
      canWrite = [writer canWrite];

      if (canWrite)
      {
        assignedWritingThread = [(MIOWriterStreamInput *)self assignedWritingThread];
        [assignedWritingThread proceed];
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