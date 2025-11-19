@interface BWPreviewTimeMachineSinkNode
- ($2825F4736939C4A6D3AD43837233062D)frameDimensions;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)earliestAllowedPTS;
- (BWPreviewTimeMachineSinkNode)initWithCaptureDevice:(id)a3 processingQueuePriority:(unsigned int)a4 timeMachineCapacity:(int)a5 smartCameraMotionDetectionEnabled:(BOOL)a6 sinkID:(id)a7;
- (uint64_t)_computeMotionDetectionFaceRectForSampleBuffers:(uint64_t)a3 faceMotionRectOut:;
- (uint64_t)_setupStateMachine;
- (uint64_t)_trimToTimeRange:(uint64_t)result;
- (uint64_t)dealloc;
- (void)dealloc;
- (void)detectMotionOnStoredFramesWithSmartCameraDiagnostics:(id)a3 completionHandler:(id)a4;
- (void)didReachEndOfDataForInput:(id)a3;
- (void)handleDroppedSample:(id)a3 forInput:(id)a4;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)resume;
- (void)setEarliestAllowedPTS:(id *)a3;
- (void)suspendWithPTSRange:(id *)a3 completionHandler:(id)a4;
@end

@implementation BWPreviewTimeMachineSinkNode

- (BWPreviewTimeMachineSinkNode)initWithCaptureDevice:(id)a3 processingQueuePriority:(unsigned int)a4 timeMachineCapacity:(int)a5 smartCameraMotionDetectionEnabled:(BOOL)a6 sinkID:(id)a7
{
  v7 = a6;
  v16.receiver = self;
  v16.super_class = BWPreviewTimeMachineSinkNode;
  v10 = [(BWSinkNode *)&v16 initWithSinkID:a7];
  if (v10)
  {
    v12 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v10];
    v13 = objc_alloc_init(BWVideoFormatRequirements);
    v14 = v13;
    if (v7)
    {
      [(BWVideoFormatRequirements *)v13 setSupportedPixelFormats:&unk_1F2248340];
    }

    [(BWNodeInput *)v12 setFormatRequirements:v14];
    *(v10 + 59) = a5;
    [(BWNodeInput *)v12 setRetainedBufferCount:(a5 + 1)];
    [v10 addInput:v12];

    [a3 setPreviewTimeMachineProcessor:v10];
    *(v10 + 26) = a3;
    *(v10 + 27) = FigDispatchQueueCreateWithPriority();
    *(v10 + 28) = objc_opt_new();
    *(v10 + 58) = 0;
    v15 = MEMORY[0x1E6960C70];
    *(v10 + 33) = *(MEMORY[0x1E6960C70] + 16);
    *(v10 + 248) = *v15;
    v10[337] = v7;
    [(BWPreviewTimeMachineSinkNode *)v10 _setupStateMachine];
  }

  return v10;
}

- (void)dealloc
{
  [(BWFigVideoCaptureDevice *)self->_device setPreviewTimeMachineProcessor:0];

  v3 = 0;
  if (self->_suspendCompletionHandler)
  {
    [(BWPreviewTimeMachineSinkNode *)&self->_suspendCompletionHandler dealloc];
    v3 = v5;
  }

  v4.receiver = self;
  v4.super_class = BWPreviewTimeMachineSinkNode;
  [(BWSinkNode *)&v4 dealloc];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3 = [[FigCaptureImageMotionDetector alloc] initWithWidth:[(BWVideoFormat *)[(BWNodeInput *)self->super.super._input videoFormat] width] height:[(BWVideoFormat *)[(BWNodeInput *)self->super.super._input videoFormat] height]];
  self->_motionDetector = v3;
  LODWORD(v4) = 1065017672;
  [(FigCaptureImageMotionDetector *)v3 setStationaryThreshold:v4];
  self->_faceMotionDetectionEnabled = 1;
  v5.receiver = self;
  v5.super_class = BWPreviewTimeMachineSinkNode;
  [(BWNode *)&v5 prepareForCurrentConfigurationToBecomeLive];
}

- (void)setEarliestAllowedPTS:(id *)a3
{
  os_unfair_lock_lock(&self->_timeMachineLock);
  var3 = a3->var3;
  *&self->_earliestAllowedPTS.value = *&a3->var0;
  self->_earliestAllowedPTS.epoch = var3;
  start = *a3;
  v6 = **&MEMORY[0x1E6960C88];
  CMTimeRangeMake(&v8, &start, &v6);
  [(BWPreviewTimeMachineSinkNode *)self _trimToTimeRange:?];
  os_unfair_lock_unlock(&self->_timeMachineLock);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)earliestAllowedPTS
{
  os_unfair_lock_lock(&self->_timeMachineLock);
  *retstr = self->_earliestAllowedPTS;

  os_unfair_lock_unlock(&self->_timeMachineLock);
  return result;
}

- ($2825F4736939C4A6D3AD43837233062D)frameDimensions
{
  v2 = [(BWNodeInput *)self->super.super._input videoFormat];
  v3 = [(BWVideoFormat *)v2 width];
  return (v3 | ([(BWVideoFormat *)v2 height]<< 32));
}

- (void)detectMotionOnStoredFramesWithSmartCameraDiagnostics:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    if (self->_smartCameraMotionDetectionEnabled)
    {
      os_unfair_lock_lock(&self->_timeMachineLock);
      timeMachineFrames = self->_timeMachineFrames;
      self->_timeMachineFrames = objc_opt_new();
      os_unfair_lock_unlock(&self->_timeMachineLock);
      processingQueue = self->_processingQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __103__BWPreviewTimeMachineSinkNode_detectMotionOnStoredFramesWithSmartCameraDiagnostics_completionHandler___block_invoke_2;
      block[3] = &unk_1E7990A08;
      block[4] = timeMachineFrames;
      block[5] = self;
      block[6] = a3;
      block[7] = a4;
      dispatch_async(processingQueue, block);
    }

    else
    {
      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      v17 = 0;
      v16 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v15 = 0;
      v11 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v11, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPreviewTimeMachineSinkNode.m", 292, @"LastShownDate:BWPreviewTimeMachineSinkNode.m:292", @"LastShownBuild:BWPreviewTimeMachineSinkNode.m:292", 0);
      free(v11);
      v12 = self->_processingQueue;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __103__BWPreviewTimeMachineSinkNode_detectMotionOnStoredFramesWithSmartCameraDiagnostics_completionHandler___block_invoke;
      v14[3] = &unk_1E798FEA0;
      v14[4] = a4;
      dispatch_async(v12, v14);
    }
  }
}

uint64_t __103__BWPreviewTimeMachineSinkNode_detectMotionOnStoredFramesWithSmartCameraDiagnostics_completionHandler___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *(MEMORY[0x1E695F050] + 16);
    v33.origin = *MEMORY[0x1E695F050];
    v33.size = v2;
    v32[0] = v33.origin;
    v32[1] = v2;
    v3 = *(a1 + 40);
    if (*(v3 + 336) == 1 && (v17 = [(BWPreviewTimeMachineSinkNode *)v3 _computeMotionDetectionFaceRectForSampleBuffers:&v33 faceMotionRectOut:?], v3 = *(a1 + 40), v17))
    {
      v18 = [v3 frameDimensions];
      v35.size.width = v18;
      v35.size.height = SHIDWORD(v18);
      v35.origin.x = 0.0;
      v35.origin.y = 0.0;
      v33 = CGRectIntersection(v33, v35);
      [*(*(a1 + 40) + 328) setRoi:v32 actualROI:?];
    }

    else
    {
      [*(v3 + 328) setCentralROIAndGetRect:v32];
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v28 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v29;
      while (2)
      {
        v9 = 0;
        v10 = v7;
        v7 += v6;
        do
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(v4);
          }

          ImageBuffer = CMSampleBufferGetImageBuffer(*(*(&v28 + 1) + 8 * v9));
          if (ImageBuffer && ![*(*(a1 + 40) + 328) processPixelBuffer:ImageBuffer])
          {
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v12 = *(*(a1 + 40) + 328);
            if (v12)
            {
              [v12 motionStatistics];
              if (BYTE9(v26) & 1) != 0 && (BYTE8(v26))
              {
                v16 = *(a1 + 48);
                v19 = v23;
                v20 = v24;
                v21 = v25;
                v22 = v26;
                [v16 addMotionStats:&v19];
                goto LABEL_23;
              }
            }

            if (v10 == [*(a1 + 32) count] - 1)
            {
              v13 = *(a1 + 48);
              v19 = v23;
              v20 = v24;
              v21 = v25;
              v22 = v26;
              [v13 addMotionStats:&v19];
            }
          }

          ++v10;
          ++v9;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v28 objects:v27 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:
    [*(*(a1 + 40) + 328) resetProcessingState];
    return (*(*(a1 + 56) + 16))();
  }

  else
  {
    v14 = *(*(a1 + 56) + 16);

    return v14();
  }
}

- (void)suspendWithPTSRange:(id *)a3 completionHandler:(id)a4
{
  if ((a3->var0.var2 & 1) == 0 || (a3->var1.var2 & 1) == 0 || a3->var1.var3 || a3->var1.var0 < 0)
  {
    [BWPreviewTimeMachineSinkNode suspendWithPTSRange:completionHandler:];
    v11 = 1;
    if (!a4)
    {
      return;
    }

    goto LABEL_10;
  }

  os_unfair_lock_lock(&self->_timeMachineLock);
  v7 = [(FigStateMachine *)self->_stateMachine transitionToState:2 fromState:1];
  if (v7)
  {
    v9 = *&a3->var0.var3;
    v8 = *&a3->var1.var1;
    *&self->_requestedSuspendPTSRange.start.value = *&a3->var0.var0;
    *&self->_requestedSuspendPTSRange.start.epoch = v9;
    *&self->_requestedSuspendPTSRange.duration.timescale = v8;
    suspendCompletionHandler = self->_suspendCompletionHandler;
    if (suspendCompletionHandler)
    {
      [BWPreviewTimeMachineSinkNode suspendWithPTSRange:&v14 completionHandler:?];
      suspendCompletionHandler = v14;
    }

    self->_suspendCompletionHandler = [a4 copy];
  }

  v11 = !v7;
  os_unfair_lock_unlock(&self->_timeMachineLock);
  if (a4)
  {
LABEL_10:
    if (v11)
    {
      processingQueue = self->_processingQueue;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __70__BWPreviewTimeMachineSinkNode_suspendWithPTSRange_completionHandler___block_invoke;
      v13[3] = &unk_1E798FEA0;
      v13[4] = a4;
      dispatch_async(processingQueue, v13);
    }
  }
}

uint64_t __70__BWPreviewTimeMachineSinkNode_suspendWithPTSRange_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  v8 = *(MEMORY[0x1E695EFD0] + 16);
  v10[0] = *MEMORY[0x1E695EFD0];
  v10[1] = v8;
  v10[2] = *(MEMORY[0x1E695EFD0] + 32);
  return v7(v6, 0, 0, 0, v10, a6);
}

- (void)resume
{
  os_unfair_lock_lock(&self->_timeMachineLock);
  [(FigStateMachine *)self->_stateMachine currentState];
  [(FigStateMachine *)self->_stateMachine transitionToState:1];

  os_unfair_lock_unlock(&self->_timeMachineLock);
}

- (void)didReachEndOfDataForInput:(id)a3
{
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__BWPreviewTimeMachineSinkNode_didReachEndOfDataForInput___block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(processingQueue, block);
  v6.receiver = self;
  v6.super_class = BWPreviewTimeMachineSinkNode;
  [(BWSinkNode *)&v6 didReachEndOfDataForInput:a3];
}

void __58__BWPreviewTimeMachineSinkNode_didReachEndOfDataForInput___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 208) setPreviewTimeMachineProcessor:0];

  *(*(a1 + 32) + 208) = 0;
  os_unfair_lock_lock((*(a1 + 32) + 232));
  v2 = *(a1 + 32);
  v3 = *(v2 + 320);
  if (v3)
  {
    v4 = *(v3 + 16);
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    v6[0] = *MEMORY[0x1E695EFD0];
    v6[1] = v5;
    v6[2] = *(MEMORY[0x1E695EFD0] + 32);
    v4(v3, 0, 0, 0, v6);

    *(*(a1 + 32) + 320) = 0;
    v2 = *(a1 + 32);
  }

  [*(v2 + 224) removeAllObjects];

  *(*(a1 + 32) + 224) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 232));
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  os_unfair_lock_lock(&self->_timeMachineLock);
  v6 = [(FigStateMachine *)self->_stateMachine currentState];
  if (v6 == 4)
  {
    os_unfair_lock_unlock(&self->_timeMachineLock);
    v7 = 0;
  }

  else
  {
    v8 = v6;
    if ((self->_earliestAllowedPTS.flags & 1) != 0 && (ptmsn_getSampleBufferPTS(a3, &time1), *&time2.start.value = *&self->_earliestAllowedPTS.value, time2.start.epoch = self->_earliestAllowedPTS.epoch, CMTimeCompare(&time1.start, &time2.start) < 0) || ([(NSMutableArray *)self->_timeMachineFrames addObject:a3], [(NSMutableArray *)self->_timeMachineFrames count]<= self->_timeMachineCapacity))
    {
      v7 = v8 == 2;
      os_unfair_lock_unlock(&self->_timeMachineLock);
    }

    else
    {
      v9 = CFRetain([(NSMutableArray *)self->_timeMachineFrames firstObject]);
      [(NSMutableArray *)self->_timeMachineFrames removeObjectAtIndex:0];
      v7 = v8 == 2;
      os_unfair_lock_unlock(&self->_timeMachineLock);
      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  if (!self->_haveFrameRotationAndMirror)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a3);
    if (ImageBuffer)
    {
      BWGetPixelBufferRotationAndMirroring(ImageBuffer, &self->_frameRotationDegrees, &self->_frameMirrored);
      self->_haveFrameRotationAndMirror = 1;
    }
  }

  if (v7)
  {
    memset(&v35, 0, sizeof(v35));
    CMTimeMake(&v35, 1, 1000);
    os_unfair_lock_lock(&self->_timeMachineLock);
    if ([(FigStateMachine *)self->_stateMachine currentState]== 2)
    {
      v24 = *MEMORY[0x1E6960CC0];
      *&v34.value = *MEMORY[0x1E6960CC0];
      v11 = *(MEMORY[0x1E6960CC0] + 16);
      v34.epoch = v11;
      v12 = *(MEMORY[0x1E6960C98] + 16);
      *&time1.start.value = *MEMORY[0x1E6960C98];
      *&time1.start.epoch = v12;
      *&time1.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
      if (![(NSMutableArray *)self->_timeMachineFrames count])
      {
        p_earliestAllowedPTS = &self->_earliestAllowedPTS;
        if ((self->_earliestAllowedPTS.flags & 1) == 0)
        {
LABEL_20:
          *&duration.start.value = *&time1.start.value;
          duration.start.epoch = time1.start.epoch;
          lhs.start = v35;
          CMTimeSubtract(&time2.start, &duration.start, &lhs.start);
          *&time1.start.value = *&time2.start.value;
          time1.start.epoch = time2.start.epoch;
          time2.start = v35;
          CMTimeMultiply(&duration.start, &time2.start, 2);
          lhs.start = time1.duration;
          CMTimeAdd(&time2.start, &lhs.start, &duration.start);
          time1.duration = time2.start;
          v16 = *&self->_requestedSuspendPTSRange.start.epoch;
          *&time2.start.value = *&self->_requestedSuspendPTSRange.start.value;
          *&time2.start.epoch = v16;
          v18 = *&self->_requestedSuspendPTSRange.start.value;
          v17 = *&self->_requestedSuspendPTSRange.start.epoch;
          *&time2.duration.timescale = *&self->_requestedSuspendPTSRange.duration.timescale;
          *&duration.start.epoch = *&time1.start.epoch;
          *&duration.duration.timescale = *&time1.duration.timescale;
          *&lhs.start.value = v18;
          *&lhs.start.epoch = v17;
          *&lhs.duration.timescale = *&self->_requestedSuspendPTSRange.duration.timescale;
          *&duration.start.value = *&time1.start.value;
          v19 = CMTimeRangeContainsTimeRange(&duration, &lhs);
          duration = time2;
          CMTimeRangeGetEnd(&lhs.start, &duration);
          duration = time1;
          v20 = CMTimeRangeContainsTime(&duration, &lhs.start);
          duration = time2;
          CMTimeRangeGetEnd(&lhs.start, &duration);
          duration.start = v34;
          v21 = CMTimeCompare(&lhs.start, &duration.start);
          if (v19 || v20 || v21 < 0)
          {
            [(FigStateMachine *)self->_stateMachine transitionToState:4];
            suspendCompletionHandler = self->_suspendCompletionHandler;
            self->_suspendCompletionHandler = 0;
            if (suspendCompletionHandler)
            {
              processingQueue = self->_processingQueue;
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __60__BWPreviewTimeMachineSinkNode_renderSampleBuffer_forInput___block_invoke;
              block[3] = &unk_1E7990A30;
              v26 = time2;
              v27 = v35;
              block[4] = self;
              block[5] = suspendCompletionHandler;
              v28 = v19 != 0;
              dispatch_async(processingQueue, block);
            }
          }

          goto LABEL_25;
        }

        *&v34.value = *&p_earliestAllowedPTS->value;
        v34.epoch = self->_earliestAllowedPTS.epoch;
        *&time2.start.value = *&p_earliestAllowedPTS->value;
        time2.start.epoch = self->_earliestAllowedPTS.epoch;
        *&duration.start.value = v24;
        duration.start.epoch = v11;
        p_time2 = &time2;
LABEL_19:
        CMTimeRangeMake(&time1, &p_time2->start, &duration.start);
        goto LABEL_20;
      }

      SampleBufferPTS = ptmsn_getSampleBufferPTS([(NSMutableArray *)self->_timeMachineFrames firstObject], &v34);
      memset(&time2, 0, 24);
      ptmsn_getSampleBufferPTS([(NSMutableArray *)self->_timeMachineFrames lastObject], &time2);
      duration.start = v34;
      *&lhs.start.value = *&time2.start.value;
      lhs.start.epoch = time2.start.epoch;
      if (CMTimeCompare(&duration.start, &lhs.start) <= 0)
      {
        *&lhs.start.value = *&time2.start.value;
        lhs.start.epoch = time2.start.epoch;
        rhs = v34;
        CMTimeSubtract(&duration.start, &lhs.start, &rhs);
        lhs.start = v34;
        p_time2 = &lhs;
        goto LABEL_19;
      }

      [BWPreviewTimeMachineSinkNode renderSampleBuffer:forInput:];
    }

LABEL_25:
    os_unfair_lock_unlock(&self->_timeMachineLock);
  }
}

void __60__BWPreviewTimeMachineSinkNode_renderSampleBuffer_forInput___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v21 = a1;
  v4 = *(a1 + 32);
  a1 += 32;
  os_unfair_lock_lock(v4 + 58);
  v5 = *(a1 + 32);
  *&v30[0].value = *(a1 + 16);
  *&v30[0].epoch = v5;
  v6 = *(a1 + 64);
  *&v30[1].timescale = *(a1 + 48);
  *&lhs.start.value = *&v30[0].value;
  lhs.start.epoch = *(a1 + 32);
  *&rhs.value = v6;
  rhs.epoch = *(a1 + 80);
  CMTimeSubtract(v30, &lhs.start, &rhs);
  *&lhs.start.value = *(a1 + 64);
  lhs.start.epoch = *(a1 + 80);
  CMTimeMultiply(&rhs, &lhs.start, 2);
  time = v30[1];
  CMTimeAdd(&lhs.start, &time, &rhs);
  v30[1] = lhs.start;
  v7 = [MEMORY[0x1E696AD50] indexSet];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = a1;
  v8 = *(*a1 + 224);
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v25;
    v13 = *off_1E798A3C8;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        memset(&rhs, 0, sizeof(rhs));
        ptmsn_getSampleBufferPTS(v15, &rhs);
        lhs = *&v30[0].value;
        time = rhs;
        if (CMTimeRangeContainsTime(&lhs, &time))
        {
          v16 = CMGetAttachment(v15, v13, 0);
          if (v16)
          {
            [v2 addObject:v16];
            [v3 addObject:v15];
          }
        }

        else
        {
          [v7 addIndex:v11];
        }

        ++v11;
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v10);
  }

  [*&(*v20)[56]._os_unfair_lock_opaque removeObjectsAtIndexes:v7];
  os_unfair_lock_unlock(*v20 + 58);
  v17 = *(MEMORY[0x1E695EFD0] + 16);
  *&v30[0].value = *MEMORY[0x1E695EFD0];
  *&v30[0].epoch = v17;
  *&v30[1].timescale = *(MEMORY[0x1E695EFD0] + 32);
  if ([v2 count])
  {
    value = *v20;
    if (((*v20)[84]._os_unfair_lock_opaque & 0x10000) == 0)
    {
      __60__BWPreviewTimeMachineSinkNode_renderSampleBuffer_forInput___block_invoke_cold_1(v20, &lhs);
      value = lhs.start.value;
    }

    BWGetAffineTransformFromSensorToPreview(*(value + 340), *(value + 344), [v2 lastObject], v30);
  }

  v19 = *(*(v21 + 40) + 16);
  lhs = *&v30[0].value;
  v19();
}

- (void)handleDroppedSample:(id)a3 forInput:(id)a4
{
  if ([objc_msgSend(a3 "reason")])
  {
    os_unfair_lock_lock(&self->_timeMachineLock);
    if ([(NSMutableArray *)self->_timeMachineFrames count])
    {
      timeMachineFrames = self->_timeMachineFrames;
      self->_timeMachineFrames = objc_opt_new();
    }

    else
    {
      timeMachineFrames = 0;
    }

    os_unfair_lock_unlock(&self->_timeMachineLock);
  }

  v8.receiver = self;
  v8.super_class = BWPreviewTimeMachineSinkNode;
  [(BWNode *)&v8 handleDroppedSample:a3 forInput:a4];
}

BOOL __49__BWPreviewTimeMachineSinkNode__trimToTimeRange___block_invoke(_OWORD *a1, void *a2)
{
  ptmsn_getSampleBufferPTS(a2, &time);
  v3 = a1[3];
  *&v5.start.value = a1[2];
  *&v5.start.epoch = v3;
  *&v5.duration.timescale = a1[4];
  return CMTimeRangeContainsTime(&v5, &time) == 0;
}

- (uint64_t)_setupStateMachine
{
  if (result)
  {
    v1 = result;
    v2 = [[FigStateMachine alloc] initWithLabel:@"BWPreviewTimeMachineStateMachine" stateCount:3 initialState:1 owner:result];
    *(v1 + 240) = v2;
    [(FigStateMachine *)v2 setPerformsAtomicStateTransitions:0];
    [*(v1 + 240) setLabel:@"Running" forState:1];
    [*(v1 + 240) setLabel:@"Suspending" forState:2];
    v3 = *(v1 + 240);

    return [v3 setLabel:@"Suspended" forState:4];
  }

  return result;
}

- (uint64_t)_trimToTimeRange:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 224);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__BWPreviewTimeMachineSinkNode__trimToTimeRange___block_invoke;
    v5[3] = &__block_descriptor_80_e15_B32__0_8Q16_B24l;
    v4 = a2[1];
    v6 = *a2;
    v7 = v4;
    v8 = a2[2];
    return [*(v2 + 224) removeObjectsAtIndexes:{objc_msgSend(v3, "indexesOfObjectsPassingTest:", v5)}];
  }

  return result;
}

- (uint64_t)_computeMotionDetectionFaceRectForSampleBuffers:(uint64_t)a3 faceMotionRectOut:
{
  if (!a1)
  {
    return 0;
  }

  if ((*(a1 + 338) & 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  v6 = objc_opt_new();
  v14 = OUTLINED_FUNCTION_5_26(v6, v7, v8, v9, v10, v11, v12, v13, v61, v63, v65, v68, v3, a3, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v101, v103, v105, 0);
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = MEMORY[0];
    v18 = *off_1E798A3C8;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (MEMORY[0] != v17)
        {
          objc_enumerationMutation(a2);
        }

        v20 = *(8 * i);
        v21 = CMGetAttachment(v20, v18, 0);
        if (v21)
        {
          v21 = [v6 addObject:v21];
          if (!v16)
          {
            v21 = [CMGetAttachment(v20 @"UprightExifOrientation"];
            v16 = v21;
          }
        }
      }

      v15 = OUTLINED_FUNCTION_5_26(v21, v22, v23, v24, v25, v26, v27, v28, v62, v64, v66, v69, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v107);
    }

    while (v15);
  }

  if ([v6 count])
  {
    v29 = [a1 frameDimensions];
    if (v6 && (v30 = v29, v31 = *(a1 + 340), v32 = *(a1 + 344), [v6 count]))
    {
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v33 = [v6 reverseObjectEnumerator];
      v34 = [v33 countByEnumeratingWithState:&v114 objects:v113 count:16];
      if (v34)
      {
        v35 = v34;
        v67 = v32;
        v70 = v31;
        v36 = *v115;
        v37 = *off_1E798B310;
        v38 = *off_1E798B308;
        v39 = MEMORY[0x1E695F050];
LABEL_19:
        v40 = 0;
        while (1)
        {
          if (*v115 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v41 = *(*(&v114 + 1) + 8 * v40);
          if ([objc_msgSend(v41 objectForKeyedSubscript:{v37), "intValue"}] == 2)
          {
            v42 = [v41 objectForKeyedSubscript:v38];
            v43 = *(v39 + 16);
            rect.origin = *v39;
            rect.size = v43;
            if (CGRectMakeWithDictionaryRepresentation([v42 firstObject], &rect))
            {
              break;
            }
          }

          if (v35 == ++v40)
          {
            v35 = [v33 countByEnumeratingWithState:&v114 objects:v113 count:16];
            if (v35)
            {
              goto LABEL_19;
            }

            goto LABEL_40;
          }
        }

        memset(&v111, 0, sizeof(v111));
        BWGetAffineTransformFromSensorToPreview(v70, v67, v41, &v111);
        CGAffineTransformMakeScale(&t2, v30, SHIDWORD(v30));
        t1 = v111;
        CGAffineTransformConcat(&v110, &t1, &t2);
        v111 = v110;
        v118 = CGRectApplyAffineTransform(rect, &v110);
        v44 = v118.size.width * 1.4;
        v45 = v118.size.height * 1.4;
        if (v30 <= SHIDWORD(v30))
        {
          v46 = HIDWORD(v30);
        }

        else
        {
          v46 = v30;
        }

        if (v44 <= v45)
        {
          v47 = v118.size.height * 1.4;
        }

        else
        {
          v47 = v118.size.width * 1.4;
        }

        if (v44 >= v45)
        {
          v48 = v118.size.height * 1.4;
        }

        else
        {
          v48 = v118.size.width * 1.4;
        }

        v49 = vcvtd_n_f64_s32(v46, 1uLL);
        v50 = v49 / v47;
        if (v47 <= v49)
        {
          v50 = 1.0;
        }

        v51 = vcvtd_n_f64_s32(v46, 2uLL);
        if (v48 < v51)
        {
          if (v47 > v49)
          {
            goto LABEL_40;
          }

          v50 = v51 / v48;
        }

        v71 = SHIDWORD(v30);
        v54 = v44 * v50;
        v55 = v45 * v50;
        v119.origin.x = OUTLINED_FUNCTION_3_22();
        MidX = CGRectGetMidX(v119);
        v120.origin.x = OUTLINED_FUNCTION_3_22();
        v57 = MidX - v54 * 0.5;
        v58 = CGRectGetMidY(v120) - v55 * 0.5;
        OUTLINED_FUNCTION_2_30();
        CGRectIntersection(v121, v125);
        OUTLINED_FUNCTION_2_30();
        if (!CGRectEqualToRect(v122, v126))
        {
          v59 = v30;
          if (v57 >= 0.0)
          {
            v60 = v57;
          }

          else
          {
            v60 = 0.0;
          }

          v123.origin.x = v60;
          v123.origin.y = v58;
          v123.size.width = v54;
          v123.size.height = v55;
          if (CGRectGetMaxX(v123) <= v59)
          {
            v57 = v60;
          }

          else
          {
            v57 = v59 - v54;
          }

          if (v58 < 0.0)
          {
            v58 = 0.0;
          }

          v124.origin.x = v57;
          v124.origin.y = v58;
          v124.size.width = v54;
          v124.size.height = v55;
          if (CGRectGetMaxY(v124) > v71)
          {
            v58 = v71 - v55;
          }
        }

        if (v74)
        {
          *v74 = v57;
          v74[1] = v58;
          v52 = 1;
          v74[2] = v54;
          v74[3] = v55;
        }

        else
        {
          v52 = 1;
        }

        goto LABEL_41;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_36();
      FigDebugAssert3();
    }
  }

LABEL_40:
  v52 = 0;
LABEL_41:

  return v52;
}

- (uint64_t)dealloc
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  result = FigDebugAssert3();
  *a2 = *a1;
  return result;
}

- (uint64_t)suspendWithPTSRange:(void *)a1 completionHandler:(void *)a2 .cold.1(void *a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  result = FigDebugAssert3();
  *a2 = *a1;
  return result;
}

- (uint64_t)suspendWithPTSRange:completionHandler:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t __60__BWPreviewTimeMachineSinkNode_renderSampleBuffer_forInput___block_invoke_cold_1(void *a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_5();
  result = FigDebugAssert3();
  *a2 = *a1;
  return result;
}

@end