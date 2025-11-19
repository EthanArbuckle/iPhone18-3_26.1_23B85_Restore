@interface BWFileCoordinatorNode
+ (void)initialize;
- (BOOL)updateStopPTS:(id *)a3 audioOffset:(id *)a4 previousStopPTS:(id *)a5 previousAudioOffset:(id *)a6;
- (BWFileCoordinatorNode)initWithNumberOfVideoInputs:(unint64_t)a3 numberOfAudioInputs:(unint64_t)a4 numberOfMetadataInputs:(unint64_t)a5 numberOfActionOnlyOutputs:(unint64_t)a6 overCaptureEnabled:(BOOL)a7 allowLowLatencyWhenPossible:(BOOL)a8 useTrueVideoFileRecordingStaging:(BOOL)a9 motionDataTimeMachine:(id)a10;
- (CMSampleBufferRef)_createEmptyMetadataSBufWithPTS:(uint64_t)a3 forInputIndex:;
- (dispatch_semaphore_t)_setupStateForWaitingForRecordingStop;
- (id)_addFlushingFutureCinematicMetadataToSampleBuffer:(id *)result;
- (id)_emitStagedBufferForIndex:(id *)result stoppingOrPausing:(uint64_t)a2;
- (int)startRecordingWithSettings:(id)a3 videoSettings:(id)a4 maxFrameRate:(id)a5 stopAtPTS:(id *)a6 startAfterPTS:(id *)a7;
- (opaqueCMSampleBuffer)_copyFirstValidLowLatencyAudioBuffer:(uint64_t)a3 inputIndex:(CMTime *)a4 sbufPTS:;
- (uint64_t)_cinematicFutureMetadataForFlushingSampleBuffer:(uint64_t)result;
- (uint64_t)_clearPendingIrisRequestMarkerBuffers;
- (uint64_t)_completeTransitionToNotRecording;
- (uint64_t)_emitSampleBuffer:(uint64_t)result forInput:toOutput:;
- (uint64_t)_flushAllBuffersFromRecordingStagingQueues;
- (uint64_t)_flushBuffersFromRecordingStagingQueuesWithPTSCutoff:(int)a3 factorInAudioDuration:;
- (uint64_t)_flushPendingIrisRequestMarkerBuffers;
- (uint64_t)_flushSampleBuffersWaitingForMotionData;
- (uint64_t)_handleIrisMovieRequest:(uint64_t)a3 input:(uint64_t)a4 sbuf:;
- (uint64_t)_irisMovieInfosFromPendingIrisRequestMarkerBuffers;
- (uint64_t)_sendPrefersNoInterruptionsByRingtonesAndAlertsNotificationWithState:(uint64_t)result;
- (uint64_t)pauseRecording;
- (unint64_t)_earliestPTSStagedForRecording:(int)a3@<W2> factorInAudioDuration:(uint64_t)a4@<X8>;
- (unint64_t)_flushEligibleBuffersFromRecordingStagingQueues;
- (void)_addLookAheadMotionDataToMetadataForSampleBuffer:(void *)a3 lookAheadMotionData:;
- (void)_doStartingToRecordWithSBuf:(unint64_t)a3 inputIndex:(__int128 *)a4 sbufPTS:;
- (void)_doStoppingOrPausingWithSBuf:(unint64_t)a3 inputIndex:(uint64_t)a4 sbufPTS:;
- (void)_emitMarkerBufferCopyOnAllOutputs:(void *)result;
- (void)_emitMarkerBufferForFileWriterAction:(uint64_t)a3 withPTS:(uint64_t)a4 settings:(uint64_t)a5 settingsID:(uint64_t)a6 errorCode:;
- (void)_emitOrQueueSampleBuffer:(uint64_t)a1 forInput:(CMSampleBufferRef)sbuf toOutput:(void *)a3 stoppingOrPausing:(uint64_t)a4;
- (void)_emitSampleBuffersWaitingForMotionData;
- (void)_ensureLuxMetadata:(uint64_t)a3 forNodeInputIndex:;
- (void)_finishStoppingOrPausing:(uint64_t)a3 withErrorCode:(uint64_t)a4;
- (void)_logNumBuffersReceivedDuringStartingRecording;
- (void)_performFlushAction;
- (void)_prepareOverCaptureVideoBufferForEmission:(const void *)a3 emissionTimeStamp:;
- (void)_prepareToResumeRecording;
- (void)_prepareToStartRecordingWithSettings:(void *)a3 videoSettings:(uint64_t)a4 maxFrameRate:(int)a5;
- (void)_releaseSettings;
- (void)_renderSampleBuffer:(void *)a3 forInput:;
- (void)_stopRecordingWithErrorCode:(uint64_t)a1;
- (void)_updateRecordingStateWithIrisMovieRequest:(uint64_t)a1;
- (void)cancelStartRecordingWithSettings:(id)a3;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)didSelectFormat:(id)a3 forInput:(id)a4;
- (void)handleDroppedSample:(id)a3 forInput:(id)a4;
- (void)pauseRecording;
- (void)recordingTerminated:(int64_t)a3;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)resumeRecording;
- (void)setCinematicLookAheadFrameCount:(int)a3;
- (void)stopRecordingWithErrorCode:(int)a3 setupToAllowWaitingForRecordingToStop:(BOOL)a4;
- (void)tryToEmitFramesWaitingForMotion;
- (void)waitForRecordingToStopWithTimeout:(float)a3;
@end

@implementation BWFileCoordinatorNode

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWFileCoordinatorNode)initWithNumberOfVideoInputs:(unint64_t)a3 numberOfAudioInputs:(unint64_t)a4 numberOfMetadataInputs:(unint64_t)a5 numberOfActionOnlyOutputs:(unint64_t)a6 overCaptureEnabled:(BOOL)a7 allowLowLatencyWhenPossible:(BOOL)a8 useTrueVideoFileRecordingStaging:(BOOL)a9 motionDataTimeMachine:(id)a10
{
  v10 = a4 + a3 + a5;
  if (!v10)
  {
    v42 = MEMORY[0x1E695DF30];
    v43 = *MEMORY[0x1E695D940];
    v44 = @"Need at least 1 input";
    goto LABEL_46;
  }

  v11 = a8;
  v14 = a4;
  v15 = a3;
  if (a3 != 1 && a10)
  {
    v42 = MEMORY[0x1E695DF30];
    v43 = *MEMORY[0x1E695D940];
    v44 = @"Motion data time machine use must have one and only one video input";
LABEL_46:
    objc_exception_throw([v42 exceptionWithName:v43 reason:v44 userInfo:{0, a6, a7, a8}]);
  }

  v52.receiver = self;
  v52.super_class = BWFileCoordinatorNode;
  v16 = [(BWNode *)&v52 init];
  if (!v16)
  {
    return v16;
  }

  v45 = a7;
  v46 = v11;
  v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:v10];
  if (a9)
  {
    v18 = 3;
  }

  else
  {
    v18 = 0;
  }

  v48 = v18;
  v49 = v14;
  v50 = a6;
  count = v10;
  if (v14 && v15 && a9)
  {
    v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:v10];
    goto LABEL_13;
  }

  v19 = 0;
  if (v15)
  {
LABEL_13:
    v20 = 0;
    do
    {
      v21 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v16 index:v20];
      v22 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWNodeInput *)v21 setFormatRequirements:v22];

      [(BWNodeInput *)v21 setPassthroughMode:1];
      [(BWNodeInput *)v21 setDelayedBufferCount:v48];
      [(BWNode *)v16 addInput:v21];
      v23 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v16];
      v24 = v15;
      v25 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWNodeOutput *)v23 setFormatRequirements:v25];
      [(BWNodeOutput *)v23 setPassthroughMode:1];
      [(BWNodeOutput *)v23 setIndexOfInputWhichDrivesThisOutput:v20];

      v15 = v24;
      [(BWNode *)v16 addOutput:v23];
      [v17 addObject:{objc_msgSend(MEMORY[0x1E695DF70], "array")}];
      [v19 addObject:{objc_msgSend(MEMORY[0x1E695DF70], "array")}];
      ++v20;
    }

    while (v24 != v20);
    v14 = v49;
  }

  v26 = v15;
  v27 = off_1E7989000;
  if (v14)
  {
    v28 = v49;
    v26 = v15;
    do
    {
      v29 = [[BWNodeInput alloc] initWithMediaType:1936684398 node:v16 index:v26];
      [(BWNode *)v16 addInput:v29];
      v30 = [[BWNodeOutput alloc] initWithMediaType:1936684398 node:v16];
      [(BWNode *)v16 addOutput:v30];
      [v17 addObject:{objc_msgSend(MEMORY[0x1E695DF70], "array")}];
      [v19 addObject:{objc_msgSend(MEMORY[0x1E695DF70], "array")}];
      ++v26;

      v27 = off_1E7989000;
      --v28;
    }

    while (v28);
  }

  if (a5)
  {
    v31 = a5;
    do
    {
      v32 = [objc_alloc(v27[62]) initWithMediaType:1835365473 node:v16 index:v26];
      [(BWNode *)v16 addInput:v32];
      v33 = [[BWNodeOutput alloc] initWithMediaType:1835365473 node:v16];
      [(BWNode *)v16 addOutput:v33];
      [v17 addObject:{objc_msgSend(MEMORY[0x1E695DF70], "array")}];
      [v19 addObject:{objc_msgSend(MEMORY[0x1E695DF70], "array")}];
      ++v26;

      v27 = off_1E7989000;
      --v31;
    }

    while (v31);
  }

  [(BWNode *)v16 setSupportsConcurrentLiveInputCallbacks:1];
  if (v50)
  {
    v34 = v50;
    do
    {
      v35 = [[BWNodeOutput alloc] initWithMediaType:1835365473 node:v16];
      [(BWNode *)v16 addOutput:v35];

      --v34;
    }

    while (v34);
  }

  v36 = malloc_type_calloc(count, 8uLL, 0x6004044C4A2DFuLL);
  v16->_formatDescriptionsForInputs = v36;
  if (v36)
  {
    v16->_masterInputIndex = 0;
    v16->_masterInput = [(NSArray *)[(BWNode *)v16 inputs] objectAtIndex:v16->_masterInputIndex];
    v37 = 0x7FFFFFFFFFFFFFFFLL;
    if (v49)
    {
      v37 = v15;
    }

    v16->_firstAudioInputIndex = v37;
    v16->_stagingQueues = v17;
    v16->_recordingStagingQueues = v19;
    v16->_recordingStagingQueueLimitForVideo = v48;
    v16->_pendingIrisRequestMarkerBuffers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16->_numInputs = count;
    v16->_numOutputs = count + v50;
    v16->_numVideoInputs = v15;
    v16->_numAudioInputs = v49;
    v16->_numMetadataInputs = a5;
    v16->_numActionOnlyOutputs = v50;
    v16->_stateMutex = FigSimpleMutexCreate();
    v38 = v45;
    if (!v15)
    {
      v38 = 0;
    }

    v16->_overCaptureEnabled = v38;
    v39 = v46;
    if (v46)
    {
      v39 = v16->_numVideoInputs == 1 && v16->_numAudioInputs == 1 && v16->_masterInputIndex == 0;
    }

    v16->_lowLatencyModeEnabled = v39;
    if (a10)
    {
      v16->_motionDataTimeMachine = a10;
      v16->_videoSampleBuffersWaitingForMetadata = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    }

    numVideoInputs = v16->_numVideoInputs;
    if (numVideoInputs)
    {
      v16->_lastSeenLuxMetadata = malloc_type_calloc(numVideoInputs, 8uLL, 0x80040B8603338uLL);
      v16->_currNumberOfConsecutiveVideoFramesMissingLux = malloc_type_calloc(v16->_numVideoInputs, 4uLL, 0x100004052888210uLL);
      v16->_maxNumberOfConsecutiveVideoFramesAllowedToBeMissingLux = 4;
    }

    if (initWithNumberOfVideoInputs_numberOfAudioInputs_numberOfMetadataInputs_numberOfActionOnlyOutputs_overCaptureEnabled_allowLowLatencyWhenPossible_useTrueVideoFileRecordingStaging_motionDataTimeMachine__onceToken != -1)
    {
      [BWFileCoordinatorNode initWithNumberOfVideoInputs:numberOfAudioInputs:numberOfMetadataInputs:numberOfActionOnlyOutputs:overCaptureEnabled:allowLowLatencyWhenPossible:useTrueVideoFileRecordingStaging:motionDataTimeMachine:];
    }

    v16->_droppedFramesCountDueToISP = 0;
    [(BWNode *)v16 setSupportsLiveReconfiguration:1];
    [(BWNode *)v16 setSupportsPrepareWhileRunning:1];
    [(BWNode *)v16 setRequiresEndOfDataForConfigurationChanges:1];
    v16->_numBuffersReceivedDuringStartingRecording = malloc_type_malloc(4 * v16->_numInputs, 0x100004052888210uLL);
    v16->_earliestPTSReceivedDuringStartingRecording = malloc_type_malloc(24 * v16->_numInputs, 0x1000040504FFAC1uLL);
    v16->_latestPTSReceivedDuringStartingRecording = malloc_type_malloc(24 * v16->_numInputs, 0x1000040504FFAC1uLL);
  }

  else
  {

    return 0;
  }

  return v16;
}

uint64_t __224__BWFileCoordinatorNode_initWithNumberOfVideoInputs_numberOfAudioInputs_numberOfMetadataInputs_numberOfActionOnlyOutputs_overCaptureEnabled_allowLowLatencyWhenPossible_useTrueVideoFileRecordingStaging_motionDataTimeMachine___block_invoke()
{
  result = notify_register_check("com.apple.avcapture.prefersnointerruptionsbyringtonesandalerts", &gPrefersNoInterruptionsByRingtonesAndAlertsToken);
  gValidPrefersNoInterruptionsByRingtonesAndAlertsToken = result == 0;
  if (result)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

- (void)dealloc
{
  [(BWFileCoordinatorNode *)self _releaseSettings];
  emptyMetadataSampleData = self->_emptyMetadataSampleData;
  if (emptyMetadataSampleData)
  {
    CFRelease(emptyMetadataSampleData);
  }

  formatDescriptionsForInputs = self->_formatDescriptionsForInputs;
  if (formatDescriptionsForInputs)
  {
    numInputs = self->_numInputs;
    if (numInputs)
    {
      for (i = 0; i < numInputs; ++i)
      {
        v7 = self->_formatDescriptionsForInputs[i];
        if (v7)
        {
          CFRelease(v7);
          numInputs = self->_numInputs;
        }
      }

      formatDescriptionsForInputs = self->_formatDescriptionsForInputs;
    }

    free(formatDescriptionsForInputs);
  }

  FigSimpleMutexDestroy();
  lastSeenLuxMetadata = self->_lastSeenLuxMetadata;
  if (lastSeenLuxMetadata)
  {
    if (self->_numVideoInputs)
    {
      v9 = 0;
      do
      {
      }

      while (self->_numVideoInputs > v9);
      lastSeenLuxMetadata = self->_lastSeenLuxMetadata;
    }

    free(lastSeenLuxMetadata);
  }

  free(self->_currNumberOfConsecutiveVideoFramesMissingLux);
  recordingStoppedSemaphore = self->_recordingStoppedSemaphore;
  if (recordingStoppedSemaphore)
  {
    dispatch_semaphore_signal(recordingStoppedSemaphore);
  }

  free(self->_numBuffersReceivedDuringStartingRecording);
  free(self->_earliestPTSReceivedDuringStartingRecording);
  free(self->_latestPTSReceivedDuringStartingRecording);
  v11.receiver = self;
  v11.super_class = BWFileCoordinatorNode;
  [(BWNode *)&v11 dealloc];
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4
{
  v6 = [a4 index];
  v7 = [(BWNode *)self outputs];
  [-[NSArray objectAtIndexedSubscript:](v7 objectAtIndexedSubscript:{v6), "setFormat:", a3}];
  if (self->_masterInputIndex == v6)
  {
    for (i = self->_numAudioInputs + self->_numVideoInputs + self->_numMetadataInputs; i < self->_numOutputs; ++i)
    {
      [-[NSArray objectAtIndexedSubscript:](v7 objectAtIndexedSubscript:{i), "setFormat:", a3}];
    }
  }
}

- (void)setCinematicLookAheadFrameCount:(int)a3
{
  if (self->_motionDataTimeMachine)
  {
    if (a3 <= 0)
    {
      v3 = MEMORY[0x1E695DF30];
      v4 = *MEMORY[0x1E695D940];
      v5 = @"Motion data time machine use must have a positive non-zero lookahead requirement";
      goto LABEL_7;
    }
  }

  else if (a3)
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D940];
    v5 = @"Motion data lookahead requirement must be zero when not using a motion data time machine";
LABEL_7:
    objc_exception_throw([v3 exceptionWithName:v4 reason:v5 userInfo:0]);
  }

  self->_cinematicLookAheadFrameCount = a3;
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  v7 = [a5 index];
  if (a4)
  {
    v8 = [a4 formatDescription];
    if (v8)
    {
      v9 = v8;
      numVideoInputs = self->_numVideoInputs;
      if (numVideoInputs)
      {
        v11 = v7 >= numVideoInputs;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        numAudioInputs = self->_numAudioInputs;
        if (v7 >= numAudioInputs + numVideoInputs || numAudioInputs == 0)
        {
          v16 = 1835365473;
        }

        else
        {
          v16 = 1936684398;
        }
      }

      else
      {
        v16 = 1986618469;
      }

      if (CMFormatDescriptionGetMediaType(v8) != v16)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Description has invalid media type for input" userInfo:0]);
      }

      formatDescriptionsForInputs = self->_formatDescriptionsForInputs;
      v15 = formatDescriptionsForInputs[v7];
      formatDescriptionsForInputs[v7] = v9;
      CFRetain(v9);
      if (v15)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v14 = self->_formatDescriptionsForInputs;
      v15 = v14[v7];
      v14[v7] = 0;
      if (v15)
      {
LABEL_18:
        CFRelease(v15);
      }
    }
  }

  v18 = [(BWNode *)self outputs];
  [-[NSArray objectAtIndex:](v18 objectAtIndex:{v7), "makeConfiguredFormatLive"}];
  if (self->_masterInputIndex == v7)
  {
    for (i = self->_numAudioInputs + self->_numVideoInputs + self->_numMetadataInputs; i < self->_numOutputs; ++i)
    {
      [-[NSArray objectAtIndexedSubscript:](v18 objectAtIndexedSubscript:{i), "makeConfiguredFormatLive"}];
    }
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  v6 = [a4 index];
  FigSimpleMutexLock();
  ++self->_numEODMessagesReceived;
  v12 = [(BWNode *)self outputs];
  recordingState = self->_recordingState;
  v14 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  if (!self->_currSettingsIsIris || (recordingState != 1 ? (v15 = recordingState == 4) : (v15 = 1), !v15))
  {
    if (recordingState == 3)
    {
      [(BWFileCoordinatorNode *)self _finishStoppingOrPausing:0 withErrorCode:v7, v8, v9, v10, v11];
    }

LABEL_13:
    [-[NSArray objectAtIndex:](v12 objectAtIndex:{v6), "markEndOfLiveOutputForConfigurationID:", a3}];
    if (*(&self->super.super.isa + v14[217]) == v6)
    {
      for (i = self->_numAudioInputs + self->_numVideoInputs + self->_numMetadataInputs; i < self->_numOutputs; ++i)
      {
        [-[NSArray objectAtIndexedSubscript:](v12 objectAtIndexedSubscript:{i), "markEndOfLiveOutputForConfigurationID:", a3}];
      }
    }

    if (v6 < self->_numVideoInputs)
    {

      self->_lastSeenLuxMetadata[v6] = 0;
      self->_currNumberOfConsecutiveVideoFramesMissingLux[v6] = 0;
    }

    numEODMessagesReceived = self->_numEODMessagesReceived;
    if ([(NSArray *)[(BWNode *)self inputs] count]== numEODMessagesReceived)
    {
      if (a3 && self->_recordingState)
      {
        [(BWFileCoordinatorNode *)self _completeTransitionToNotRecording];
        [(BWFileCoordinatorNode *)self _releaseSettings];
      }

      self->_numEODMessagesReceived = 0;
    }

    goto LABEL_24;
  }

  if (self->_masterInputIndex == v6)
  {
    [(BWFileCoordinatorNode *)self _flushAllBuffersFromRecordingStagingQueues];
    [(BWFileCoordinatorNode *)self _performFlushAction];
    idleInputIndicesWaitingForFlush = self->_idleInputIndicesWaitingForFlush;
    if (idleInputIndicesWaitingForFlush)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v20 = [(NSMutableArray *)idleInputIndicesWaitingForFlush countByEnumeratingWithState:&v25 objects:v24 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v26;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v26 != v22)
            {
              objc_enumerationMutation(idleInputIndicesWaitingForFlush);
            }

            [-[NSArray objectAtIndex:](v12 objectAtIndex:{objc_msgSend(*(*(&v25 + 1) + 8 * j), "unsignedIntegerValue")), "markEndOfLiveOutputForConfigurationID:", a3}];
          }

          v21 = [(NSMutableArray *)idleInputIndicesWaitingForFlush countByEnumeratingWithState:&v25 objects:v24 count:16];
        }

        while (v21);
      }

      self->_idleInputIndicesWaitingForFlush = 0;
      v14 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    }

    goto LABEL_13;
  }

  v16 = self->_idleInputIndicesWaitingForFlush;
  if (!v16)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_idleInputIndicesWaitingForFlush = v16;
  }

  -[NSMutableArray addObject:](v16, "addObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6]);
LABEL_24:
  FigSimpleMutexUnlock();
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v7 = [a4 index];
  FigSimpleMutexLock();
  if (BWSampleBufferIsMarkerBuffer(a3) && (v8 = CMGetAttachment(a3, @"IrisMovieRequest", 0)) != 0)
  {
    if (self->_recordingState == 3)
    {
      [(BWFileCoordinatorNode *)self _updateRecordingStateWithIrisMovieRequest:v8];
      [(NSMutableArray *)self->_pendingIrisRequestMarkerBuffers addObject:a3];
    }

    else
    {
      [(BWFileCoordinatorNode *)self _handleIrisMovieRequest:v8 input:a4 sbuf:a3];
    }
  }

  else
  {
    if (v7 < self->_numVideoInputs)
    {
      FigCaptureMetadataUtilitiesAdjustValidBufferRectForDarkShadeCropping(a3);
      if (!BWSampleBufferIsMarkerBuffer(a3))
      {
        [(BWFileCoordinatorNode *)self _ensureLuxMetadata:a3 forNodeInputIndex:v7];
      }
    }

    memset(&v13, 0, sizeof(v13));
    CMSampleBufferGetPresentationTimeStamp(&v13, a3);
    CMGetAttachment(a3, *off_1E798A3C8, 0);
    if (self->_recordingState == 1 && (recordingStagingQueues = self->_recordingStagingQueues) != 0 && self->_firstAudioHasBeenProcessed)
    {
      if (v13.flags)
      {
        [-[NSArray objectAtIndexedSubscript:](recordingStagingQueues objectAtIndexedSubscript:{v7), "addObject:", a3}];
        [(BWFileCoordinatorNode *)self _flushEligibleBuffersFromRecordingStagingQueues];
        if (v7 < self->_numVideoInputs && [-[NSArray objectAtIndexedSubscript:](self->_recordingStagingQueues objectAtIndexedSubscript:{v7), "count"}] > self->_recordingStagingQueueLimitForVideo)
        {
          v10 = CFRetain([-[NSArray objectAtIndexedSubscript:](self->_recordingStagingQueues objectAtIndexedSubscript:{v7), "firstObject"}]);
          [-[NSArray objectAtIndexedSubscript:](self->_recordingStagingQueues objectAtIndexedSubscript:{v7), "removeObjectAtIndex:", 0}];
          [(BWFileCoordinatorNode *)self _renderSampleBuffer:v10 forInput:[(NSArray *)[(BWNode *)self inputs] objectAtIndexedSubscript:v7]];
          memset(&v12, 0, sizeof(v12));
          CMSampleBufferGetPresentationTimeStamp(&v12, v10);
          CFRelease(v10);
          v11 = v12;
          [(BWFileCoordinatorNode *)self _flushBuffersFromRecordingStagingQueuesWithPTSCutoff:1 factorInAudioDuration:?];
        }
      }

      else
      {
        [(BWFileCoordinatorNode *)self _flushAllBuffersFromRecordingStagingQueues];
      }
    }

    else
    {
      [(BWFileCoordinatorNode *)self _renderSampleBuffer:a3 forInput:a4];
    }
  }

  FigSimpleMutexUnlock();
}

- (unint64_t)_earliestPTSStagedForRecording:(int)a3@<W2> factorInAudioDuration:(uint64_t)a4@<X8>
{
  if (result)
  {
    v6 = result;
    v7 = MEMORY[0x1E6960C70];
    *a4 = *MEMORY[0x1E6960C70];
    *(a4 + 16) = *(v7 + 16);
    if (*(result + 648))
    {
      v9 = 0;
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        if (a3 && (v11 = *(v6 + 664), v9 >= v11) && v9 < *(v6 + 672) + v11)
        {
          result = [objc_msgSend(*(v6 + 160) objectAtIndexedSubscript:{v9), "count"}];
          if (result >= 2)
          {
            result = [objc_msgSend(*(v6 + 160) objectAtIndexedSubscript:{v9), "objectAtIndexedSubscript:", 1}];
            if (result)
            {
LABEL_11:
              memset(&v14, 0, sizeof(v14));
              result = CMSampleBufferGetPresentationTimeStamp(&v14, result);
              if ((*(a4 + 12) & 1) == 0 || (time1 = *a4, v12 = v14, result = CMTimeCompare(&time1, &v12), result >= 1))
              {
                *a4 = v14;
                v10 = v9;
              }
            }
          }
        }

        else
        {
          result = [objc_msgSend(*(v6 + 160) objectAtIndexedSubscript:{v9), "firstObject"}];
          if (result)
          {
            goto LABEL_11;
          }
        }

        if (++v9 >= *(v6 + 648))
        {
          goto LABEL_17;
        }
      }
    }

    v10 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_17:
    *a2 = v10;
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

- (void)_doStartingToRecordWithSBuf:(unint64_t)a3 inputIndex:(__int128 *)a4 sbufPTS:
{
  if (!a1)
  {
    return;
  }

  v7 = [*(a1 + 128) objectAtIndex:?];
  if (!v7)
  {
    FigSimpleMutexUnlock();
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Could not find staging queue for given input" userInfo:0]);
  }

  v8 = v7;
  ++*(*(a1 + 872) + 4 * a3);
  v9 = *(a1 + 880) + 24 * a3;
  if ((*(v9 + 12) & 1) == 0)
  {
    v10 = *a4;
    *(v9 + 16) = *(a4 + 2);
    *v9 = v10;
  }

  v11 = *(a1 + 888) + 24 * a3;
  v12 = *(a4 + 2);
  *v11 = *a4;
  *(v11 + 16) = v12;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [*(a1 + 144) isIrisRecording])
  {
    if (*(a1 + 664) && *(a1 + 696) == a3 && ![v8 count] && CMGetAttachment(a2, @"SampleDataToBeDropped", 0) == *MEMORY[0x1E695E4D0])
    {
      return;
    }

    v125 = 0x100000001;
  }

  else
  {
    v125 = 0;
  }

  if (*(a1 + 556))
  {
    *&time1.duration.value = *a4;
    time1.duration.epoch = *(a4 + 2);
    *time2 = *(a1 + 544);
    *&time2[16] = *(a1 + 560);
    if (CMTimeCompare(&time1.duration, time2) < 1)
    {
      return;
    }
  }

  key = *off_1E798A3C8;
  v13 = CMGetAttachment(a2, *off_1E798A3C8, 0);
  if (*(a1 + 664))
  {
    v14 = BYTE4(v125);
    if (*(a1 + 696) != a3)
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0)
    {
      v17 = v13;
      if (([objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B430), "BOOLValue"}] & 1) != 0 || objc_msgSend(objc_msgSend(v17, "objectForKeyedSubscript:", *off_1E798B330), "intValue") > 1)
      {
        return;
      }

      if (*(a1 + 592) == -1)
      {
        *(a1 + 596) = [objc_msgSend(v17 objectForKeyedSubscript:{*off_1E798B0A8), "intValue"}];
        *(a1 + 592) = [objc_msgSend(v17 objectForKeyedSubscript:{*off_1E798B320), "intValue"}];
        v18 = *(a1 + 592) - 1;
        v19 = 0;
        if (v18 <= 9)
        {
          v19 = qword_1AD046D70[v18];
        }

        *(a1 + 584) = v19;
      }

      if (![v8 count] && (*(a1 + 608) & 1) == 0 && *(a1 + 584) > 0.0)
      {
        v20 = *(a1 + 592);
        if (v20 <= 0xA)
        {
          if (((1 << v20) & 0x64C) != 0)
          {
            if ([objc_msgSend(v17 objectForKeyedSubscript:{*off_1E798B0A8), "intValue"}] == 2)
            {
              goto LABEL_45;
            }
          }

          else if (v20 == 1 && [objc_msgSend(v17 objectForKeyedSubscript:{*off_1E798B320), "intValue"}] == 1)
          {
LABEL_45:
            v21 = a2;
            if ((*(a1 + 508) & 1) == 0)
            {
              CMSampleBufferGetPresentationTimeStamp(&time1.duration, a2);
              *(a1 + 496) = *&time1.duration.value;
              *(a1 + 512) = time1.duration.epoch;
            }

            CMSampleBufferGetPresentationTimeStamp(time2, a2);
            *&rhs.duration.value = *(a1 + 496);
            rhs.duration.epoch = *(a1 + 512);
            CMTimeSubtract(&time1.duration, time2, &rhs.duration);
            Seconds = CMTimeGetSeconds(&time1.duration);
            *(a1 + 568) = Seconds;
            *(a1 + 608) = Seconds >= *(a1 + 584);
            if ((*(a1 + 608) & 1) == 0)
            {
              v23 = 600;
              goto LABEL_195;
            }

            goto LABEL_189;
          }
        }
      }

      v21 = a2;
      if ((*(a1 + 508) & 1) == 0)
      {
LABEL_190:
        if (![CMGetAttachment(v21 @"DropFrameWaitingForTorchToRampUp"])
        {
          if (*(a1 + 532))
          {
            CMSampleBufferGetPresentationTimeStamp(time2, v21);
            *&rhs.duration.value = *(a1 + 520);
            rhs.duration.epoch = *(a1 + 536);
            CMTimeSubtract(&time1.duration, time2, &rhs.duration);
            *(a1 + 576) = CMTimeGetSeconds(&time1.duration);
            v94 = MEMORY[0x1E6960C70];
            *(a1 + 520) = *MEMORY[0x1E6960C70];
            *(a1 + 536) = *(v94 + 16);
          }

          goto LABEL_19;
        }

        if ([v8 count])
        {
          goto LABEL_19;
        }

        if ((*(a1 + 532) & 1) == 0)
        {
          CMSampleBufferGetPresentationTimeStamp(&time1.duration, v21);
          *(a1 + 520) = *&time1.duration.value;
          *(a1 + 536) = time1.duration.epoch;
        }

        v23 = 604;
LABEL_195:
        ++*(a1 + v23);
        return;
      }

      CMSampleBufferGetPresentationTimeStamp(time2, a2);
      *&rhs.duration.value = *(a1 + 496);
      rhs.duration.epoch = *(a1 + 512);
      CMTimeSubtract(&time1.duration, time2, &rhs.duration);
      *(a1 + 568) = CMTimeGetSeconds(&time1.duration);
LABEL_189:
      v93 = MEMORY[0x1E6960C70];
      *(a1 + 496) = *MEMORY[0x1E6960C70];
      *(a1 + 512) = *(v93 + 16);
      goto LABEL_190;
    }
  }

LABEL_19:
  v15 = *(a1 + 664);
  if (v15 <= a3 && *(a1 + 672) + v15 > a3)
  {
    if (*(a1 + 752))
    {
      if ((*(a1 + 740) & 1) == 0)
      {
        return;
      }

      *&time1.duration.value = *a4;
      time1.duration.epoch = *(a4 + 2);
      *time2 = *(a1 + 728);
      *&time2[16] = *(a1 + 744);
      if (CMTimeCompare(&time1.duration, time2) < 0)
      {
        return;
      }
    }
  }

  [v8 addObject:a2];
  if (a3 == 1 && (*(a1 + 720) & 1) != 0)
  {
    *(a1 + 610) = 1;
  }

  if ([v8 count] == 1)
  {
    if (*(a1 + 696) == a3)
    {
      if (*(a1 + 720) == 1 && (*(a1 + 610) & 1) == 0)
      {
        [v8 removeObjectAtIndex:0];
        goto LABEL_61;
      }

      v16 = *(a4 + 2);
      *(a1 + 304) = *a4;
      *(a1 + 320) = v16;
      if (*(a1 + 768))
      {
        *(a1 + 792) = [objc_msgSend(CMGetAttachment(a2 key];
        *(a1 + 808) = 0;
      }
    }

    else
    {
      if (*(a1 + 672) + *(a1 + 664) <= a3)
      {
        goto LABEL_61;
      }

      *&time1.duration.value = *(a1 + 328);
      time1.duration.epoch = *(a1 + 344);
      *time2 = *a4;
      *&time2[16] = *(a4 + 2);
      if ((CMTimeCompare(&time1.duration, time2) & 0x80000000) == 0)
      {
        goto LABEL_61;
      }

      v24 = *(a4 + 2);
      *(a1 + 328) = *a4;
      *(a1 + 344) = v24;
    }

    v25 = [*(a1 + 128) objectAtIndex:*(a1 + 696)];
    v26 = a1 + 304;
    if (*(a1 + 316))
    {
      v27 = v25;
      v28 = MEMORY[0x1E6960C70];
      do
      {
        *&time1.duration.value = *(a1 + 328);
        time1.duration.epoch = *(a1 + 344);
        *time2 = *v26;
        *&time2[16] = *(v26 + 16);
        if (CMTimeCompare(&time1.duration, time2) < 1)
        {
          break;
        }

        [v27 removeObjectAtIndex:0];
        v29 = (a1 + 304);
        if ([v27 count])
        {
          CMSampleBufferGetPresentationTimeStamp(&time1.duration, [v27 firstObject]);
          *v29 = *&time1.duration.value;
          *(a1 + 320) = time1.duration.epoch;
        }

        else
        {
          *v29 = *v28;
          *(a1 + 320) = *(v28 + 16);
          *(a1 + 611) = 0;
        }

        v26 = a1 + 304;
      }

      while ((*(a1 + 316) & 1) != 0);
    }
  }

LABEL_61:
  if ((*(a1 + 316) & 1) == 0)
  {
    return;
  }

  if (*(a1 + 672) + *(a1 + 664))
  {
    v31 = 0;
    do
    {
      if (v31 != *(a1 + 696))
      {
        v32 = [*(a1 + 128) objectAtIndex:v31];
        v33 = v32;
        if (*(a1 + 720) == 1 && v31 == 1 && (*(a1 + 611) & 1) == 0)
        {
          if ([v32 count])
          {
            memset(&time1, 0, 24);
            CMSampleBufferGetPresentationTimeStamp(&time1.duration, [v33 objectAtIndexedSubscript:0]);
            *time2 = *&time1.duration.value;
            *&time2[16] = time1.duration.epoch;
            *&rhs.duration.value = *(a1 + 304);
            rhs.duration.epoch = *(a1 + 320);
            if (CMTimeCompare(time2, &rhs.duration) <= 0)
            {
              *(a1 + 611) = 1;
            }
          }
        }

        fcn_getEndingPTSOfFirstBufferInStagingQueue(v33, &time1.duration);
        rhs.duration.value = time1.duration.value;
        flags = time1.duration.flags;
        rhs.duration.timescale = time1.duration.timescale;
        if (time1.duration.flags)
        {
          epoch = time1.duration.epoch;
          do
          {
            time1.duration.value = rhs.duration.value;
            time1.duration.timescale = rhs.duration.timescale;
            time1.duration.flags = flags;
            time1.duration.epoch = epoch;
            *time2 = *(a1 + 304);
            *&time2[16] = *(a1 + 320);
            if (CMTimeCompare(&time1.duration, time2) > 0)
            {
              break;
            }

            [v33 removeObjectAtIndex:0];
            fcn_getEndingPTSOfFirstBufferInStagingQueue(v33, &time1.duration);
            rhs.duration.value = time1.duration.value;
            flags = time1.duration.flags;
            rhs.duration.timescale = time1.duration.timescale;
            epoch = time1.duration.epoch;
          }

          while ((time1.duration.flags & 1) != 0);
        }
      }

      ++v31;
      v30 = *(a1 + 672) + *(a1 + 664);
    }

    while (v31 < v30);
  }

  else
  {
    v30 = 0;
  }

  for (; v30 < *(a1 + 648); ++v30)
  {
    if (v30 != *(a1 + 696))
    {
      v36 = [*(a1 + 128) objectAtIndex:v30];
      for (i = v36; [v36 count]; v36 = i)
      {
        CMSampleBufferGetPresentationTimeStamp(&time1.duration, [i objectAtIndexedSubscript:0]);
        *time2 = *(a1 + 304);
        *&time2[16] = *(a1 + 320);
        if ((CMTimeCompare(&time1.duration, time2) & 0x80000000) == 0)
        {
          break;
        }

        [i removeObjectAtIndex:0];
      }
    }
  }

  if ((*(a1 + 611) & 1) == 0)
  {
    if (*(a1 + 672) + *(a1 + 664))
    {
      v38 = 0;
      do
      {
        if (v38 != *(a1 + 696))
        {
          fcn_getEndingPTSOfFirstBufferInStagingQueue([*(a1 + 128) objectAtIndex:v38], &v139);
          if ((v139.flags & 1) == 0)
          {
            break;
          }
        }

        ++v38;
      }

      while (v38 < *(a1 + 672) + *(a1 + 664));
      if (*(a1 + 611))
      {
        goto LABEL_95;
      }
    }

    else
    {
      v38 = 0;
    }

    if (*(a1 + 672) + *(a1 + 664) != v38)
    {
      return;
    }
  }

LABEL_95:
  v39 = 0;
  *(a1 + 196) = 1;
  *(a1 + 792) = 0;
  if (*(a1 + 664))
  {
    v53 = 0;
    allocator = *MEMORY[0x1E695E480];
    do
    {
      if (v53 == *(a1 + 696))
      {
        goto LABEL_123;
      }

      v54 = [*(a1 + 128) objectAtIndex:v53];
      v55 = [v54 firstObject];
      CMSampleBufferGetPresentationTimeStamp(&time1.duration, v55);
      *time2 = *(a1 + 304);
      *&time2[16] = *(a1 + 320);
      if ((CMTimeCompare(&time1.duration, time2) & 0x80000000) == 0)
      {
        goto LABEL_123;
      }

      if ([v54 count] >= 2)
      {
        v56 = [v54 objectAtIndexedSubscript:1];
        memset(&time1, 0, 24);
        CMSampleBufferGetPresentationTimeStamp(&time1.duration, v56);
        if (time1.duration.flags)
        {
          *&rhs.duration.value = *&time1.duration.value;
          rhs.duration.epoch = time1.duration.epoch;
          time = *(a1 + 304);
          CMTimeSubtract(time2, &rhs.duration, &time);
          if (CMTimeGetSeconds(time2) < 0.002)
          {
            [v54 removeObjectAtIndex:0];
            v55 = v56;
          }
        }
      }

      v138 = *(a1 + 304);
      timingArrayEntriesNeededOut = 0;
      sampleBufferOut = 0;
      NumSamples = CMSampleBufferGetNumSamples(v55);
      CMSampleBufferGetSampleTimingInfoArray(v55, 0, 0, &timingArrayEntriesNeededOut);
      if (timingArrayEntriesNeededOut != 1)
      {
        goto LABEL_123;
      }

      if (NumSamples != 1)
      {
        goto LABEL_123;
      }

      memset(&time1, 0, sizeof(time1));
      if (CMSampleBufferGetSampleTimingInfo(v55, 0, &time1))
      {
        goto LABEL_123;
      }

      v58 = *(MEMORY[0x1E6960CF0] + 48);
      *&time2[32] = *(MEMORY[0x1E6960CF0] + 32);
      *&time2[48] = v58;
      *v129 = *(MEMORY[0x1E6960CF0] + 64);
      v59 = *(MEMORY[0x1E6960CF0] + 16);
      *time2 = *MEMORY[0x1E6960CF0];
      *&time2[16] = v59;
      if (time1.presentationTimeStamp.flags)
      {
        *&time2[24] = v138;
        if (v138.timescale != time1.presentationTimeStamp.timescale)
        {
          rhs.duration = v138;
          CMTimeConvertScale(&time2[24], &rhs.duration, time1.presentationTimeStamp.timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        }
      }

      if (time1.decodeTimeStamp.flags)
      {
        rhs.duration = time1.decodeTimeStamp;
        time = v138;
        if (CMTimeCompare(&rhs.duration, &time) <= 0)
        {
          *&time2[48] = *&time1.decodeTimeStamp.value;
          *v129 = time1.decodeTimeStamp.epoch;
        }

        else
        {
          *&time2[48] = *&v138.value;
          *v129 = v138.epoch;
          if (v138.timescale != time1.decodeTimeStamp.timescale)
          {
            time = v138;
            CMTimeConvertScale(&rhs.duration, &time, time1.decodeTimeStamp.timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
            *&time2[48] = *&rhs.duration.value;
            *v129 = rhs.duration.epoch;
          }
        }
      }

      if (time1.duration.flags)
      {
        rhs.duration = v138;
        lhs = time1.presentationTimeStamp;
        CMTimeSubtract(&time, &rhs.duration, &lhs);
        lhs = time1.duration;
        CMTimeSubtract(&rhs.duration, &lhs, &time);
        *&time2[16] = rhs.duration.epoch;
        *time2 = *&rhs.duration.value;
        time = **&MEMORY[0x1E6960CC0];
        if (CMTimeCompare(&rhs.duration, &time) <= 0)
        {
          *time2 = *MEMORY[0x1E6960C70];
          v60 = *(MEMORY[0x1E6960C70] + 16);
        }

        else
        {
          if (*&time2[8] == time1.duration.timescale)
          {
            goto LABEL_146;
          }

          time = *time2;
          CMTimeConvertScale(&rhs.duration, &time, time1.duration.timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          *time2 = *&rhs.duration.value;
          v60 = rhs.duration.epoch;
        }

        *&time2[16] = v60;
      }

LABEL_146:
      CMSampleBufferCreateCopyWithNewTiming(allocator, v55, 1, time2, &sampleBufferOut);
      v61 = sampleBufferOut;
      if (sampleBufferOut)
      {
        [v54 replaceObjectAtIndex:0 withObject:sampleBufferOut];
        CFRelease(v61);
      }

LABEL_123:
      ++v53;
      v39 = *(a1 + 664);
    }

    while (v53 < v39);
  }

  v40 = *(a1 + 672);
  for (j = v40 + v39; v39 < j; j = *(a1 + 672) + *(a1 + 664))
  {
    if (v39 != *(a1 + 696))
    {
      v42 = [*(a1 + 128) objectAtIndex:v39];
      v43 = [v42 firstObject];
      if (v43)
      {
        v44 = v43;
        *(a1 + 613) = 1;
        CMSampleBufferGetPresentationTimeStamp(&time1.duration, v43);
        *time2 = *(a1 + 304);
        *&time2[16] = *(a1 + 320);
        if (CMTimeCompare(&time1.duration, time2) < 0)
        {
          *&time1.duration.value = *(a1 + 304);
          time1.duration.epoch = *(a1 + 320);
          AudioBufferTrimmedToStartTime = fcn_createAudioBufferTrimmedToStartTime(v44, &time1.duration);
          if (AudioBufferTrimmedToStartTime)
          {
            v46 = AudioBufferTrimmedToStartTime;
            [v42 replaceObjectAtIndex:0 withObject:AudioBufferTrimmedToStartTime];
            CFRelease(v46);
          }

          else
          {
            [v42 removeObjectAtIndex:0];
          }
        }
      }
    }

    ++v39;
  }

  for (; j < *(a1 + 648); ++j)
  {
    if (j != *(a1 + 696))
    {
      v47 = [*(a1 + 128) objectAtIndexedSubscript:j];
      if (![v47 count] || (CMSampleBufferGetPresentationTimeStamp(&time1.duration, objc_msgSend(v47, "objectAtIndexedSubscript:", 0)), *time2 = *(a1 + 304), *&time2[16] = *(a1 + 320), CMTimeCompare(&time1.duration, time2) >= 1))
      {
        *&time1.duration.value = *(a1 + 304);
        time1.duration.epoch = *(a1 + 320);
        v48 = [(BWFileCoordinatorNode *)a1 _createEmptyMetadataSBufWithPTS:j forInputIndex:?];
        if (v48)
        {
          v49 = v48;
          [v47 insertObject:v48 atIndex:0];
          CFRelease(v49);
        }
      }
    }
  }

  if (*(a1 + 244) & 1) != 0 && (*(a1 + 268))
  {
    memset(&time1, 0, 24);
    *time2 = *(a1 + 232);
    *&time2[16] = *(a1 + 248);
    *&rhs.duration.value = *(a1 + 256);
    rhs.duration.epoch = *(a1 + 272);
    CMTimeAdd(&time1.duration, time2, &rhs.duration);
    if (*(a1 + 220))
    {
      *&rhs.duration.value = *&time1.duration.value;
      rhs.duration.epoch = time1.duration.epoch;
      time = *(a1 + 208);
      CMTimeSubtract(time2, &rhs.duration, &time);
      *&time1.duration.value = *time2;
      time1.duration.epoch = *&time2[16];
    }

    *&rhs.duration.value = *(a1 + 304);
    rhs.duration.epoch = *(a1 + 320);
    time = time1.duration;
    CMTimeSubtract(time2, &rhs.duration, &time);
    *(a1 + 208) = *time2;
    *(a1 + 224) = *&time2[16];
  }

  v50 = *(MEMORY[0x1E6960CF0] + 48);
  *&rhs.presentationTimeStamp.timescale = *(MEMORY[0x1E6960CF0] + 32);
  *&rhs.decodeTimeStamp.value = v50;
  rhs.decodeTimeStamp.epoch = *(MEMORY[0x1E6960CF0] + 64);
  v51 = *(MEMORY[0x1E6960CF0] + 16);
  *&rhs.duration.value = *MEMORY[0x1E6960CF0];
  *&rhs.duration.epoch = v51;
  if (!*(a1 + 144) && (v52 = [*(a1 + 128) objectAtIndex:*(a1 + 696)], objc_msgSend(v52, "count")))
  {
    if (*(a1 + 220))
    {
      CMSampleBufferGetPresentationTimeStamp(time2, [v52 objectAtIndexedSubscript:0]);
      time = *(a1 + 208);
      CMTimeSubtract(&time1.duration, time2, &time);
      *&rhs.presentationTimeStamp.value = *&time1.duration.value;
      v62 = time1.duration.epoch;
    }

    else
    {
      *&rhs.presentationTimeStamp.value = *(a1 + 304);
      v62 = *(a1 + 320);
    }

    rhs.presentationTimeStamp.epoch = v62;
  }

  else
  {
    rhs.presentationTimeStamp = *(a1 + 304);
  }

  v63 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  v138.value = 0;
  if (!CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &rhs, 0, 0, &v138))
  {
    allocatora = *(a1 + 144);
    v64 = *(a1 + 144);
    v65 = &unk_1E799C000;
    if (v64)
    {
      v69 = &unk_1E799C000;
      if (dword_1ED844310)
      {
        LODWORD(time.value) = 0;
        LOBYTE(lhs.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = time.value;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, lhs.value))
        {
          v72 = value;
        }

        else
        {
          v72 = value & 0xFFFFFFFE;
        }

        if (v72)
        {
          v76 = [*(a1 + 144) settingsID];
          *&time1.duration.value = *(a1 + 304);
          time1.duration.epoch = *(a1 + 320);
          v77 = CMTimeGetSeconds(&time1.duration);
          v78 = *(a1 + 592);
          v79 = *(a1 + 596);
          v80 = *(a1 + 568);
          v81 = *(a1 + 600);
          v82 = *(a1 + 576);
          v83 = *(a1 + 604);
          *time2 = 136317698;
          *&time2[4] = "[BWFileCoordinatorNode _doStartingToRecordWithSBuf:inputIndex:sbufPTS:]";
          *&time2[12] = 2048;
          *&time2[14] = a1;
          *&time2[22] = 2112;
          *&time2[24] = 0x1F21A9C30;
          *&time2[32] = 2048;
          *&time2[34] = v76;
          *&time2[42] = 2048;
          *&time2[44] = v77;
          *&time2[52] = 1024;
          *&time2[54] = v78;
          *&time2[58] = 1024;
          *&time2[60] = v79;
          *v129 = 2048;
          *&v129[2] = v80;
          v130 = 1024;
          v131 = v81;
          v132 = 2048;
          v133 = v82;
          v134 = 1024;
          v135 = v83;
          LODWORD(v120) = 96;
          sampleTimingArray = time2;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v64 = *(a1 + 144);
        v63 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
        v69 = &unk_1E799C000;
      }

      CMSetAttachment(v138.value, @"RecordingSettings", v64, 1u);
      v84 = *(a1 + 176);
      if (v84)
      {
        CMSetAttachment(v138.value, @"RecordingVideoSettings", v84, 1u);
      }

      v85 = FigCaptureFrameRateAsInt(*(a1 + 184), *(a1 + 192));
      if (v85 >= 1)
      {
        CMSetAttachment(v138.value, @"RecordingMaxVideoFrameRate", [MEMORY[0x1E696AD98] numberWithInt:v85], 1u);
      }

      v75 = @"FileWriterAction";
      CMSetAttachment(v138.value, @"FileWriterAction", v69[462], 1u);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && *(a1 + 696) < *(a1 + v63[226]))
      {
        v86 = [objc_msgSend(*(a1 + 128) "objectAtIndex:"firstObject"")];
        v87 = CMGetAttachment(v86, key, 0);
        v88 = [CMGetAttachment(v86 @"VariableFrameRateInfo"];
        v89 = v88;
        if (v88 && dword_1ED844310)
        {
          v121 = v88;
          LODWORD(time.value) = 0;
          LOBYTE(lhs.value) = 0;
          v90 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v91 = time.value;
          if (os_log_type_enabled(v90, lhs.value))
          {
            v92 = v91;
          }

          else
          {
            v92 = v91 & 0xFFFFFFFE;
          }

          if (v92)
          {
            *time2 = 136315394;
            *&time2[4] = "[BWFileCoordinatorNode _doStartingToRecordWithSBuf:inputIndex:sbufPTS:]";
            *&time2[12] = 2048;
            *&time2[14] = a1;
            LODWORD(v120) = 22;
            sampleTimingArray = time2;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v89 = v121;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v95 = v87;
          v96 = *(a1 + 144);
          if (FigDebugIsInternalBuild())
          {
            v97 = [v96 movieLevelMetadata];
            if (v89)
            {
              v98 = 60;
            }

            else
            {
              v98 = v85;
            }

            MovieLevelMetadataWithVariableFrameRate = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithVariableFrameRate(v97, v89 != 0, v98);
            [v96 setMovieLevelMetadata:MovieLevelMetadataWithVariableFrameRate];
          }

          [v96 setMaxFrameRate:{*(a1 + 184), *(a1 + 192), sampleTimingArray, v120}];
          v87 = v95;
        }

        v100 = [MEMORY[0x1E695DF90] dictionary];
        v101 = *off_1E798B238;
        v102 = [v87 objectForKeyedSubscript:*off_1E798B238];
        if (v102)
        {
          [v100 setObject:v102 forKeyedSubscript:v101];
        }

        v103 = *off_1E798B540;
        v104 = [v87 objectForKeyedSubscript:*off_1E798B540];
        if (v104)
        {
          [v100 setObject:v104 forKeyedSubscript:v103];
        }

        if ([v100 count])
        {
          CMSetAttachment(v138.value, key, v100, 1u);
        }
      }

      *(a1 + 152) = [*(a1 + 144) settingsID];
      *(a1 + 173) = v125;
      if (HIDWORD(v125) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v105 = [*(a1 + 144) isIrisMovieRecording];
      }

      else
      {
        v105 = 0;
      }

      *(a1 + 174) = v105;
      if (*(a1 + 722) == 1)
      {
        objc_opt_class();
        v106 = (objc_opt_isKindOfClass() & 1) != 0 && [*(a1 + 144) spatialOverCaptureMovieURL] != 0;
        *(a1 + 723) = v106;
      }

      [(BWFileCoordinatorNode *)a1 _releaseSettings];
    }

    else
    {
      if (dword_1ED844310)
      {
        LODWORD(time.value) = 0;
        LOBYTE(lhs.value) = 0;
        v66 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v67 = time.value;
        if (os_log_type_enabled(v66, lhs.value))
        {
          v68 = v67;
        }

        else
        {
          v68 = v67 & 0xFFFFFFFE;
        }

        if (v68)
        {
          v73 = *(a1 + 152);
          time1.duration = rhs.presentationTimeStamp;
          v74 = CMTimeGetSeconds(&time1.duration);
          *time2 = 136316162;
          *&time2[4] = "[BWFileCoordinatorNode _doStartingToRecordWithSBuf:inputIndex:sbufPTS:]";
          *&time2[12] = 2048;
          *&time2[14] = a1;
          *&time2[22] = 2112;
          *&time2[24] = 0x1F21A9C90;
          *&time2[32] = 2048;
          *&time2[34] = v73;
          *&time2[42] = 2048;
          *&time2[44] = v74;
          LODWORD(v120) = 52;
          sampleTimingArray = time2;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v65 = &unk_1E799C000;
      }

      v75 = *(v65 + 461);
      CMSetAttachment(v138.value, v75, @"Resume", 1u);
    }

    v107 = CMGetAttachment(v138.value, v75, 0);
    memset(time2, 0, 24);
    v108 = CMGetAttachment(a2, *off_1E798A420, 0);
    CMTimeMakeFromDictionary(time2, v108);
    memset(&time, 0, sizeof(time));
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    CMTimeMake(&time, UpTimeNanoseconds, 1000000000);
    if (*MEMORY[0x1E695FF58] == 1)
    {
      *&time1.duration.value = *time2;
      time1.duration.epoch = *&time2[16];
      CMTimeGetSeconds(&time1.duration);
      time1.duration = time;
      CMTimeGetSeconds(&time1.duration);
      FormatDescription = CMSampleBufferGetFormatDescription(a2);
      CMFormatDescriptionGetMediaType(FormatDescription);
      kdebug_trace();
    }

    [(BWFileCoordinatorNode *)a1 _emitMarkerBufferCopyOnAllOutputs:?];
    CFRelease(v138.value);
    v111 = *(a1 + 760);
    if (v111)
    {
      *&time1.duration.value = *(a1 + 304);
      time1.duration.epoch = *(a1 + 320);
      [v111 fileCoordinator:a1 sentMarkerBufferForFileWriterAction:v107 withPTS:&time1 settings:allocatora errorCode:0];
    }
  }

  v112 = *(a1 + 648);
  *targeta = *MEMORY[0x1E6960C88];
  v113 = *(MEMORY[0x1E6960C88] + 16);
  do
  {
    *&time1.duration.value = *targeta;
    time1.duration.epoch = v113;
    if (v112)
    {
      v114 = 0;
      do
      {
        v115 = [*(a1 + 128) objectAtIndex:{v114, sampleTimingArray, v120}];
        if ([v115 count])
        {
          v116 = [v115 firstObject];
          memset(time2, 0, 24);
          CMSampleBufferGetPresentationTimeStamp(time2, v116);
          time = *time2;
          lhs = time1.duration;
          if (CMTimeCompare(&time, &lhs) < 0)
          {
            *&time1.duration.value = *time2;
            time1.duration.epoch = *&time2[16];
            v112 = v114;
          }
        }

        ++v114;
        v117 = *(a1 + 648);
      }

      while (v114 < v117);
      if (v112 < v117)
      {
        [BWFileCoordinatorNode _emitStagedBufferForIndex:a1 stoppingOrPausing:v112];
      }
    }

    v118 = v112 >= *(a1 + 648);
    v112 = *(a1 + 648);
  }

  while (!v118);
  [(BWFileCoordinatorNode *)a1 _flushPendingIrisRequestMarkerBuffers];
}

- (void)_doStoppingOrPausingWithSBuf:(unint64_t)a3 inputIndex:(uint64_t)a4 sbufPTS:
{
  if (!a1)
  {
    return;
  }

  v8 = [*(a1 + 128) objectAtIndex:?];
  if (!v8)
  {
    FigSimpleMutexUnlock();
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Could not find staging queue for given input" userInfo:0]);
  }

  v9 = v8;
  [v8 addObject:a2];
  v10 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  if (*(a1 + 696) != a3)
  {
    if (*(a1 + 672) + *(a1 + 664) <= a3)
    {
      goto LABEL_12;
    }

    if ([v9 count] != 1)
    {
      goto LABEL_12;
    }

    *&time1.duration.value = *(a1 + 328);
    time1.duration.epoch = *(a1 + 344);
    *&time2.duration.value = *a4;
    time2.duration.epoch = *(a4 + 16);
    if ((CMTimeCompare(&time1.duration, &time2.duration) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    v11 = *(a4 + 16);
    *(a1 + 328) = *a4;
    *(a1 + 344) = v11;
LABEL_11:
    v12 = [*(a1 + 128) objectAtIndex:*(a1 + 696)];
    v13 = a1 + 400;
    if (*(a1 + 412))
    {
      v22 = v12;
      v23 = MEMORY[0x1E6960C70];
      do
      {
        *&time1.duration.value = *(a1 + 328);
        time1.duration.epoch = *(a1 + 344);
        *&time2.duration.value = *v13;
        time2.duration.epoch = *(v13 + 16);
        if (CMTimeCompare(&time1.duration, &time2.duration) < 1)
        {
          break;
        }

        [BWFileCoordinatorNode _emitStagedBufferForIndex:a1 stoppingOrPausing:*(a1 + 696)];
        v24 = (a1 + 400);
        if ([v22 count])
        {
          fcn_getEndingPTSOfFirstBufferInStagingQueue(v22, &time1.duration);
          *v24 = *&time1.duration.value;
          *(a1 + 416) = time1.duration.epoch;
        }

        else
        {
          *v24 = *v23;
          *(a1 + 416) = *(v23 + 16);
        }

        v13 = a1 + 400;
      }

      while ((*(a1 + 412) & 1) != 0);
    }

    goto LABEL_12;
  }

  if ((*(a1 + 412) & 1) == 0)
  {
    fcn_getEndingPTSOfFirstBufferInStagingQueue(v9, &time1.duration);
    *(a1 + 400) = *&time1.duration.value;
    *(a1 + 416) = time1.duration.epoch;
    if (*(a1 + 412))
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  if (*(a1 + 412))
  {
    if (*(a1 + 720) == 1 && [objc_msgSend(*(a1 + 128) objectAtIndexedSubscript:{1), "count"}])
    {
      *(a1 + 612) = 1;
    }

    if (*(a1 + 612) == 1)
    {
      v14 = [*(a1 + 128) objectAtIndex:*(a1 + 696)];
      if ([v14 count] >= 2)
      {
        do
        {
          [v14 removeObjectAtIndex:1];
        }

        while ([v14 count] > 1);
      }
    }

    if (*(a1 + 648))
    {
      v15 = 0;
      do
      {
        if (v15 != *(a1 + 696))
        {
          v16 = [*(a1 + 128) objectAtIndex:v15];
          fcn_getEndingPTSOfFirstBufferInStagingQueue(v16, &time1.duration);
          lhs.value = time1.duration.value;
          flags = time1.duration.flags;
          lhs.timescale = time1.duration.timescale;
          if (time1.duration.flags)
          {
            epoch = time1.duration.epoch;
            do
            {
              time1.duration.value = lhs.value;
              time1.duration.timescale = lhs.timescale;
              time1.duration.flags = flags;
              time1.duration.epoch = epoch;
              *&time2.duration.value = *(a1 + 400);
              time2.duration.epoch = *(a1 + 416);
              if (CMTimeCompare(&time1.duration, &time2.duration) > 0)
              {
                break;
              }

              [BWFileCoordinatorNode _emitStagedBufferForIndex:a1 stoppingOrPausing:v15];
              fcn_getEndingPTSOfFirstBufferInStagingQueue(v16, &time1.duration);
              lhs.value = time1.duration.value;
              flags = time1.duration.flags;
              lhs.timescale = time1.duration.timescale;
              epoch = time1.duration.epoch;
            }

            while ((time1.duration.flags & 1) != 0);
          }
        }

        ++v15;
      }

      while (v15 < *(a1 + 648));
    }

    v19 = *(a1 + 664);
    v20 = *(a1 + 672);
    if (v20 + v19)
    {
      v21 = 0;
      while (1)
      {
        if (v21 != *(a1 + 696))
        {
          fcn_getEndingPTSOfFirstBufferInStagingQueue([*(a1 + 128) objectAtIndex:v21], &v62);
          if ((v62.flags & 1) == 0)
          {
            break;
          }
        }

        ++v21;
        v19 = *(a1 + 664);
        v20 = *(a1 + 672);
        if (v21 >= v20 + v19)
        {
          goto LABEL_44;
        }
      }

      v19 = *(a1 + 664);
      v20 = *(a1 + 672);
    }

    else
    {
      v21 = 0;
    }

LABEL_44:
    if (v20 + v19 == v21)
    {
      v25 = MEMORY[0x1E695E480];
      if (v19)
      {
        v28 = 0;
        allocator = *MEMORY[0x1E695E480];
        do
        {
          v29 = [*(a1 + 128) objectAtIndex:v28];
          v30 = [v29 objectAtIndexedSubscript:0];
          v31 = v30;
          if (v28 == *(a1 + 696))
          {
            memset(&time1, 0, 24);
            CMSampleBufferGetPresentationTimeStamp(&time1.duration, v30);
            *&time2.duration.value = *(a1 + 472);
            time2.duration.epoch = *(a1 + 488);
            lhs = time1.duration;
            if (CMTimeCompare(&time2.duration, &lhs))
            {
              *(a1 + 472) = *&time1.duration.value;
              *(a1 + 488) = time1.duration.epoch;
            }
          }

          else
          {
            CMSampleBufferGetDuration(&v61, v30);
            if ((v61.flags & 1) != 0 || (CMSampleBufferGetPresentationTimeStamp(&time2.duration, v31), lhs = *(a1 + 400), CMTimeSubtract(&time1.duration, &lhs, &time2.duration), CMTimeGetSeconds(&time1.duration) >= 0.002))
            {
              v60 = *(a1 + 400);
              sampleBufferOut[0] = 0;
              memset(&lhs, 0, sizeof(lhs));
              CMSampleBufferGetDuration(&lhs, v31);
              if (lhs.flags)
              {
                timingArrayEntriesNeededOut = 0;
                NumSamples = CMSampleBufferGetNumSamples(v31);
                CMSampleBufferGetSampleTimingInfoArray(v31, 0, 0, &timingArrayEntriesNeededOut);
                v32 = 0;
                if (timingArrayEntriesNeededOut == 1)
                {
                  v34 = NumSamples == 1;
                  v10 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
                  if (v34)
                  {
                    memset(&time1, 0, sizeof(time1));
                    v32 = 0;
                    if (!CMSampleBufferGetSampleTimingInfo(v31, 0, &time1))
                    {
                      time2 = time1;
                      time = v60;
                      rhs = time1.presentationTimeStamp;
                      CMTimeSubtract(&time2.duration, &time, &rhs);
                      CMSampleBufferCreateCopyWithNewTiming(allocator, v31, 1, &time2, sampleBufferOut);
                      v32 = sampleBufferOut[0];
                    }
                  }
                }

                else
                {
                  v10 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
                }
              }

              else
              {
                v32 = CFRetain(v31);
              }

              [v29 removeAllObjects];
              if (v32)
              {
                [v29 addObject:v32];
                CFRelease(v32);
              }
            }

            else
            {
              [v29 removeAllObjects];
            }
          }

          ++v28;
          v26 = *(a1 + v10[226]);
        }

        while (v28 < v26);
        v27 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
        v20 = *(a1 + 672);
        v25 = MEMORY[0x1E695E480];
      }

      else
      {
        v26 = 0;
        v27 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      }

      v35 = v20 + v26;
      if (v26 >= v20 + v26)
      {
LABEL_83:
        for (i = *(a1 + 648); v35 < i; i = *(a1 + 648))
        {
          if (v35 != *(a1 + 696))
          {
            v47 = [*(a1 + 128) objectAtIndex:v35];
            if ([v47 count])
            {
              v48 = [v47 firstObject];
              CMSampleBufferGetPresentationTimeStamp(&time2.duration, v48);
              lhs = *(a1 + 400);
              CMTimeSubtract(&time1.duration, &lhs, &time2.duration);
              if (CMTimeGetSeconds(&time1.duration) < 0.002 || (memset(&time1, 0, 24), CMSampleBufferGetDuration(&time1.duration, v48), (time1.duration.flags & 1) != 0))
              {
                [v47 removeAllObjects];
              }

              else
              {
                v49 = CFRetain(v48);
                [v47 removeAllObjects];
                if (v49)
                {
                  [v47 addObject:v49];
                  CFRelease(v49);
                }
              }
            }
          }

          ++v35;
        }

        if (i)
        {
          v55 = 0;
          v56 = *MEMORY[0x1E695E4D0];
          do
          {
            v57 = [*(a1 + 128) objectAtIndex:v55];
            if ([v57 count])
            {
              if (v55 == *(a1 + 696) && *(a1 + 721) == 1 && *(a1 + v10[226]))
              {
                v58 = [v57 firstObject];
                if (v58)
                {
                  CMSetAttachment(v58, @"FinalFrameInSequence", v56, 1u);
                }
              }

              [BWFileCoordinatorNode _emitStagedBufferForIndex:a1 stoppingOrPausing:v55];
              [v57 count];
            }

            ++v55;
          }

          while (v55 < *(a1 + 648));
        }

        [(BWFileCoordinatorNode *)a1 _flushSampleBuffersWaitingForMotionData];
        [(BWFileCoordinatorNode *)a1 _finishStoppingOrPausing:*(a1 + 616) withErrorCode:v50, v51, v52, v53, v54];
        *(a1 + 616) = 0;
        return;
      }

      v36 = *v25;
      while (v26 == *(a1 + 696))
      {
LABEL_75:
        ++v26;
        v35 = *(a1 + v27[227]) + *(a1 + v10[226]);
        if (v26 >= v35)
        {
          goto LABEL_83;
        }
      }

      v37 = [*(a1 + 128) objectAtIndex:v26];
      v38 = [v37 firstObject];
      v60 = *(a1 + 400);
      timingArrayEntriesNeededOut = 0;
      sampleBufferOut[0] = 0;
      v39 = CMSampleBufferGetNumSamples(v38);
      CMSampleBufferGetSampleTimingInfoArray(v38, 0, 0, &timingArrayEntriesNeededOut);
      if (timingArrayEntriesNeededOut != 1)
      {
        goto LABEL_73;
      }

      if (v39 <= 1)
      {
        goto LABEL_73;
      }

      memset(&time1, 0, sizeof(time1));
      if (CMSampleBufferGetSampleTimingInfo(v38, 0, &time1))
      {
        goto LABEL_73;
      }

      memset(&time2, 0, 24);
      CMSampleBufferGetPresentationTimeStamp(&time2.duration, v38);
      FormatDescription = CMSampleBufferGetFormatDescription(v38);
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription);
      mSampleRate = StreamBasicDescription->mSampleRate;
      time = time2.duration;
      CMTimeConvertScale(&lhs, &time, mSampleRate, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      time2.duration = lhs;
      v43 = StreamBasicDescription->mSampleRate;
      lhs = v60;
      CMTimeConvertScale(&v60, &lhs, v43, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      lhs = v60;
      time = time2.duration;
      CMTimeSubtract(&rhs, &lhs, &time);
      v44.length = rhs.value;
      if (rhs.value >= v39)
      {
        v45 = CFRetain(v38);
        v10 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      }

      else
      {
        v10 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
        if (rhs.value <= 0)
        {
LABEL_73:
          [v37 removeAllObjects];
LABEL_74:
          v27 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
          goto LABEL_75;
        }

        v44.location = 0;
        CMSampleBufferCopySampleBufferForRange(v36, v38, v44, sampleBufferOut);
        v45 = sampleBufferOut[0];
      }

      [v37 removeAllObjects];
      v27 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      if (!v45)
      {
        goto LABEL_75;
      }

      [v37 addObject:v45];
      CFRelease(v45);
      goto LABEL_74;
    }
  }
}

- (void)handleDroppedSample:(id)a3 forInput:(id)a4
{
  if ((self->_recordingState & 0xFFFFFFFD) != 0)
  {
    v12 = v4;
    v13 = v5;
    if (*MEMORY[0x1E695FF58] == 1)
    {
      if (a3)
      {
        [a3 pts];
      }

      else
      {
        memset(&v10, 0, sizeof(v10));
      }

      time = v10;
      CMTimeGetSeconds(&time);
      [a4 index];
      kdebug_trace();
    }

    v9 = [a4 index];
    if (v9 == -[BWNodeInput index](self->_masterInput, "index") && ([a3 reason] == 0x1F219BEF0 || objc_msgSend(a3, "reason") == @"VideoDeviceDiscontinuity" || objc_msgSend(a3, "reason") == @"HighFrameRateAutoFocusDiscontinuity"))
    {
      ++self->_droppedFramesCountDueToISP;
    }
  }
}

- (int)startRecordingWithSettings:(id)a3 videoSettings:(id)a4 maxFrameRate:(id)a5 stopAtPTS:(id *)a6 startAfterPTS:(id *)a7
{
  var1 = a5.var1;
  var0 = a5.var0;
  FigSimpleMutexLock();
  if (self->_recordingState)
  {
    v14 = -16805;
  }

  else
  {
    self->_recordingState = 3;
    [(BWFileCoordinatorNode *)self _prepareToStartRecordingWithSettings:a3 videoSettings:a4 maxFrameRate:var0, var1];
    v14 = 0;
    v16 = *&a6->var0;
    self->_stopRecordingPTS.epoch = a6->var3;
    *&self->_stopRecordingPTS.value = v16;
    v17 = MEMORY[0x1E6960CC0];
    *&self->_stopRecordingAudioOffset.value = *MEMORY[0x1E6960CC0];
    self->_stopRecordingAudioOffset.epoch = *(v17 + 16);
    v18 = *MEMORY[0x1E6960C70];
    self->_stopRecordingObservedLastVideoPTS.epoch = *(MEMORY[0x1E6960C70] + 16);
    *&self->_stopRecordingObservedLastVideoPTS.value = v18;
    v19 = *&a7->var0;
    self->_startAfterPTS.epoch = a7->var3;
    *&self->_startAfterPTS.value = v19;
  }

  FigSimpleMutexUnlock();
  return v14;
}

- (void)cancelStartRecordingWithSettings:(id)a3
{
  FigSimpleMutexLock();
  if (self->_recordingState == 3)
  {
    v5 = [(FigCaptureRecordingSettings *)self->_settings settingsID];
    if (v5 == [a3 settingsID])
    {
      [(BWFileCoordinatorNode *)self _releaseSettings];
      [(BWFileCoordinatorNode *)self _completeTransitionToNotRecording];
    }
  }

  FigSimpleMutexUnlock();
}

- (BOOL)updateStopPTS:(id *)a3 audioOffset:(id *)a4 previousStopPTS:(id *)a5 previousAudioOffset:(id *)a6
{
  FigSimpleMutexLock();
  if (self->_receivedFinalEnqueuedIrisReferenceRequest || (self->_recordingState | 2) != 3)
  {
    v15 = 0;
  }

  else
  {
    if (a5)
    {
      epoch = self->_stopRecordingPTS.epoch;
      *&a5->var0 = *&self->_stopRecordingPTS.value;
      a5->var3 = epoch;
    }

    if (a6)
    {
      v12 = *&self->_stopRecordingAudioOffset.value;
      a6->var3 = self->_stopRecordingAudioOffset.epoch;
      *&a6->var0 = v12;
    }

    var3 = a3->var3;
    *&self->_stopRecordingPTS.value = *&a3->var0;
    self->_stopRecordingPTS.epoch = var3;
    v14 = a4->var3;
    *&self->_stopRecordingAudioOffset.value = *&a4->var0;
    self->_stopRecordingAudioOffset.epoch = v14;
    v15 = 1;
  }

  FigSimpleMutexUnlock();
  return v15;
}

- (void)pauseRecording
{
  FigSimpleMutexLock();
  recordingState = self->_recordingState;
  if (recordingState == 1)
  {
    [(BWFileCoordinatorNode *)self pauseRecording];
  }

  else if (recordingState == 3)
  {
    [(BWFileCoordinatorNode *)self _finishStoppingOrPausing:0 withErrorCode:v3, v4, v5, v6, v7];
  }

  FigSimpleMutexUnlock();
}

- (void)resumeRecording
{
  FigSimpleMutexLock();
  if (self->_recordingState == 2)
  {
    self->_recordingState = 3;
    [(BWFileCoordinatorNode *)self _prepareToResumeRecording];
  }

  FigSimpleMutexUnlock();
}

- (void)tryToEmitFramesWaitingForMotion
{
  FigSimpleMutexLock();
  if (self->_pendingMotionDataSerialNumber)
  {
    [(BWFileCoordinatorNode *)self _emitSampleBuffersWaitingForMotionData];
  }

  FigSimpleMutexUnlock();
}

- (void)waitForRecordingToStopWithTimeout:(float)a3
{
  FigSimpleMutexLock();
  v5 = self->_recordingStoppedSemaphore;
  FigSimpleMutexUnlock();
  if (v5)
  {
    v6 = dispatch_time(0, (a3 * 1000000000.0));
    v7 = dispatch_semaphore_wait(v5, v6);
    FigSimpleMutexLock();

    self->_recordingStoppedSemaphore = 0;
    self->_haveSetupWaitingForRecordingStopState = 0;
    FigSimpleMutexUnlock();
    if (v7)
    {
      v8 = dword_1ED844310 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

uint64_t __89__BWFileCoordinatorNode__prepareToStartRecordingWithSettings_videoSettings_maxFrameRate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigSimpleMutexLock();
  if ([*(*(a1 + 32) + 144) settingsID] == a3)
  {
    v6 = *(a1 + 32) + 728;
    v7 = *(a2 + 16);
    *v6 = *a2;
    *(v6 + 16) = v7;
  }

  return FigSimpleMutexUnlock();
}

- (void)_releaseSettings
{
  if (a1)
  {

    *(a1 + 144) = 0;
    *(a1 + 176) = 0;
  }
}

- (uint64_t)_flushAllBuffersFromRecordingStagingQueues
{
  if (result)
  {
    v1 = result;
    if (dword_1ED844310)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v3 = MEMORY[0x1E6960C88];
    [(BWFileCoordinatorNode *)v1 _flushBuffersFromRecordingStagingQueuesWithPTSCutoff:1 factorInAudioDuration:?];
    return [(BWFileCoordinatorNode *)v1 _flushBuffersFromRecordingStagingQueuesWithPTSCutoff:v3 factorInAudioDuration:0];
  }

  return result;
}

- (void)_performFlushAction
{
  if (a1)
  {
    v2 = *(a1 + 152);
    [(BWFileCoordinatorNode *)a1 _flushSampleBuffersWaitingForMotionData];
    [(BWFileCoordinatorNode *)a1 _completeTransitionToNotRecording];
    [(BWFileCoordinatorNode *)a1 _emitMarkerBufferForFileWriterAction:MEMORY[0x1E6960C80] withPTS:0 settings:v2 settingsID:0 errorCode:?];
    [(BWFileCoordinatorNode *)a1 _releaseSettings];
    *(a1 + 609) = 0;
  }
}

- (void)_finishStoppingOrPausing:(uint64_t)a3 withErrorCode:(uint64_t)a4
{
  if (a1)
  {
    v8 = a3;
    v9 = a1;
    v10 = *(a1 + 196);
    v12 = v10 == 4 || v10 == 2;
    v13 = *(a1 + 152);
    if (a2)
    {
      [(BWFileCoordinatorNode *)a1 _logNumBuffersReceivedDuringStartingRecording];
      if (v10 == 3)
      {
        if (dword_1ED844310)
        {
          v14 = OUTLINED_FUNCTION_35_2();
          v15 = OUTLINED_FUNCTION_58(v14);
          if (OUTLINED_FUNCTION_5_24(v15))
          {
            OUTLINED_FUNCTION_29_1();
            OUTLINED_FUNCTION_4_4();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_13_0();
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [*(v9 + 144) isIrisRecording])
        {
          v17 = [(BWFileCoordinatorNode *)v9 _irisMovieInfosFromPendingIrisRequestMarkerBuffers];
          v18 = 0;
        }

        else
        {
          v18 = *(v9 + 144);
          v17 = 0;
        }

        [(BWFileCoordinatorNode *)v9 _clearPendingIrisRequestMarkerBuffers];
        if (*(v9 + 152))
        {
          if (dword_1ED844310)
          {
            v20 = OUTLINED_FUNCTION_35_2();
            v21 = OUTLINED_FUNCTION_58(v20);
            if (OUTLINED_FUNCTION_5_24(v21))
            {
              OUTLINED_FUNCTION_29_1();
              OUTLINED_FUNCTION_4_4();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            OUTLINED_FUNCTION_13_0();
          }

          v22 = OUTLINED_FUNCTION_2_28();
          [(BWFileCoordinatorNode *)v22 _emitMarkerBufferForFileWriterAction:v23 withPTS:v24 settings:v25 settingsID:v26 errorCode:0];
          v8 = 0;
          v12 = 1;
        }

        else
        {
          if (dword_1ED844310)
          {
            v19 = OUTLINED_FUNCTION_35_2();
            os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_2_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v8 = 4294950878;
          [*(v9 + 760) fileCoordinator:v9 stoppedBeforeStartedRecordingForSettings:v18 pendingIrisMovieInfos:v17 errorCode:4294950878];
        }
      }

      a1 = [(BWFileCoordinatorNode *)v9 _completeTransitionToNotRecording];
    }

    else
    {
      if (*(a1 + 172) == 1 && gValidPrefersNoInterruptionsByRingtonesAndAlertsToken != 0)
      {
        a1 = [(BWFileCoordinatorNode *)a1 _sendPrefersNoInterruptionsByRingtonesAndAlertsNotificationWithState:?];
      }

      *(v9 + 196) = 2;
    }

    v27 = *(v9 + 128);
    v28 = OUTLINED_FUNCTION_60_0(a1, a2, a3, a4, a5, a6, a7, a8, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, 0);
    if (v28)
    {
      v29 = v28;
      v30 = MEMORY[0];
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (MEMORY[0] != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [*(8 * i) removeAllObjects];
        }

        v29 = OUTLINED_FUNCTION_60_0(v32, v33, v34, v35, v36, v37, v38, v39, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v85);
      }

      while (v29);
    }

    [*(v9 + 776) removeAllObjects];
    *(v9 + 792) = 0;
    *(v9 + 800) = 0;
    if (v12)
    {
      v40 = OUTLINED_FUNCTION_2_28();
      [(BWFileCoordinatorNode *)v40 _emitMarkerBufferForFileWriterAction:v41 withPTS:v42 settings:v43 settingsID:v13 errorCode:v8];
      if (*(v9 + 864) == 1)
      {
        v44 = *(v9 + 856);
        if (v44)
        {
          dispatch_semaphore_signal(v44);
        }

        *(v9 + 864) = 0;
      }
    }

    else if (v10 != 3)
    {
      v45 = OUTLINED_FUNCTION_2_28();
      [(BWFileCoordinatorNode *)v45 _emitMarkerBufferForFileWriterAction:v46 withPTS:v47 settings:v48 settingsID:v13 errorCode:v8];
    }

    [(BWFileCoordinatorNode *)v9 _releaseSettings];
  }
}

- (uint64_t)_completeTransitionToNotRecording
{
  if (result)
  {
    v1 = result;
    *(result + 196) = 0;
    *(result + 152) = 0;
    *(result + 173) = 0;
    [*(result + 752) unprepareForRecording];
    if (*(v1 + 172) == 1 && gValidPrefersNoInterruptionsByRingtonesAndAlertsToken != 0)
    {
      [(BWFileCoordinatorNode *)v1 _sendPrefersNoInterruptionsByRingtonesAndAlertsNotificationWithState:?];
    }

    *(v1 + 172) = 0;
    v3 = [*(v1 + 776) removeAllObjects];
    *(v1 + 792) = 0;
    *(v1 + 800) = 0;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v4 = *(v1 + 128);
    v6 = OUTLINED_FUNCTION_37(v3, v5, &v26, v25);
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = [*(*(&v26 + 1) + 8 * i) removeAllObjects];
        }

        v7 = OUTLINED_FUNCTION_37(v10, v11, &v26, v25);
      }

      while (v7);
    }

    v12 = *(v1 + 160);
    OUTLINED_FUNCTION_43();
    v17 = OUTLINED_FUNCTION_37(v13, v14, v15, v16);
    if (v17)
    {
      v18 = v17;
      v19 = MEMORY[0];
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (MEMORY[0] != v19)
          {
            objc_enumerationMutation(v12);
          }

          [*(8 * j) removeAllObjects];
        }

        OUTLINED_FUNCTION_43();
        v18 = OUTLINED_FUNCTION_37(v21, v22, v23, v24);
      }

      while (v18);
    }

    return [(BWFileCoordinatorNode *)v1 _flushPendingIrisRequestMarkerBuffers];
  }

  return result;
}

- (void)_updateRecordingStateWithIrisMovieRequest:(uint64_t)a1
{
  if (a1)
  {
    if (a2)
    {
      [(BWFileCoordinatorNode *)a1 _flushAllBuffersFromRecordingStagingQueues];
      if ([a2 isFinalEnqueuedIrisRequest])
      {
        if (dword_1ED844310)
        {
          LODWORD(lhs.value) = 0;
          v60 = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_4_0();
          if (v2)
          {
            OUTLINED_FUNCTION_15_8(a1 + 424);
            Seconds = CMTimeGetSeconds(&time);
            v7 = [objc_msgSend(a2 "settings")];
            [OUTLINED_FUNCTION_24_2() movieEndTime];
            v8 = CMTimeGetSeconds(&time);
            [OUTLINED_FUNCTION_24_2() movieEndingVideoPTS];
            v9 = CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_15_8(a1 + 448);
            v10 = CMTimeGetSeconds(&time);
            [OUTLINED_FUNCTION_24_2() audioOffset];
            v11 = CMTimeGetSeconds(&time);
            v12 = fcn_stringForRecordingState(*(a1 + 196));
            LODWORD(rhs.value) = 136317442;
            *(&rhs.value + 4) = "[BWFileCoordinatorNode _updateRecordingStateWithIrisMovieRequest:]";
            LOWORD(rhs.flags) = 2048;
            *(&rhs.flags + 2) = a1;
            HIWORD(rhs.epoch) = 2048;
            v54 = *&Seconds;
            *v55 = 2048;
            *&v55[2] = v7;
            *&v55[10] = 2048;
            *&v55[12] = v8;
            *&v55[20] = 2048;
            *&v55[22] = v9;
            *&v55[30] = 2048;
            v56 = *&v10;
            *v57 = 2048;
            *&v57[2] = v11;
            *&v57[10] = 2112;
            *&v57[12] = v12;
            *&v57[20] = 2112;
            *&v57[22] = a2;
            LODWORD(v46) = 102;
            p_rhs = &rhs;
            OUTLINED_FUNCTION_4_4();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_39_0();
        }

        [a2 movieEndingVideoPTS];
        if ((v51 & 0x100000000) != 0)
        {
          v13 = [OUTLINED_FUNCTION_24_2() movieEndingVideoPTS];
        }

        else
        {
          v13 = [OUTLINED_FUNCTION_24_2() movieEndTime];
        }

        OUTLINED_FUNCTION_18_6(v13, v14, v15, v16, v17, v18, v19, v20, v43, v46, lhs.value, *&lhs.timescale, lhs.epoch, v50, v51, v52, rhs.value, *&rhs.timescale, rhs.epoch, v54, *v55, *&v55[8], *&v55[16], *&v55[24], v56, *v57, *&v57[8], *&v57[16], *&v57[24], v58, v21, time.value);
        CMTimeMake(&rhs, 5, 1000);
        lhs = *(a1 + 424);
        v22 = CMTimeSubtract(&time, &lhs, &rhs);
        OUTLINED_FUNCTION_18_6(v22, v23, v24, v25, v26, v27, v28, v29, v44, v47, lhs.value, *&lhs.timescale, lhs.epoch, v50, v51, v52, rhs.value, *&rhs.timescale, rhs.epoch, v54, *v55, *&v55[8], *&v55[16], *&v55[24], v56, *v57, *&v57[8], *&v57[16], *&v57[24], v58, v30, time.value);
        v31 = [OUTLINED_FUNCTION_24_2() audioOffset];
        OUTLINED_FUNCTION_18_6(v31, v32, v33, v34, v35, v36, v37, v38, v45, v48, lhs.value, *&lhs.timescale, lhs.epoch, v50, v51, v52, rhs.value, *&rhs.timescale, rhs.epoch, v54, *v55, *&v55[8], *&v55[16], *&v55[24], v56, *v57, *&v57[8], *&v57[16], *&v57[24], v58, v39, time.value);
        OUTLINED_FUNCTION_32_1();
        if (v41)
        {
          OUTLINED_FUNCTION_15_8(v40);
          OUTLINED_FUNCTION_43_2(MEMORY[0x1E6960CC0]);
          if (CMTimeCompare(&time, &rhs) >= 1)
          {
            OUTLINED_FUNCTION_21_4(609);
          }
        }

        OUTLINED_FUNCTION_21_4(809);
      }
    }

    else
    {
      FigDebugAssert3();
    }
  }
}

- (uint64_t)_handleIrisMovieRequest:(uint64_t)a3 input:(uint64_t)a4 sbuf:
{
  if (result)
  {
    v4 = result;
    if (*(result + 8) == a3)
    {
      [(BWFileCoordinatorNode *)result _updateRecordingStateWithIrisMovieRequest:a2];
      if (dword_1ED844310)
      {
        v6 = OUTLINED_FUNCTION_25_2();
        if (os_log_type_enabled(v6, v8))
        {
          v7 = v9;
        }

        else
        {
          v7 = v9 & 0xFFFFFFFE;
        }

        if (v7)
        {
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0();
      }

      return [*(v4 + 16) emitSampleBuffer:a4];
    }
  }

  return result;
}

- (void)_ensureLuxMetadata:(uint64_t)a3 forNodeInputIndex:
{
  if (a1)
  {
    v5 = CMGetAttachment(target, *off_1E798A3C8, 0);
    if (v5)
    {
      v6 = v5;
      v7 = [v5 objectForKeyedSubscript:*off_1E798B4B8];
      v8 = *(*(a1 + 848) + 8 * a3);
      if (v7)
      {
        v9 = v7;

        *(*(a1 + 848) + 8 * a3) = v9;
        *(*(a1 + 840) + 4 * a3) = 0;
      }

      else if (v8)
      {
        if (++*(*(a1 + 840) + 4 * a3) >= *(a1 + 832))
        {

          *(*(a1 + 848) + 8 * a3) = 0;
        }

        else
        {

          [v6 setObject:? forKeyedSubscript:?];
        }
      }
    }
  }
}

- (unint64_t)_flushEligibleBuffersFromRecordingStagingQueues
{
  if (result)
  {
    v1 = result;
    result = [objc_msgSend(*(result + 160) objectAtIndexedSubscript:{*(result + 696)), "count"}];
    if (result >= 3)
    {
      do
      {
        v2 = [OUTLINED_FUNCTION_22_2() objectAtIndexedSubscript:2];
        memset(&v31, 0, sizeof(v31));
        CMSampleBufferGetPresentationTimeStamp(&v31, v2);
        v3 = *(v1 + 664);
        v4 = *(v1 + 672) + v3;
        while (v3 < v4)
        {
          if (![objc_msgSend(*(v1 + 160) objectAtIndexedSubscript:{v3), "lastObject"}] || (OUTLINED_FUNCTION_11_14(), PresentationTimeStamp = CMSampleBufferGetPresentationTimeStamp(v6, v5), OUTLINED_FUNCTION_16_4(PresentationTimeStamp, v8, v9, v10, v11, v12, v13, v14, v26.value, *&v26.timescale, v26.epoch, v27, time1.value, *&time1.timescale, time1.epoch, v29, v30), OUTLINED_FUNCTION_53_3(), CMTimeCompare(&time1, &v26) < 0))
          {
            v15 = 0;
            goto LABEL_9;
          }

          ++v3;
          OUTLINED_FUNCTION_48_2();
        }

        v15 = 1;
        [OUTLINED_FUNCTION_22_2() objectAtIndexedSubscript:1];
        OUTLINED_FUNCTION_11_14();
        v18 = CMSampleBufferGetPresentationTimeStamp(v17, v16);
        OUTLINED_FUNCTION_16_4(v18, v19, v20, v21, v22, v23, v24, v25, v26.value, *&v26.timescale, v26.epoch, v27, time1.value, *&time1.timescale, time1.epoch, v29, v30);
        [(BWFileCoordinatorNode *)v1 _flushBuffersFromRecordingStagingQueuesWithPTSCutoff:1 factorInAudioDuration:?];
LABEL_9:
        result = [OUTLINED_FUNCTION_22_2() count];
      }

      while (v15 && result > 2);
    }
  }

  return result;
}

- (void)_renderSampleBuffer:(void *)a3 forInput:
{
  if (!a1)
  {
    return;
  }

  v5 = [a3 index];
  v105 = [objc_msgSend(a1 "outputs")];
  if (*(a1 + 173) == 1 && (*(a1 + 174) & 1) == 0 && (*(a1 + 609) & 1) == 0)
  {
    OUTLINED_FUNCTION_41_2();
    if (v5 == v6 && [objc_msgSend(CMGetAttachment(a2 *off_1E798A3C8] >= 1)
    {
      OUTLINED_FUNCTION_21_4(609);
    }
  }

  memset(&v123, 0, sizeof(v123));
  CMSampleBufferGetPresentationTimeStamp(&v123, a2);
  OUTLINED_FUNCTION_41_2();
  if ((v5 == v7 || v5 == *(a1 + 704)) && *(a1 + 196) == 1)
  {
    OUTLINED_FUNCTION_32_1();
    if (v9)
    {
      time1 = *v8;
      OUTLINED_FUNCTION_40_3();
      if (CMTimeCompare(&time1, &time2) <= 0)
      {
        OUTLINED_FUNCTION_41_2();
        v10 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
        if (v5 == v11)
        {
          OUTLINED_FUNCTION_32_1();
          if ((v13 & 1) == 0)
          {
            *v12 = v123;
          }
        }

        if (*(a1 + 173) != 1 || (*(a1 + 174) & 1) != 0)
        {
          goto LABEL_36;
        }

        if ((*(a1 + v10[257] + 12) & 1) == 0)
        {
          goto LABEL_47;
        }

        v14 = v10;
        if (CMSampleBufferGetImageBuffer(a2))
        {
          OUTLINED_FUNCTION_1_34(v14[257]);
        }

        else
        {
          CMSampleBufferGetDataBuffer(a2);
          OUTLINED_FUNCTION_1_34(v14[257]);
          if (!v15)
          {
            OUTLINED_FUNCTION_41_2();
            if (v5 != v56)
            {
              goto LABEL_47;
            }

            goto LABEL_36;
          }
        }

        OUTLINED_FUNCTION_32_1();
        if ((v17 & 1) != 0 && *(a1 + 609) == 1)
        {
          time2 = time1;
          rhs = *v16;
          CMTimeAdd(&time1, &time2, &rhs);
          OUTLINED_FUNCTION_32_1();
          if (v19)
          {
            rhs = time1;
            OUTLINED_FUNCTION_42_2(v18);
            CMTimeAdd(&time2, &rhs, &v121);
          }
        }

        OUTLINED_FUNCTION_6_3(a1 + 352);
        if (v5 == *(a1 + 704))
        {
          CMTimeMake(&v121, 1, 10000);
          lhs = v123;
          v20 = CMTimeAdd(&rhs, &lhs, &v121);
          OUTLINED_FUNCTION_55_1(v20, v21, v22, v23, v24, v25, v26, v27, v99, v101, v103, v105, v28, time2.value);
          if (CMTimeCompare(&v121, &rhs) <= 0)
          {
            OUTLINED_FUNCTION_40_3();
            memset(&rhs, 0, sizeof(rhs));
            Duration = CMSampleBufferGetDuration(&rhs, a2);
            if (rhs.flags)
            {
              OUTLINED_FUNCTION_55_1(Duration, v30, v31, v32, v33, v34, v35, v36, v99, v101, v103, v105, v37, time2.value);
              lhs = rhs;
              CMTimeAdd(&time2, &v121, &lhs);
            }
          }
        }

        OUTLINED_FUNCTION_33();
        if (!v84 || (OUTLINED_FUNCTION_56_2(v38, v39, v40, v41, v42, v43, v44, v45, v99, v101, v103, v105, v46, time2.value), OUTLINED_FUNCTION_42_2(MEMORY[0x1E6960C80]), v47 = CMTimeCompare(&rhs, &v121), v47 <= 0) || (OUTLINED_FUNCTION_56_2(v47, v48, v49, v50, v51, v52, v53, v54, v100, v102, v104, v106, v55, time2.value), v121 = time1, (CMTimeCompare(&rhs, &v121) & 0x80000000) == 0))
        {
LABEL_36:
          OUTLINED_FUNCTION_33();
          if (v84)
          {
            v58 = OUTLINED_FUNCTION_8_17();
            v60 = v59;
            [BWFileCoordinatorNode _emitOrQueueSampleBuffer:v58 forInput:v61 toOutput:v62 stoppingOrPausing:v63];
            v57 = v60;
          }

          if (dword_1ED844310)
          {
            v64 = v57;
            LODWORD(rhs.value) = 0;
            LOBYTE(v121.value) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            value = rhs.value;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v121.value))
            {
              v67 = value;
            }

            else
            {
              v67 = value & 0xFFFFFFFE;
            }

            if (v67)
            {
              v68 = *(a1 + 152);
              v69 = fcn_stringForRecordingState(*(a1 + 196));
              time1 = v123;
              Seconds = CMTimeGetSeconds(&time1);
              OUTLINED_FUNCTION_1_34(*(v64 + 1028));
              v71 = CMTimeGetSeconds(&time1);
              OUTLINED_FUNCTION_1_34(424);
              v72 = CMTimeGetSeconds(&time1);
              OUTLINED_FUNCTION_1_34(448);
              CMTimeGetSeconds(&time1);
              LODWORD(time2.value) = 136316930;
              OUTLINED_FUNCTION_47_4();
              HIWORD(time2.epoch) = v73;
              v108 = v68;
              v109 = 2112;
              v110 = v69;
              v111 = v73;
              v112 = Seconds;
              v113 = v73;
              v114 = v71;
              v115 = v73;
              v116 = v72;
              v117 = v73;
              v118 = v74;
              OUTLINED_FUNCTION_13();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [(BWFileCoordinatorNode *)a1 _stopRecordingWithErrorCode:?];
        }
      }
    }
  }

LABEL_47:
  v75 = *(a1 + 196);
  if ((v75 - 4) < 2)
  {
    OUTLINED_FUNCTION_48_2();
    if (v5 < v79 || (time1 = v123, OUTLINED_FUNCTION_6_3(a1 + 304), CMTimeCompare(&time1, &time2) >= 1))
    {
      v80 = OUTLINED_FUNCTION_3_21();
      [(BWFileCoordinatorNode *)v80 _doStoppingOrPausingWithSBuf:v81 inputIndex:v5 sbufPTS:v82];
    }
  }

  else
  {
    if (v75 != 1)
    {
      if (v75 == 3)
      {
        v76 = OUTLINED_FUNCTION_3_21();
        [(BWFileCoordinatorNode *)v76 _doStartingToRecordWithSBuf:v77 inputIndex:v5 sbufPTS:v78];
      }

      return;
    }

    OUTLINED_FUNCTION_48_2();
    if (v5 >= v83)
    {
      time1 = v123;
      OUTLINED_FUNCTION_6_3(a1 + 304);
      if (CMTimeCompare(&time1, &time2) < 1)
      {
        return;
      }

LABEL_63:
      v85 = OUTLINED_FUNCTION_8_17();
      [BWFileCoordinatorNode _emitOrQueueSampleBuffer:v85 forInput:v86 toOutput:v87 stoppingOrPausing:v88];
      return;
    }

    OUTLINED_FUNCTION_33();
    v84 = v84 && v5 == 1;
    if (!v84 || (*(a1 + 613) & 1) != 0)
    {
      goto LABEL_63;
    }

    v89 = OUTLINED_FUNCTION_3_21();
    v93 = [(BWFileCoordinatorNode *)v89 _copyFirstValidLowLatencyAudioBuffer:v90 inputIndex:v91 sbufPTS:v92];
    if (v93)
    {
      v94 = v93;
      v95 = OUTLINED_FUNCTION_8_17();
      [BWFileCoordinatorNode _emitOrQueueSampleBuffer:v95 forInput:v96 toOutput:v97 stoppingOrPausing:v98];
      CFRelease(v94);
    }
  }
}

- (uint64_t)_flushBuffersFromRecordingStagingQueuesWithPTSCutoff:(int)a3 factorInAudioDuration:
{
  if (result)
  {
    v5 = result;
    v24 = 0;
    OUTLINED_FUNCTION_11_14();
    for (result = [(BWFileCoordinatorNode *)v6 _earliestPTSStagedForRecording:v7 factorInAudioDuration:v8]; (BYTE12(v23) & 1) != 0; result = [(BWFileCoordinatorNode *)v5 _earliestPTSStagedForRecording:a3 factorInAudioDuration:v18])
    {
      OUTLINED_FUNCTION_16_4(result, v9, v10, v11, v12, v13, v14, v15, v19.value, *&v19.timescale, v19.epoch, v20, time1.value, *&time1.timescale, time1.epoch, v22, v23);
      v19 = *a2;
      result = CMTimeCompare(&time1, &v19);
      if ((result & 0x80000000) == 0)
      {
        break;
      }

      v16 = v24;
      v17 = CFRetain([objc_msgSend(v5[20] objectAtIndexedSubscript:{v24), "firstObject"}]);
      [objc_msgSend(v5[20] objectAtIndexedSubscript:{v16), "removeObjectAtIndex:", 0}];
      -[BWFileCoordinatorNode _renderSampleBuffer:forInput:](v5, v17, [objc_msgSend(v5 "inputs")]);
      CFRelease(v17);
      v24 = 0;
      OUTLINED_FUNCTION_11_14();
    }
  }

  return result;
}

- (void)_emitOrQueueSampleBuffer:(uint64_t)a1 forInput:(CMSampleBufferRef)sbuf toOutput:(void *)a3 stoppingOrPausing:(uint64_t)a4
{
  if (a1)
  {
    v8 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    if (*(a1 + 792))
    {
      [(BWFileCoordinatorNode *)a1 _emitSampleBuffersWaitingForMotionData];
    }

    sampleBufferOut = 0;
    if (*(a1 + 220))
    {
      timingArrayEntriesNeededOut.value = 0;
      SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(sbuf, 0, 0, &timingArrayEntriesNeededOut.value);
      if (timingArrayEntriesNeededOut.value >= 1)
      {
        MEMORY[0x1EEE9AC00](SampleTimingInfoArray);
        v12 = (v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
        if (!CMSampleBufferGetSampleTimingInfoArray(sbuf, timingArrayEntriesNeededOut.value, v12, 0))
        {
          v65[1] = a4;
          if (timingArrayEntriesNeededOut.value >= 1)
          {
            v13 = 0;
            p_timescale = &v12->presentationTimeStamp.timescale;
            do
            {
              if (p_timescale[1])
              {
                v15 = *p_timescale;
                time2 = *(p_timescale - 2);
                OUTLINED_FUNCTION_14_6((a1 + 208));
                v16 = OUTLINED_FUNCTION_51_1();
                CMTimeSubtract(v18, v16, v17);
                OUTLINED_FUNCTION_50_1();
                if (*p_timescale != v15)
                {
                  *&time2.value = *(p_timescale - 2);
                  OUTLINED_FUNCTION_36_3(*(p_timescale + 1));
                  OUTLINED_FUNCTION_50_1();
                }
              }

              if (p_timescale[7])
              {
                v19 = p_timescale[6];
                time2 = *(p_timescale + 4);
                OUTLINED_FUNCTION_14_6((a1 + 208));
                v20 = OUTLINED_FUNCTION_51_1();
                CMTimeSubtract(v22, v20, v21);
                OUTLINED_FUNCTION_49_1();
                if (p_timescale[6] != v19)
                {
                  *&time2.value = *(p_timescale + 1);
                  OUTLINED_FUNCTION_36_3(*(p_timescale + 4));
                  OUTLINED_FUNCTION_49_1();
                }
              }

              ++v13;
              p_timescale += 18;
            }

            while (v13 < timingArrayEntriesNeededOut.value);
          }

          v23 = CFGetAllocator(sbuf);
          CMSampleBufferCreateCopyWithNewTiming(v23, sbuf, timingArrayEntriesNeededOut.value, v12, &sampleBufferOut);
        }

        v8 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
      }
    }

    else
    {
      if (sbuf)
      {
        v9 = CFRetain(sbuf);
      }

      else
      {
        v9 = 0;
      }

      sampleBufferOut = v9;
    }

    if (*(a1 + 200) != a3)
    {
      if ([a3 index] < *(a1 + 664))
      {
        goto LABEL_41;
      }

      v24 = OUTLINED_FUNCTION_52_2();
      CMSampleBufferGetPresentationTimeStamp(v25, v24);
      value = time1.value;
      flags = time1.flags;
      timescale = time1.timescale;
      epoch = time1.epoch;
      if ([a3 index] >= *(a1 + 672) + *(a1 + 664))
      {
        time1 = *(a1 + 376);
        time2.value = value;
        time2.timescale = timescale;
        time2.flags = flags;
        time2.epoch = epoch;
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          goto LABEL_41;
        }

        OUTLINED_FUNCTION_17_5(376);
        goto LABEL_36;
      }

      v66 = value;
      v67 = timescale;
      memset(&time1, 0, sizeof(time1));
      v28 = OUTLINED_FUNCTION_52_2();
      CMSampleBufferGetDuration(v29, v28);
      if (time1.flags)
      {
        v71 = value;
        v72 = timescale;
        v73 = flags;
        v74 = epoch;
        timingArrayEntriesNeededOut = time1;
        v30 = OUTLINED_FUNCTION_26_1();
        CMTimeAdd(v32, v30, v31);
        v66 = time2.value;
        flags = time2.flags;
        v67 = time2.timescale;
        epoch = time2.epoch;
      }

      time2 = *(a1 + 352);
      v71 = v66;
      v72 = v67;
      v73 = flags;
      v74 = epoch;
      v33 = OUTLINED_FUNCTION_51_1();
      if (CMTimeCompare(v33, v34) < 0)
      {
        v35 = a1 + 352;
        *(a1 + 352) = v66;
        v36 = v67;
LABEL_36:
        *(v35 + 8) = v36;
        *(v35 + 12) = flags;
        *(v35 + 16) = epoch;
      }

LABEL_41:
      if (!sampleBufferOut)
      {
        return;
      }

      if (*(a1 + 200) == a3 && *(a1 + 768))
      {
        if (*(a1 + v8[267]))
        {
          [*(a1 + 776) addObject:?];
          v59 = sampleBufferOut;
          if (!sampleBufferOut)
          {
            return;
          }

LABEL_55:
          CFRelease(v59);
          return;
        }

        v60 = [objc_msgSend(CMGetAttachment(sampleBufferOut *off_1E798A3C8];
        if (v60)
        {
          v61 = v60;
          v62 = [*(a1 + 768) copyMotionDataForSerialNumber:*(a1 + 784) + v60];
          if (v62)
          {
            v64 = v62;
            [(BWFileCoordinatorNode *)a1 _addLookAheadMotionDataToMetadataForSampleBuffer:v62 lookAheadMotionData:?];
          }

          else
          {
            [*(a1 + 776) addObject:sampleBufferOut];
            if (sampleBufferOut)
            {
              CFRelease(sampleBufferOut);
              sampleBufferOut = 0;
            }

            *(a1 + v8[267]) = v61;
          }
        }
      }

      if (!sampleBufferOut)
      {
        return;
      }

      [BWFileCoordinatorNode _emitSampleBuffer:a1 forInput:? toOutput:?];
      v59 = sampleBufferOut;
      goto LABEL_55;
    }

    v37 = OUTLINED_FUNCTION_52_2();
    CMSampleBufferGetPresentationTimeStamp(v38, v37);
    value = time1.value;
    v39 = time1.flags;
    timescale = time1.timescale;
    if ((time1.flags & 1) == 0)
    {
      goto LABEL_41;
    }

    v40 = time1.epoch;
    memset(&time1, 0, sizeof(time1));
    v41 = OUTLINED_FUNCTION_52_2();
    CMSampleBufferGetDuration(v42, v41);
    if (time1.flags)
    {
      v51 = *&time1.value;
      *(a1 + 256) = *&time1.value;
      v52 = time1.epoch;
      *(a1 + 272) = time1.epoch;
      v47 = a1 + 280;
      v71 = value;
      v72 = timescale;
      v73 = v39;
      v74 = v40;
      *&timingArrayEntriesNeededOut.value = v51;
      timingArrayEntriesNeededOut.epoch = v52;
      v53 = OUTLINED_FUNCTION_26_1();
      CMTimeAdd(v55, v53, v54);
    }

    else
    {
      OUTLINED_FUNCTION_17_5(280);
      *(v43 + 8) = v44;
      *(v43 + 12) = v39;
      *(v43 + 16) = v40;
      if ((*(a1 + 244) & 1) == 0)
      {
LABEL_40:
        OUTLINED_FUNCTION_17_5(232);
        *(v57 + 8) = v58;
        *(v57 + 12) = v39;
        *(v57 + 16) = v40;
        goto LABEL_41;
      }

      time2.value = value;
      time2.timescale = timescale;
      time2.flags = v39;
      time2.epoch = v40;
      OUTLINED_FUNCTION_14_6((a1 + 232));
      v45 = OUTLINED_FUNCTION_51_1();
      v47 = a1 + 256;
      if (CMTimeCompare(v45, v46) < 1)
      {
        v63 = MEMORY[0x1E6960C70];
        *v47 = *MEMORY[0x1E6960C70];
        v56 = *(v63 + 16);
        goto LABEL_39;
      }

      v71 = value;
      v72 = timescale;
      v73 = v39;
      v74 = v40;
      timingArrayEntriesNeededOut = *(a1 + 232);
      v48 = OUTLINED_FUNCTION_26_1();
      CMTimeSubtract(v50, v48, v49);
    }

    *v47 = *&time2.value;
    v56 = time2.epoch;
LABEL_39:
    *(v47 + 16) = v56;
    goto LABEL_40;
  }
}

- (void)_stopRecordingWithErrorCode:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 196);
    if (v4 == 3)
    {
      v18 = OUTLINED_FUNCTION_45();
      [(BWFileCoordinatorNode *)v18 _finishStoppingOrPausing:v19 withErrorCode:a2, v20, v21, v22, v23, v24];
      v4 = *(a1 + 196);
    }

    switch(v4)
    {
      case 5:
        *(a1 + 616) = a2;
        *(a1 + 196) = 4;
        break;
      case 1:
        *(a1 + 616) = a2;
        OUTLINED_FUNCTION_19_1((a1 + 400));
        v25 = OUTLINED_FUNCTION_34_2((a1 + 328));
        *(a1 + 612) = 0;
        *(a1 + 196) = 4;
        [(BWFileCoordinatorNode *)a1 _flushAllBuffersFromRecordingStagingQueues];
        OUTLINED_FUNCTION_33();
        if (v26)
        {

          [(BWFileCoordinatorNode *)a1 _performFlushAction];
        }

        break;
      case 2:
        v5 = OUTLINED_FUNCTION_20_3();
        [(BWFileCoordinatorNode *)v5 _emitMarkerBufferForFileWriterAction:v6 withPTS:v7 settings:v8 settingsID:v9 errorCode:v10];
        v11 = OUTLINED_FUNCTION_45();

        [(BWFileCoordinatorNode *)v11 _finishStoppingOrPausing:v12 withErrorCode:a2, v13, v14, v15, v16, v17];
        break;
    }
  }
}

- (opaqueCMSampleBuffer)_copyFirstValidLowLatencyAudioBuffer:(uint64_t)a3 inputIndex:(CMTime *)a4 sbufPTS:
{
  if (!a1)
  {
    return 0;
  }

  v7 = MEMORY[0x1E6960C70];
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  memset(&v16, 0, sizeof(v16));
  CMSampleBufferGetDuration(&v16, sbuf);
  if (v16.flags)
  {
    CMSampleBufferGetPresentationTimeStamp(&lhs, sbuf);
    OUTLINED_FUNCTION_53_3();
    CMTimeAdd(&time1, &lhs, &v13);
    value = time1.value;
    flags = time1.flags;
    timescale = time1.timescale;
    epoch = time1.epoch;
    if ((time1.flags & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    flags = *(v7 + 12);
    epoch = *(v7 + 16);
    if ((flags & 1) == 0)
    {
      return 0;
    }
  }

  time1.value = value;
  time1.timescale = timescale;
  time1.flags = flags;
  time1.epoch = epoch;
  lhs = *(a1 + 304);
  if (CMTimeCompare(&time1, &lhs) < 1)
  {
    return 0;
  }

  *(a1 + 613) = 1;
  time1 = *a4;
  OUTLINED_FUNCTION_6_3(a1 + 304);
  if ((CMTimeCompare(&time1, &lhs) & 0x80000000) == 0)
  {
    return CFRetain(sbuf);
  }

  OUTLINED_FUNCTION_43_2(a1 + 304);
  started = fcn_createAudioBufferTrimmedToStartTime(sbuf, &time1);
  if (started)
  {
    OUTLINED_FUNCTION_11_14();
    CMSampleBufferGetPresentationTimeStamp(v12, started);
  }

  return started;
}

- (void)_prepareToStartRecordingWithSettings:(void *)a3 videoSettings:(uint64_t)a4 maxFrameRate:(int)a5
{
  if (!a1)
  {
    return;
  }

  v10 = MEMORY[0x1E6960C70];
  v11 = *MEMORY[0x1E6960C70];
  *(a1 + 280) = *MEMORY[0x1E6960C70];
  v12 = *(v10 + 16);
  *(a1 + 296) = v12;
  *(a1 + 424) = v11;
  *(a1 + 440) = v12;
  *(a1 + 256) = v11;
  *(a1 + 272) = v12;
  *(a1 + 232) = v11;
  *(a1 + 248) = v12;
  *(a1 + 208) = v11;
  *(a1 + 224) = v12;
  v13 = OUTLINED_FUNCTION_19_1((a1 + 352));
  *(v14 + 376) = v13;
  *(v14 + 392) = v15;
  *(v14 + 609) = 0;
  *(v14 + 512) = v12;
  *(v14 + 496) = v16;
  *(v14 + 536) = v12;
  *(v14 + 520) = v16;
  *(v14 + 560) = v12;
  v32 = v16;
  *(v14 + 544) = v16;
  *(v14 + 568) = 0;
  *(v14 + 608) = 0;
  *(v14 + 576) = 0;
  *(v14 + 592) = -1;
  *(v14 + 596) = -1;
  *(v14 + 600) = 0;
  *(v14 + 604) = 0;
  *(v14 + 809) = 0;
  *(v14 + 723) = 0;
  *(v14 + 724) = 0;
  *(v14 + 725) = 0;

  *(a1 + 144) = a2;
  *(a1 + 176) = a3;

  *(a1 + 824) = 0;
  *(a1 + 184) = a4;
  *(a1 + 192) = a5;
  *(a1 + 816) = 0;
  [(BWFileCoordinatorNode *)a1 _prepareToResumeRecording];
  *(a1 + 172) = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(a1 + 664))
    {
      v17 = *(a1 + 144);
      if ([v17 isIrisRecording] && (!objc_msgSend(v17, "isIrisRecording") || !objc_msgSend(v17, "isIrisMovieRecording")))
      {
        goto LABEL_10;
      }
    }

    else if (!*(a1 + 672))
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_21_4(172);
  }

LABEL_10:
  OUTLINED_FUNCTION_33();
  if (v18 && gValidPrefersNoInterruptionsByRingtonesAndAlertsToken)
  {
    v30 = OUTLINED_FUNCTION_45();
    [(BWFileCoordinatorNode *)v30 _sendPrefersNoInterruptionsByRingtonesAndAlertsNotificationWithState:v31];
  }

  *(a1 + 728) = v32;
  *(a1 + 744) = v12;
  if (*(a1 + 752))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [a2 videoOrientation];
    }

    else
    {
      v19 = 0;
    }

    v20 = *(a1 + 752);
    v21 = [*(a1 + 144) settingsID];
    v22 = *(a1 + 172);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __89__BWFileCoordinatorNode__prepareToStartRecordingWithSettings_videoSettings_maxFrameRate___block_invoke;
    v35[3] = &unk_1E7990928;
    v35[4] = a1;
    [v20 prepareToStartRecordingWithOrientation:v19 recordingSettingsID:v21 prefersNoInterruptionsByRingtonesAndAlerts:v22 completionHandler:v35];
  }

  else
  {
    OUTLINED_FUNCTION_19_1((a1 + 728));
  }

  if (*(a1 + 176))
  {
    cf = 0;
    memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
    if (!OUTLINED_FUNCTION_7_17(*MEMORY[0x1E695E480], v23, v24, v25, v26, v27, v28, v29, &__dst, 0, 0, &cf))
    {
      CMSetAttachment(cf, @"RecordingVideoSettings", *(a1 + 176), 1u);
      CMSetAttachment(cf, @"FileWriterAction", @"Prewarm", 1u);
      [(BWFileCoordinatorNode *)a1 _emitMarkerBufferCopyOnAllOutputs:?];
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

- (void)stopRecordingWithErrorCode:(int)a3 setupToAllowWaitingForRecordingToStop:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  FigSimpleMutexLock();
  if (v4)
  {
    [(BWFileCoordinatorNode *)&self->super.super _setupStateForWaitingForRecordingStop];
  }

  [(BWFileCoordinatorNode *)self _stopRecordingWithErrorCode:v5];

  FigSimpleMutexUnlock();
}

- (dispatch_semaphore_t)_setupStateForWaitingForRecordingStop
{
  if (result)
  {
    v1 = result;
    if (HIDWORD(result[24].isa) == 1)
    {
      if ((result[108].isa & 1) == 0 && !result[107].isa)
      {
        OUTLINED_FUNCTION_21_4(864);
        result = dispatch_semaphore_create(0);
        v1[107].isa = result;
      }
    }

    else if (dword_1ED844310)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_2_4();
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

- (void)_prepareToResumeRecording
{
  if (a1)
  {
    v2 = MEMORY[0x1E6960C70];
    v12 = *MEMORY[0x1E6960C70];
    *(a1 + 304) = *MEMORY[0x1E6960C70];
    v3 = *(v2 + 16);
    *(a1 + 320) = v3;
    OUTLINED_FUNCTION_34_2((a1 + 328));
    v4[610] = 0;
    v4[611] = 0;
    v4[613] = 0;
    if (v4[172] == 1 && gValidPrefersNoInterruptionsByRingtonesAndAlertsToken != 0)
    {
      v10 = OUTLINED_FUNCTION_45();
      [(BWFileCoordinatorNode *)v10 _sendPrefersNoInterruptionsByRingtonesAndAlertsNotificationWithState:v11];
    }

    bzero(*(a1 + 872), 4 * *(a1 + 648));
    if (*(a1 + 648))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(a1 + 880) + v6;
        *v8 = v12;
        *(v8 + 16) = v3;
        v9 = *(a1 + 888) + v6;
        *v9 = v12;
        *(v9 + 16) = v3;
        ++v7;
        v6 += 24;
      }

      while (*(a1 + 648) > v7);
    }
  }
}

- (void)recordingTerminated:(int64_t)a3
{
  FigSimpleMutexLock();
  [(BWFileCoordinatorNode *)self _flushAllBuffersFromRecordingStagingQueues];
  if (self->_currSettingsID == a3)
  {
    [(BWFileCoordinatorNode *)self _completeTransitionToNotRecording];
    v5 = OUTLINED_FUNCTION_20_3();
    [(BWFileCoordinatorNode *)v5 _emitMarkerBufferForFileWriterAction:v6 withPTS:v7 settings:v8 settingsID:a3 errorCode:0];
    [(BWFileCoordinatorNode *)self _releaseSettings];
  }

  FigSimpleMutexUnlock();
}

- (void)_emitMarkerBufferForFileWriterAction:(uint64_t)a3 withPTS:(uint64_t)a4 settings:(uint64_t)a5 settingsID:(uint64_t)a6 errorCode:
{
  if (result)
  {
    OUTLINED_FUNCTION_46_2();
    v38 = 0;
    memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
    __dst.presentationTimeStamp = *v9;
    if (*(v8 + 220))
    {
      lhs = *v9;
      rhs = *(v8 + 208);
      CMTimeSubtract(&__dst.presentationTimeStamp, &lhs, &rhs);
    }

    v19 = OUTLINED_FUNCTION_7_17(*MEMORY[0x1E695E480], v12, v13, v14, v15, v16, v17, v18, &__dst, 0, 0, &v38);
    if (!v19)
    {
      if (dword_1ED844310)
      {
        v36 = 0;
        v35 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v22 = v36;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v35))
        {
          v23 = v22;
        }

        else
        {
          v23 = v22 & 0xFFFFFFFE;
        }

        if (v23)
        {
          lhs = __dst.presentationTimeStamp;
          CMTimeGetSeconds(&lhs);
          LODWORD(rhs.value) = 136316418;
          OUTLINED_FUNCTION_28_2();
          *(&rhs.flags + 2) = v8;
          HIWORD(rhs.epoch) = 2112;
          v27 = v7;
          v28 = v24;
          v29 = a5;
          v30 = v24;
          v31 = v25;
          v32 = 1024;
          v33 = a6;
          OUTLINED_FUNCTION_9_3();
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      CMSetAttachment(v38, @"FileWriterAction", v7, 1u);
      if (a6)
      {
        OUTLINED_FUNCTION_59([MEMORY[0x1E696AD98] numberWithInt:a6]);
      }

      if (v6)
      {
        CMSetAttachment(v38, @"RecordingSettings", v6, 1u);
      }

      if (*(v8 + 816) && (FigCFEqual() || FigCFEqual() || FigCFEqual()))
      {
        OUTLINED_FUNCTION_59([MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v8 + 816)]);
      }

      [(BWFileCoordinatorNode *)v8 _emitMarkerBufferCopyOnAllOutputs:v38];
      if (v38)
      {
        CFRelease(v38);
      }
    }

    result = *(v8 + 760);
    if (result)
    {
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = a6;
      }

      lhs = *v9;
      return [result fileCoordinator:v8 sentMarkerBufferForFileWriterAction:v7 withPTS:&lhs settings:v6 errorCode:v20];
    }
  }

  return result;
}

- (void)_emitSampleBuffersWaitingForMotionData
{
  if (a1)
  {
    if ([*(a1 + 776) count])
    {
      v2 = [*(a1 + 768) copyMotionDataForSerialNumber:*(a1 + 784) + *(a1 + 792)];
      if (v2)
      {
        v3 = *off_1E798A3C8;
        v4 = *off_1E798CE70;
        while (1)
        {
          v9 = v2;
          [OUTLINED_FUNCTION_39_2() firstObject];
          v5 = OUTLINED_FUNCTION_1_19();
          [(BWFileCoordinatorNode *)v5 _addLookAheadMotionDataToMetadataForSampleBuffer:v6 lookAheadMotionData:v9];
          v7 = OUTLINED_FUNCTION_1_19();
          [BWFileCoordinatorNode _emitSampleBuffer:v7 forInput:? toOutput:?];
          [OUTLINED_FUNCTION_39_2() removeObjectAtIndex:0];
          if (![OUTLINED_FUNCTION_39_2() count])
          {
            break;
          }

          v8 = [OUTLINED_FUNCTION_39_2() firstObject];
          *(a1 + 792) = [objc_msgSend(CMGetAttachment(v8 v3];

          v2 = [*(a1 + 768) copyMotionDataForSerialNumber:*(a1 + 784) + *(a1 + 792)];
          if (!v2)
          {
            return;
          }
        }

        *(a1 + 792) = 0;
      }
    }
  }
}

- (uint64_t)_sendPrefersNoInterruptionsByRingtonesAndAlertsNotificationWithState:(uint64_t)result
{
  if (result)
  {
    if (notify_set_state(gPrefersNoInterruptionsByRingtonesAndAlertsToken, state64) || (result = notify_post("com.apple.avcapture.prefersnointerruptionsbyringtonesandalerts"), result))
    {
      OUTLINED_FUNCTION_0_6();
      return FigDebugAssert3();
    }
  }

  return result;
}

- (void)_emitMarkerBufferCopyOnAllOutputs:(void *)result
{
  if (result)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = [result outputs];
    result = [v3 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v14;
      v6 = *MEMORY[0x1E695E480];
      do
      {
        v7 = 0;
        do
        {
          if (*v14 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * v7);
          sampleBufferOut = 0;
          if (!CMSampleBufferCreateCopy(v6, a2, &sampleBufferOut))
          {
            [v8 emitSampleBuffer:sampleBufferOut];
          }

          v10 = sampleBufferOut;
          if (sampleBufferOut)
          {
            CFRelease(sampleBufferOut);
          }

          v7 = v7 + 1;
        }

        while (v4 != v7);
        result = OUTLINED_FUNCTION_37(v10, v9, &v13, v12);
        v4 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)_logNumBuffersReceivedDuringStartingRecording
{
  if (a1)
  {
    if (a1[83])
    {
      v3 = 0;
      v4 = 0;
      v5 = @"Buffers received on each input during starting";
      do
      {
        OUTLINED_FUNCTION_9_10();
        v7 = *(v6 + 4 * v4);
        OUTLINED_FUNCTION_5_25();
        Seconds = CMTimeGetSeconds(v8);
        OUTLINED_FUNCTION_5_25();
        v5 = [v1 stringWithFormat:@"%@ :: V:%d (%.4lf - %.4lf)", v5, v7, *&Seconds, CMTimeGetSeconds(v10)];
        ++v4;
        v11 = a1[83];
        v3 += 24;
      }

      while (v4 < v11);
    }

    else
    {
      v11 = 0;
      v5 = @"Buffers received on each input during starting";
    }

    v12 = a1[84];
    v13 = v12 + v11;
    if (v11 < v12 + v11)
    {
      v14 = 24 * v11;
      do
      {
        OUTLINED_FUNCTION_9_10();
        v16 = *(v15 + 4 * v11);
        OUTLINED_FUNCTION_5_25();
        v18 = CMTimeGetSeconds(v17);
        OUTLINED_FUNCTION_5_25();
        v5 = [v1 stringWithFormat:@"%@ :: A:%d (%.4lf - %.4lf)", v5, v16, *&v18, CMTimeGetSeconds(v19)];
        ++v11;
        v13 = a1[84] + a1[83];
        v14 += 24;
      }

      while (v11 < v13);
    }

    if (v13 < v13 + a1[85])
    {
      v20 = 24 * v13;
      do
      {
        OUTLINED_FUNCTION_9_10();
        v22 = *(v21 + 4 * v13);
        OUTLINED_FUNCTION_5_25();
        v24 = CMTimeGetSeconds(v23);
        OUTLINED_FUNCTION_5_25();
        v5 = [v1 stringWithFormat:@"%@ :: M:%d (%.4lf - %.4lf)", v5, v22, *&v24, CMTimeGetSeconds(v25)];
        ++v13;
        OUTLINED_FUNCTION_48_2();
        v20 += 24;
      }

      while (v13 < v27 + *(a1 + *(v26 + 912)));
    }

    if (dword_1ED844310)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v29 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      if (OUTLINED_FUNCTION_5_24(v29))
      {
        OUTLINED_FUNCTION_47_4();
        OUTLINED_FUNCTION_4_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_13_0();
    }
  }
}

- (uint64_t)_irisMovieInfosFromPendingIrisRequestMarkerBuffers
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 136);
  OUTLINED_FUNCTION_43();
  v2 = [v1 countByEnumeratingWithState:? objects:? count:?];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  v5 = MEMORY[0];
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (MEMORY[0] != v5)
      {
        objc_enumerationMutation(v1);
      }

      v7 = *(8 * i);
      if (!v4)
      {
        v4 = [MEMORY[0x1E695DF70] array];
      }

      if (CMGetAttachment(v7, @"IrisMovieRequest", 0))
      {
        [OUTLINED_FUNCTION_4() addObject:?];
      }
    }

    OUTLINED_FUNCTION_43();
    v3 = [v1 countByEnumeratingWithState:? objects:? count:?];
  }

  while (v3);
  return v4;
}

- (uint64_t)_clearPendingIrisRequestMarkerBuffers
{
  if (result)
  {
    v1 = result;
    if (dword_1ED844310)
    {
      v2 = OUTLINED_FUNCTION_25_2();
      if (os_log_type_enabled(v2, v4))
      {
        v3 = v5;
      }

      else
      {
        v3 = v5 & 0xFFFFFFFE;
      }

      if (v3)
      {
        [*(v1 + 136) count];
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_13_0();
    }

    return [*(v1 + 136) removeAllObjects];
  }

  return result;
}

- (void)_addLookAheadMotionDataToMetadataForSampleBuffer:(void *)a3 lookAheadMotionData:
{
  if (a1)
  {
    if (*(a1 + 808))
    {
      v6 = 0;
      v7 = 0;
    }

    else
    {
      v16 = [objc_msgSend(objc_msgSend(a3 objectForKeyedSubscript:{BWMotionDataTimeMachineKeyPrimaryMotionData), "objectForKeyedSubscript:", *off_1E798CE70), "unsignedLongLongValue"}];
      v7 = [*(a1 + 768) copyMotionDataForStartingSerialNumber:v16 - *(a1 + 784) endingSerialNumber:v16 - 1];
      v6 = v7 != 0;
      if ((*(a1 + 808) & 1) == 0 && !v7)
      {
        return;
      }
    }

    v17 = v7;
    v8 = [a3 objectForKeyedSubscript:BWMotionDataTimeMachineKeyPrimaryMotionData];
    [v17 objectForKeyedSubscript:BWMotionDataTimeMachineKeyPrimaryMotionData];
    v9 = OUTLINED_FUNCTION_4();
    fcn_addAllLookAheadMotionDataToMetadata(v9, v8, v10);
    *(a1 + 800) = [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798CE70), "unsignedLongLongValue"}];
    v11 = [a3 objectForKeyedSubscript:BWMotionDataTimeMachineKeySynchronizedSlaveFrameMotionData];
    if (v11)
    {
      v12 = v11;
      if (fcn_synchronizedSlaveFrameForSampleBuffer(a2))
      {
        [v17 objectForKeyedSubscript:BWMotionDataTimeMachineKeySynchronizedSlaveFrameMotionData];
        v13 = OUTLINED_FUNCTION_4();
        fcn_addAllLookAheadMotionDataToMetadata(v13, v12, v14);
      }
    }

    if (v6)
    {
      OUTLINED_FUNCTION_21_4(808);
    }
  }
}

- (uint64_t)_emitSampleBuffer:(uint64_t)result forInput:toOutput:
{
  if (result)
  {
    OUTLINED_FUNCTION_46_2();
    v5 = MEMORY[0x1E696AD98];
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&time, HostTimeClock);
    CMTimeConvertScale(&v11, &time, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v7 = [v5 numberWithLongLong:v11.value];
    CMSetAttachment(v2, @"FileCoordinatorEmissionTimeStamp", v7, 1u);
    v8 = [CMGetAttachment(v2 *off_1E798A3C8];
    if (v8)
    {
      v9 = v8;
      v10 = *(v3 + 824) ? *(v3 + 824) : v8;
      CMSetAttachment(v2, @"LastPortType", v10, 1u);
      if (([*(v3 + 824) isEqualToString:v9] & 1) == 0)
      {

        *(v3 + 824) = v9;
      }
    }

    if (*(v3 + 722) == 1 && ![v4 index])
    {
      if (*(v3 + 664))
      {
        [(BWFileCoordinatorNode *)v3 _prepareOverCaptureVideoBufferForEmission:v2 emissionTimeStamp:v7];
      }
    }

    return [v1 emitSampleBuffer:v2];
  }

  return result;
}

- (uint64_t)_flushPendingIrisRequestMarkerBuffers
{
  if (result)
  {
    v1 = result;
    for (result = [*(result + 136) count]; result; result = objc_msgSend(*(v1 + 136), "count"))
    {
      v2 = [*(v1 + 136) firstObject];
      if (dword_1ED844310)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [*(v1 + 16) emitSampleBuffer:v2];
      [*(v1 + 136) removeObjectAtIndex:0];
    }
  }

  return result;
}

- (uint64_t)_flushSampleBuffersWaitingForMotionData
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
  if (!*(result + 792))
  {
    return result;
  }

  v4 = [OUTLINED_FUNCTION_23_2() count];
  v5 = v4;
  if ((*(v2 + 808) & 1) == 0 && v4)
  {
    v6 = [OUTLINED_FUNCTION_23_2() firstObject];
    v7 = [objc_msgSend(CMGetAttachment(v6 *off_1E798A3C8];
    [OUTLINED_FUNCTION_57_2() earliestAvailableMotionDataSerialNumber];
    v8 = [OUTLINED_FUNCTION_57_2() latestAvailableMotionDataSerialNumber];
    if (v8 >= v7 + *(v2 + 784) - 1)
    {
      v9 = v7 + *(v2 + 784) - 1;
    }

    else
    {
      v9 = v8;
    }

    v10 = [OUTLINED_FUNCTION_57_2() copyMotionDataForStartingSerialNumber:? endingSerialNumber:?];
    if (v10)
    {
      v11 = v10;
      fcn_addAllLookAheadMotionDataToMetadata(v6, 0, [v10 objectForKeyedSubscript:BWMotionDataTimeMachineKeyPrimaryMotionData]);
      *(v2 + 800) = v9;
      if ([OUTLINED_FUNCTION_57_2() synchronizedSlaveMotionDataCachingEnabled])
      {
        v12 = fcn_synchronizedSlaveFrameForSampleBuffer(v6);
        if (v12)
        {
          fcn_addAllLookAheadMotionDataToMetadata(v12, 0, [v11 objectForKeyedSubscript:BWMotionDataTimeMachineKeySynchronizedSlaveFrameMotionData]);
        }
      }
    }

    OUTLINED_FUNCTION_21_4(808);
    v3 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
LABEL_15:
    v13 = 0;
    v14 = *off_1E798A3C8;
    v1 = *off_1E798CE70;
    while (1)
    {
      v15 = [OUTLINED_FUNCTION_23_2() objectAtIndexedSubscript:v13];
      if ([objc_msgSend(CMGetAttachment(v15 v14] > *(v2 + 800))
      {
        goto LABEL_20;
      }

      [(BWFileCoordinatorNode *)v2 _addFlushingFutureCinematicMetadataToSampleBuffer:v15];
      [BWFileCoordinatorNode _emitSampleBuffer:v2 forInput:? toOutput:?];
      if (v5 == ++v13)
      {
        v13 = v5;
        goto LABEL_20;
      }
    }
  }

  if (v4)
  {
    goto LABEL_15;
  }

  v13 = 0;
LABEL_20:
  if ([OUTLINED_FUNCTION_23_2() count] > v13 && dword_1ED844310 != 0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_4_0();
    if (v1)
    {
      [OUTLINED_FUNCTION_23_2() count];
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_39_0();
  }

  result = [OUTLINED_FUNCTION_23_2() removeAllObjects];
  *(v2 + v3[267]) = 0;
  *(v2 + 800) = 0;
  return result;
}

- (id)_addFlushingFutureCinematicMetadataToSampleBuffer:(id *)result
{
  if (result)
  {
    v3 = result;
    v4 = *off_1E798A3C8;
    v5 = CMGetAttachment(target, *off_1E798A3C8, 0);
    v6 = OUTLINED_FUNCTION_1_19();
    [v5 setObject:-[BWFileCoordinatorNode _cinematicFutureMetadataForFlushingSampleBuffer:](v6 forKeyedSubscript:{v7), *off_1E798CE58}];
    result = [v3[96] synchronizedSlaveMotionDataCachingEnabled];
    if (result)
    {
      result = fcn_synchronizedSlaveFrameForSampleBuffer(target);
      if (result)
      {
        CMGetAttachment(result, v4, 0);
        v8 = OUTLINED_FUNCTION_1_19();
        [(BWFileCoordinatorNode *)v8 _cinematicFutureMetadataForFlushingSampleBuffer:v9];
        v10 = OUTLINED_FUNCTION_4();

        return [v10 setObject:? forKeyedSubscript:?];
      }
    }
  }

  return result;
}

- (uint64_t)_cinematicFutureMetadataForFlushingSampleBuffer:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = CMGetAttachment(target, *off_1E798A3C8, 0);
    v4 = *off_1E798CE70;
    v5 = [objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798CE70), "unsignedLongLongValue"}];
    v6 = *(v2 + 784);
    v7 = MEMORY[0x1E695DF90];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v6 + v5];
    return [v7 dictionaryWithObjectsAndKeys:{v8, v4, MEMORY[0x1E695E118], *off_1E798CE68, 0}];
  }

  return result;
}

- (void)_prepareOverCaptureVideoBufferForEmission:(const void *)a3 emissionTimeStamp:
{
  if (a1)
  {
    if (a1[723] != 1)
    {
LABEL_18:
      CMRemoveAttachment(target, @"OverCaptureSlaveStreamStatus");
      return;
    }

    if (a1[724] != 1)
    {
      if (([CMGetAttachment(target @"OverCaptureSlaveStreamStatus"] & 0xFFFFFFFB) == 0)
      {
        AttachedMedia = BWSampleBufferGetAttachedMedia(target, 0x1F21AAA50);
        if (AttachedMedia || (AttachedMedia = BWSampleBufferGetAttachedMedia(target, @"SynchronizedSlaveFrame")) != 0)
        {
          CMSetAttachment(AttachedMedia, @"FileCoordinatorEmissionTimeStamp", a3, 1u);
        }

        goto LABEL_7;
      }

      a1[724] = 1;
      a1[725] = 1;
    }

    BWSampleBufferRemoveAttachedMedia(target, 0x1F21AAA50);
    BWSampleBufferRemoveAttachedMedia(target, @"SynchronizedSlaveFrame");
LABEL_7:
    if (a1[725] == 1)
    {
      v21 = 0;
      memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
      CMSampleBufferGetPresentationTimeStamp(&__dst.presentationTimeStamp, target);
      if (!OUTLINED_FUNCTION_7_17(*MEMORY[0x1E695E480], v7, v8, v9, v10, v11, v12, v13, &__dst, 0, 0, &v21))
      {
        v14 = &unk_1E799C000;
        if (dword_1ED844310)
        {
          v19 = 0;
          v18 = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_4_0();
          if (v3)
          {
            time = __dst.presentationTimeStamp;
            CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_28_2();
            OUTLINED_FUNCTION_9_3();
            OUTLINED_FUNCTION_4_4();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_39_0();
          v14 = &unk_1E799C000;
        }

        CMSetAttachment(v21, @"FileWriterAction", v14[470], 1u);
        BWSampleBufferSetAttachedMedia(target, @"SynchronizedSlaveFrame", v21);
        CFRelease(v21);
        if (([CMGetAttachment(target @"SampleDataToBeDropped"] & 1) == 0)
        {
          a1[725] = 0;
        }
      }
    }

    goto LABEL_18;
  }
}

- (id)_emitStagedBufferForIndex:(id *)result stoppingOrPausing:(uint64_t)a2
{
  if (result)
  {
    v3 = result;
    v4 = [objc_msgSend(result "inputs")];
    v5 = [objc_msgSend(v3 "outputs")];
    result = [v3[16] objectAtIndex:a2];
    if (v4)
    {
      if (v5)
      {
        v6 = result;
        if (result)
        {
          result = [result count];
          if (result)
          {
            -[BWFileCoordinatorNode _emitOrQueueSampleBuffer:forInput:toOutput:stoppingOrPausing:](v3, [v6 firstObject], v4, v5);

            return [v6 removeObjectAtIndex:0];
          }
        }
      }
    }
  }

  return result;
}

- (CMSampleBufferRef)_createEmptyMetadataSBufWithPTS:(uint64_t)a3 forInputIndex:
{
  if (result)
  {
    v4 = result;
    v13 = 0;
    if (*(*(result + 79) + 8 * a3))
    {
      v6 = *(result + 78);
      v7 = *MEMORY[0x1E695E480];
      if (v6)
      {
LABEL_7:
        memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
        __dst.presentationTimeStamp = *a2;
        DataLength = CMBlockBufferGetDataLength(v6);
        v9 = *(v4 + 78);
        sampleSizeArray = DataLength;
        if (!CMSampleBufferCreate(v7, v9, 1u, 0, 0, *(*(v4 + 79) + 8 * a3), 1, 1, &__dst, 1, &sampleSizeArray, &v13))
        {
          return v13;
        }

        OUTLINED_FUNCTION_0_6();
LABEL_14:
        FigDebugAssert3();
        return v13;
      }

      if (!CMBlockBufferCreateWithMemoryBlock(v7, 0, 8uLL, v7, 0, 0, 8uLL, 1u, result + 78))
      {
        dataPointerOut = 0;
        if (CMBlockBufferGetDataPointer(*(v4 + 78), 0, 0, 0, &dataPointerOut))
        {
          OUTLINED_FUNCTION_0_6();
          goto LABEL_14;
        }

        *dataPointerOut = 0x8000000;
        v6 = *(v4 + 78);
        goto LABEL_7;
      }
    }

    OUTLINED_FUNCTION_0_6();
    goto LABEL_14;
  }

  return result;
}

- (uint64_t)pauseRecording
{
  OUTLINED_FUNCTION_19_1(a1 + 25);
  OUTLINED_FUNCTION_34_2((v1 + 328));
  *(v2 + 612) = 0;
  *v3 = 5;
  return [(BWFileCoordinatorNode *)v2 _flushAllBuffersFromRecordingStagingQueues];
}

@end