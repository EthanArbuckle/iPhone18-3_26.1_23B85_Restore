@interface BWPocketDetectionNode
+ (void)initialize;
- (BWPocketDetectionNode)initWithMetalCommandQueue:(id)a3 clientApplicationID:(id)a4;
- (int)_allocateResources;
- (int)_detectPocket:(opaqueCMSampleBuffer *)a3;
- (void)accidentalActivationMitigationSessionStateDidChange:(id)a3;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWPocketDetectionNode

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWPocketDetectionNode)initWithMetalCommandQueue:(id)a3 clientApplicationID:(id)a4
{
  v17.receiver = self;
  v17.super_class = BWPocketDetectionNode;
  v6 = [(BWNode *)&v17 init];
  v7 = v6;
  if (!a3)
  {
    [BWPocketDetectionNode initWithMetalCommandQueue:clientApplicationID:];
    goto LABEL_15;
  }

  if (!a4)
  {
    [BWPocketDetectionNode initWithMetalCommandQueue:clientApplicationID:];
    goto LABEL_15;
  }

  if (v6)
  {
    v8 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v6];
    [(BWNodeInput *)v8 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInput *)v8 setPassthroughMode:1];
    [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v8 primaryMediaConfiguration] setRetainedBufferCount:1];
    [(BWNode *)v7 addInput:v8];
    v9 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v7];
    [(BWNodeOutput *)v9 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutput *)v9 setPassthroughMode:1];
    [(BWNode *)v7 addOutput:v9];
    v7->_coreMotionSuppressionStateLock._os_unfair_lock_opaque = 0;
    v10 = [FigWeakReference weakReferenceToObject:v7];
    v11 = [BWCoreMotionSuppressionStateMonitor alloc];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__BWPocketDetectionNode_initWithMetalCommandQueue_clientApplicationID___block_invoke;
    v16[3] = &unk_1E7990458;
    v16[4] = v10;
    v12 = [(BWCoreMotionSuppressionStateMonitor *)v11 initWithSuppressionStateChangeHandler:v16];
    v7->_coreMotionSuppressionStateMonitor = v12;
    if (v12)
    {
      v13 = [[BWPocketDetectionFFTProcessor alloc] initWithMetalCommandQueue:a3];
      v7->_fftProcessor = v13;
      if (v13)
      {
        v7->_detectionQueue = FigDispatchQueueCreateWithPriority();
        v7->_cumulativeEnergyHistory = objc_alloc_init(MEMORY[0x1E695DF70]);
        v7->_cumulativeEnergyHistoryLength = 10;
        HIDWORD(v7->_lastDetectionFramePTS.epoch) = 1036831949;
        HIDWORD(v7->_firstFramePts.epoch) = 1088421888;
        *&v7->_stopDetection = 1089260749;
        LOBYTE(v7->_cumulativeEnergyInPocketThreshold) = 1;
        v7->_sbMitigationSessionDurationInSeconds = 5.0;
        v7->_suppressFacedownSetdownAccidentals = 1;
        if (LOBYTE(v7->_cumulativeEnergyInPocketThreshold) != 1 || (v14 = [objc_alloc(MEMORY[0x1E69D4180]) initWithBundleIdentifier:a4 callOutQueue:v7->_detectionQueue], (v7->_sbAccidentalActivationMitigationClientSession = v14) != 0))
        {
          v7->_suppressionStateStrings = &unk_1F2248250;
          [(BWNode *)v7 setSupportsLiveReconfiguration:1];
          return v7;
        }

        [BWPocketDetectionNode initWithMetalCommandQueue:clientApplicationID:];
      }

      else
      {
        [BWPocketDetectionNode initWithMetalCommandQueue:clientApplicationID:];
      }
    }

    else
    {
      [BWPocketDetectionNode initWithMetalCommandQueue:clientApplicationID:];
    }

LABEL_15:

    return 0;
  }

  return v7;
}

void __71__BWPocketDetectionNode_initWithMetalCommandQueue_clientApplicationID___block_invoke(uint64_t a1, int a2, int a3, double a4)
{
  v7 = [*(a1 + 32) referencedObject];
  os_unfair_lock_lock((v7 + 160));
  *(v7 + 136) = a2;
  *(v7 + 144) = a4;
  *(v7 + 152) = a3;

  os_unfair_lock_unlock((v7 + 160));
}

- (void)dealloc
{
  if (self->_resourcesAllocated)
  {
    [(BWPocketDetectionNode *)self _cleanupResources];
  }

  if (LOBYTE(self->_cumulativeEnergyInPocketThreshold) == 1)
  {
  }

  v3.receiver = self;
  v3.super_class = BWPocketDetectionNode;
  [(BWNode *)&v3 dealloc];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  if ([(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] width]< 0x2D0 || [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] height]<= 0x2CF)
  {
    if (dword_1EB58E520)
    {
      v13 = 0;
      v12 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    LOBYTE(self->_detectionEnabledDurationInSeconds) = 1;
  }

  if (dword_1EB58E520)
  {
    v13 = 0;
    v12 = OS_LOG_TYPE_DEFAULT;
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v5 = v13;
    if (os_log_type_enabled(v4, v12))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 0xFFFFFFFE;
    }

    if (v6)
    {
      v10 = 136315138;
      v11 = "[BWPocketDetectionNode prepareForCurrentConfigurationToBecomeLive]";
      LODWORD(v8) = 12;
      v7 = &v10;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(BWCoreMotionSuppressionStateMonitor *)self->_coreMotionSuppressionStateMonitor start:v7];
  v9.receiver = self;
  v9.super_class = BWPocketDetectionNode;
  [(BWNode *)&v9 prepareForCurrentConfigurationToBecomeLive];
}

uint64_t __53__BWPocketDetectionNode_renderSampleBuffer_forInput___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _allocateResources];
  *(*(a1 + 32) + 232) = 1;
  return result;
}

uint64_t __53__BWPocketDetectionNode_renderSampleBuffer_forInput___block_invoke_39(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 296);
  if (dword_1EB58E520)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v2 = *(a1 + 32);
  }

  [*(v2 + 280) addObserver:{v6, v7}];
  result = [*(*(a1 + 32) + 280) activateSessionWithDuration:0 accidentalActivationMitigationSessionCancellationPolicyClassName:v3];
  *(*(a1 + 32) + 288) = 1;
  return result;
}

void __53__BWPocketDetectionNode_renderSampleBuffer_forInput___block_invoke_40(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2[264])
  {
    if (v3)
    {
      CFRelease(*(a1 + 40));
    }
  }

  else
  {
    [v2 _detectPocket:v3];
  }

  *(*(a1 + 32) + 232) = 1;
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  if (!a3)
  {
    [(BWCoreMotionSuppressionStateMonitor *)self->_coreMotionSuppressionStateMonitor stop];
    [(BWPocketDetectionNode *)self _waitForDetectionToComplete];
    if (LOBYTE(self->_cumulativeEnergyInPocketThreshold) == 1)
    {
      detectionQueue = self->_detectionQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__BWPocketDetectionNode_didReachEndOfDataForConfigurationID_input___block_invoke;
      block[3] = &unk_1E798F870;
      block[4] = self;
      dispatch_sync(detectionQueue, block);
    }

    if ([(SBSAccidentalActivationMitigationClientSession *)self->_sbAccidentalActivationMitigationClientSession state]== 3 && dword_1EB58E520 != 0)
    {
      v15 = 0;
      v14 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    self->_ppsData.detectionSessionStopTime = CFAbsoluteTimeGetCurrent();
    v12 = *&self->_ppsData.detectionSessionStartTime;
    v13 = *&self->_ppsData.inPocket;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __pdn_sendPPSData_block_invoke;
    v11[3] = &__block_descriptor_56_e5_v8__0l;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }

  v10.receiver = self;
  v10.super_class = BWPocketDetectionNode;
  [(BWNode *)&v10 didReachEndOfDataForConfigurationID:a3 input:a4];
}

uint64_t __67__BWPocketDetectionNode_didReachEndOfDataForConfigurationID_input___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 288) == 1)
  {
    return [*(v1 + 280) removeObserver:?];
  }

  return result;
}

- (int)_detectPocket:(opaqueCMSampleBuffer *)a3
{
  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  v6 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  v7 = *(MEMORY[0x1E695F058] + 8);
  rect.origin.x = *MEMORY[0x1E695F058];
  rect.origin.y = v7;
  rect.size.width = CVPixelBufferGetWidth(ImageBuffer);
  rect.size.height = CVPixelBufferGetHeight(ImageBuffer);
  CGRectMakeWithDictionaryRepresentation([v6 objectForKeyedSubscript:*off_1E798B7A0], &rect);
  v12 = 0.0;
  [(BWPocketDetectionFFTProcessor *)self->_fftProcessor processFFTOnInputPixelBuffer:ImageBuffer usingSourceRect:&v12 cumulativeScoreOut:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  self->_cumulativeEnergy = log10f(v12);
  if ([(NSMutableArray *)self->_cumulativeEnergyHistory count]== self->_cumulativeEnergyHistoryLength)
  {
    [(NSMutableArray *)self->_cumulativeEnergyHistory removeObjectAtIndex:0];
  }

  *&v8 = self->_cumulativeEnergy;
  -[NSMutableArray addObject:](self->_cumulativeEnergyHistory, "addObject:", [MEMORY[0x1E696AD98] numberWithFloat:v8]);
  [-[NSMutableArray valueForKeyPath:](self->_cumulativeEnergyHistory valueForKeyPath:{@"@max.floatValue", "floatValue"}];
  self->_cumulativeEnergyFiltered = v9;
  v10 = self->_coreMotionSuppressionState == 1 && ([(NSMutableArray *)self->_cumulativeEnergyHistory count]>= 5 && self->_cumulativeEnergyFiltered < *&self->_stopDetection || self->_suppressFacedownSetdownAccidentals && self->_coreMotionFacedownState == 1);
  self->_inPocketConsolidatedDecision = v10;
  if (a3)
  {
    CFRelease(a3);
  }

  return 0;
}

- (void)accidentalActivationMitigationSessionStateDidChange:(id)a3
{
  v3 = [(SBSAccidentalActivationMitigationClientSession *)self->_sbAccidentalActivationMitigationClientSession state];
  if (v3 == 3)
  {
    if (!dword_1EB58E520)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v3 == 2)
  {
    if (!dword_1EB58E520)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v3 == 1 && dword_1EB58E520)
  {
LABEL_9:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (int)_allocateResources
{
  v3 = [(BWPocketDetectionFFTProcessor *)self->_fftProcessor allocateResources];
  v4 = v3;
  if (!self->_fftProcessor)
  {
    [BWPocketDetectionNode _allocateResources];
    if (!v4)
    {
      return v4;
    }

    goto LABEL_3;
  }

  if (v3)
  {
LABEL_3:
    [(BWPocketDetectionNode *)self _cleanupResources];
  }

  return v4;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v6 = CMGetAttachment(a3, @"CaptureInitiatedOnce", 0);
  if ((LOBYTE(self->_detectionEnabledDurationInSeconds) & 1) == 0)
  {
    if ([v6 BOOLValue])
    {
      LOBYTE(self->_detectionEnabledDurationInSeconds) = 1;
      self->_inPocketConsolidatedDecision = 0;
      self->_ppsData.inPocket = 0;
      if (dword_1EB58E520)
      {
        LODWORD(sampleBufferOut) = 0;
        v103 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_3_18();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    memset(&v101, 0, sizeof(v101));
    PresentationTimeStamp = CMSampleBufferGetPresentationTimeStamp(&v101, a3);
    if ((self->_firstFramePts.timescale & 1) == 0)
    {
      OUTLINED_FUNCTION_2_24(PresentationTimeStamp, v9, v10, v11, v12, v13, v14, v15, v55, v61, v67, v73, v74, v75, v76, v77, v78, v79.value, *&v79.timescale, v79.epoch, v80.value, *&v80.timescale, v80.epoch, v81, v82, v83, v84, v85, rhs.value, *&rhs.timescale, rhs.epoch, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, v90.value, *&v90.timescale, v90.epoch, block, v92, v93, v94, v95, sampleBufferOut, v97, v98, v99, v100.value, *&v100.timescale, v100.epoch, v16, v101.value);
      self->_ppsData.detectionSessionStartTime = CFAbsoluteTimeGetCurrent();
    }

    memset(&v100, 0, sizeof(v100));
    v17 = CMTimeMakeWithSeconds(&v100, 4.0, v101.timescale);
    OUTLINED_FUNCTION_1_29(v17, v18, v19, v20, v21, v22, v23, v24, v55, v61, v67, v73, SBYTE1(v73), v74, v75, v76, v77, v78, v79.value, *&v79.timescale, v79.epoch, v80.value, *&v80.timescale, v80.epoch, v81, v82, v83, v84, v85, rhs.value, *&rhs.timescale, rhs.epoch, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, v90.value, *&v90.timescale, v90.epoch, block, v92, v93, v94, v95, sampleBufferOut, v97, v98, v99, v100.value, *&v100.timescale, v100.epoch, *&v101.value, v101.epoch);
    if (OUTLINED_FUNCTION_4_22(v100.epoch, v56, v62, v68, v73, v74, v75, v76, v77, v78, v79.value, *&v79.timescale, v79.epoch, v80.value, *&v80.timescale, v80.epoch, v81, v82, v83, v84, v85, v100.value, *&v100.timescale, rhs.epoch) >= 1)
    {
      if (!self->_resourcesAllocated)
      {
        *(&self->_inPocketConsolidatedDecision + 4) = v101;
        LOBYTE(self->_detectionIntervalInSeconds) = 0;
        detectionQueue = self->_detectionQueue;
        block = MEMORY[0x1E69E9820];
        v92 = 3221225472;
        v93 = __53__BWPocketDetectionNode_renderSampleBuffer_forInput___block_invoke;
        v94 = &unk_1E798F870;
        v95 = self;
        dispatch_async(detectionQueue, &block);
        self->_resourcesAllocated = 1;
      }

      memset(&v90, 0, sizeof(v90));
      v26 = CMTimeMakeWithSeconds(&v90, *(&self->_firstFramePts.epoch + 1), v101.timescale);
      OUTLINED_FUNCTION_1_29(v26, v27, v28, v29, v30, v31, v32, v33, v57, v63, v69, v73, SBYTE1(v73), v74, v75, v76, v77, v78, v79.value, *&v79.timescale, v79.epoch, v80.value, *&v80.timescale, v80.epoch, v81, v82, v83, v84, v85, rhs.value, *&rhs.timescale, rhs.epoch, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, v90.value, *&v90.timescale, v90.epoch, block, v92, v93, v94, v95, sampleBufferOut, v97, v98, v99, v100.value, *&v100.timescale, v100.epoch, *&v101.value, v101.epoch);
      if (OUTLINED_FUNCTION_4_22(v90.epoch, v58, v64, v70, v73, v74, v75, v76, v77, v78, v79.value, *&v79.timescale, v79.epoch, v80.value, *&v80.timescale, v80.epoch, v81, v82, v83, v84, v85, v90.value, *&v90.timescale, rhs.epoch) >= 1)
      {
        LOBYTE(self->_detectionEnabledDurationInSeconds) = 1;
        self->_ppsData.inPocket = self->_inPocketConsolidatedDecision;
        if (dword_1EB58E520)
        {
          LODWORD(sampleBufferOut) = 0;
          v103 = OS_LOG_TYPE_DEFAULT;
          v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v35 = sampleBufferOut;
          if (os_log_type_enabled(v34, v103))
          {
            v36 = v35;
          }

          else
          {
            v36 = v35 & 0xFFFFFFFE;
          }

          if (v36)
          {
            v37 = *(&self->_firstFramePts.epoch + 1);
            inPocketConsolidatedDecision = self->_inPocketConsolidatedDecision;
            v39 = [(NSArray *)self->_suppressionStateStrings objectAtIndexedSubscript:self->_coreMotionSuppressionState];
            cumulativeEnergyFiltered = self->_cumulativeEnergyFiltered;
            v41 = cumulativeEnergyFiltered <= *&self->_stopDetection;
            coreMotionFacedownState = self->_coreMotionFacedownState;
            LODWORD(rhs.value) = 136316674;
            *(&rhs.value + 4) = "[BWPocketDetectionNode renderSampleBuffer:forInput:]";
            LOWORD(rhs.flags) = 2050;
            *(&rhs.flags + 2) = v37;
            HIWORD(rhs.epoch) = 1026;
            LODWORD(v87) = inPocketConsolidatedDecision;
            WORD2(v87) = 2114;
            *(&v87 + 6) = v39;
            HIWORD(v87) = 1026;
            LODWORD(v88) = v41;
            WORD2(v88) = 2050;
            *(&v88 + 6) = cumulativeEnergyFiltered;
            HIWORD(v88) = 1026;
            LODWORD(v89) = coreMotionFacedownState;
            LODWORD(v65) = 60;
            p_rhs = &rhs;
            OUTLINED_FUNCTION_5_0();
          }

          OUTLINED_FUNCTION_3_18();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (LOBYTE(self->_cumulativeEnergyInPocketThreshold) == 1 && self->_inPocketConsolidatedDecision)
        {
          v43 = self->_detectionQueue;
          v81 = MEMORY[0x1E69E9820];
          v82 = 3221225472;
          v83 = __53__BWPocketDetectionNode_renderSampleBuffer_forInput___block_invoke_39;
          v84 = &unk_1E798F870;
          v85 = self;
          dispatch_async(v43, &v81);
        }
      }

      memset(&v80, 0, sizeof(v80));
      lhs = v101;
      rhs = *(&self->_inPocketConsolidatedDecision + 4);
      CMTimeSubtract(&v80, &lhs, &rhs);
      memset(&v79, 0, sizeof(v79));
      CMTimeMakeWithSeconds(&v79, *(&self->_lastDetectionFramePTS.epoch + 1), v101.timescale);
      lhs = v80;
      v44 = OUTLINED_FUNCTION_4_22(v79.epoch, p_rhs, v65, v71, v73, v74, v75, v76, v77, v78, v79.value, *&v79.timescale, v79.epoch, v80.value, *&v80.timescale, v80.epoch, v81, v82, v83, v84, v85, v79.value, *&v79.timescale, rhs.epoch);
      if (v44 >= 1 && (LOBYTE(self->_detectionEnabledDurationInSeconds) & 1) == 0 && LOBYTE(self->_detectionIntervalInSeconds) == 1)
      {
        LOBYTE(self->_detectionIntervalInSeconds) = 0;
        OUTLINED_FUNCTION_2_24(v44, v45, v46, v47, v48, v49, v50, v51, v60, v66, v72, v73, v74, v75, v76, v77, v78, v79.value, *&v79.timescale, v79.epoch, v80.value, *&v80.timescale, v80.epoch, v81, v82, v83, v84, v85, rhs.value, *&rhs.timescale, rhs.epoch, v87, *(&v87 + 1), v88, *(&v88 + 1), v89, v90.value, *&v90.timescale, v90.epoch, block, v92, v93, v94, v95, sampleBufferOut, v97, v98, v99, v100.value, *&v100.timescale, v100.epoch, v52, v101.value);
        lhs.value = 0;
        rhs.value = 0;
        BWOverCaptureSampleBufferUnpackAndRetain(a3, 0, &rhs, &lhs, 0, 0);
        value = lhs.value;
        if (rhs.value && [objc_msgSend(CMGetAttachment(rhs.value *off_1E798A3C8])
        {
          value = rhs.value;
        }

        sampleBufferOut = 0;
        BWCMSampleBufferCreateCopyIncludingMetadata(value, &sampleBufferOut);
        v54 = self->_detectionQueue;
        v73 = MEMORY[0x1E69E9820];
        v74 = 3221225472;
        v75 = __53__BWPocketDetectionNode_renderSampleBuffer_forInput___block_invoke_40;
        v76 = &unk_1E7990178;
        v77 = self;
        v78 = sampleBufferOut;
        dispatch_async(v54, &v73);
        if (lhs.value)
        {
          CFRelease(lhs.value);
        }

        if (rhs.value)
        {
          CFRelease(rhs.value);
        }
      }
    }
  }

  [(BWNodeOutput *)self->super._output emitSampleBuffer:a3];
}

@end