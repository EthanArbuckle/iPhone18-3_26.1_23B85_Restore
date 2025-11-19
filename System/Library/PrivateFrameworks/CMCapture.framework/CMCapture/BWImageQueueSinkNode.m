@interface BWImageQueueSinkNode
+ (void)initialize;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)previewPTSAtHostTime:(SEL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)previewPTSDisplayedAtHostTime:(SEL)a3 allowingExtrapolation:(unint64_t)a4;
- (BWImageQueueSinkNode)initWithHFRSupport:(BOOL)a3 ispJitterCompensationEnabled:(BOOL)a4 clientAuditToken:(id *)a5 sinkID:(id)a6;
- (FigCaptureVideoTransform)transform;
- (_DWORD)_createContextForBuffer:(uint64_t)a3 bufferId:(__int128 *)a4 framePTS:;
- (__n128)_createFrameSender;
- (double)_displayTimeSyncedWithFramePTS:(uint64_t)a1;
- (double)_processBufferContext:(uint64_t)a1;
- (double)_processReleasedContexts;
- (uint64_t)_bufferIDForSurface:(uint64_t)a1;
- (uint64_t)_cleanupImageQueueContext;
- (uint64_t)_collectUnconsumedBuffersWithReason:(uint64_t)result collectMostFutureBuffers:;
- (uint64_t)_ensureImageQueue;
- (uint64_t)_removeBufferFromInternalQueues:(uint64_t)a3 bufferId:;
- (uint64_t)_updateInputRequirements;
- (void)_cleanupIOSurfaces;
- (void)_storePreviewPTS:(uint64_t)a3 withHostTime:(int)a4 isOverCaptureFrame:;
- (void)_transferIOSurfaceOwnershipToEnqueuedBufferContext;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)fencePortGenerationIDWillChange;
- (void)handleDroppedSample:(id)a3 forInput:(id)a4;
- (void)inputConnectionWillBeEnabled;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)registerSurfacesFromSourcePool:(id)a3;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)setMaxLossyCompressionLevel:(int)a3;
- (void)updateClientAuditToken:(id *)a3;
@end

@implementation BWImageQueueSinkNode

- (uint64_t)_ensureImageQueue
{
  if (result)
  {
    FPSupport_EnsureCAImageQueue();
    OUTLINED_FUNCTION_3_100();
    CAImageQueueGetFlags();
    CAImageQueueSetFlags();
    v1 = OUTLINED_FUNCTION_3_100();

    return MEMORY[0x1EEDD5F08](v1, 0);
  }

  return result;
}

- (uint64_t)_updateInputRequirements
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 8) formatRequirements];
    FigGetAlignmentForIOSurfaceOutput();
    [v2 setBytesPerRowAlignment:0];
    [v2 setPlaneAlignment:0];
    v3 = [MEMORY[0x1E695DF70] array];
    [v3 addObjectsFromArray:&unk_1F2249C00];
    [v3 addObjectsFromArray:{FigCaptureSupportedPixelFormatsForCompressionType(4, 1, 0, *(v1 + 648))}];
    [v2 setSupportedPixelFormats:v3];
    return [v2 setMemoryPoolUseAllowed:0];
  }

  return result;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v4.receiver = self;
  v4.super_class = BWImageQueueSinkNode;
  [(BWNode *)&v4 prepareForCurrentConfigurationToBecomeLive];
  self->_lastDisplayVSyncInterval = 0.0;
  self->_lastDisplaySamplingTime = 0.0;
  self->_lastFramePTS = 0.0;
  self->_lastDisplayTime = 0.0;
  self->_lateFrameIntervalStartPTS = 0.0;
  self->_lastHarmonicFractionalVSyncInterval = NAN;
  self->_previousFrameDuration = 0.0;
  self->_framesSinceLastHarmonicCompensation = 0;
  self->_lastFencedGenerationID = 0;
  FigSimpleMutexLock();
  [(NSMutableArray *)self->_previewPTSHistory removeAllObjects];
  self->_firstFramePTS = **&MEMORY[0x1E6960C70];
  self->_firstDisplayedFrameHostTime = 0;
  self->_didCallFirstFrameAtHostTimeCallback = 0;
  self->_didCallFirstFrameCallback = 0;
  self->_firstOverCaptureDisplayedFrameHostTime = 0;
  self->_didLogFirstOverCaptureFrame = 0;
  FigSimpleMutexUnlock();
  [(BWImageQueueSinkNode *)self _ensureImageQueue];
  OUTLINED_FUNCTION_33();
  if (v3)
  {
    self->_imageQueueContext = FPSupport_CopyCAContext();
  }

  [(BWImageQueueSinkNode *)self _createFrameSender];
}

- (__n128)_createFrameSender
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 724));
    v2 = *(a1 + 708);
    v17 = *(a1 + 692);
    v18 = v2;
    v3 = *(a1 + 280);
    v15 = *(a1 + 264);
    v16 = v3;
    v4 = *(a1 + 688);
    os_unfair_lock_unlock((a1 + 724));
    v13 = v17;
    v14 = v18;
    if (FigCaptureAuditTokenIsValid(&v13))
    {
      v13 = v17;
      v14 = v18;
      v12[0] = v15;
      v12[1] = v16;
      if (!FigCaptureAuditTokensAreEqual(&v13, v12))
      {
        v6 = [MEMORY[0x1E695DEF0] dataWithBytes:&v17 length:32];
        v7 = getpid();
        if (v4 == v7)
        {
          v8 = 0;
          v9 = 0;
        }

        else
        {
          v9 = v7;
          v13 = 0u;
          v14 = 0u;
          v8 = [MEMORY[0x1E695DEF0] dataWithBytes:&v13 length:{32, FigCaptureGetCurrentProcessAuditToken(&v13)}];
        }

        v10 = -[CMCaptureFrameSenderService initWithEndpointType:endpointPID:endpointProxyPID:endpointAuditToken:endpointProxyAuditToken:endpointCameraUniqueID:]([CMCaptureFrameSenderService alloc], "initWithEndpointType:endpointPID:endpointProxyPID:endpointAuditToken:endpointProxyAuditToken:endpointCameraUniqueID:", @"VideoPreview", *(a1 + 688), v9, v6, v8, [objc_msgSend(*(a1 + 680) "captureStream")]);
        os_unfair_lock_lock((a1 + 724));

        *(a1 + 256) = v10;
        v11 = v18;
        *(a1 + 264) = v17;
        *(a1 + 280) = v11;
        os_unfair_lock_unlock((a1 + 724));
      }
    }
  }

  return result;
}

- (void)fencePortGenerationIDWillChange
{
  if (self->_fenceSupportEnabled)
  {
    self->_fencePortGenerationIDWillChange = 1;
  }
}

- (double)_processReleasedContexts
{
  if (a1 && *(a1 + 480))
  {
    do
    {
      v2 = 0;
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *(*(a1 + 472) + 8 * v2);
        if (*(v5 + 24) && *(v5 + 120) == 1)
        {
          if (!v3 || (time1 = *(v3 + 32), v7 = *(v5 + 32), CMTimeCompare(&time1, &v7) >= 1))
          {
            v3 = *(*(a1 + 472) + 8 * v2);
          }

          v4 = 1;
        }

        ++v2;
      }

      while (*(a1 + 480) > v2);
      if (v3)
      {
        result = [(BWImageQueueSinkNode *)a1 _processBufferContext:v3];
        if ((v4 & 1) == 0)
        {
          return result;
        }
      }

      else if ((v4 & 1) == 0)
      {
        return result;
      }
    }

    while (*(a1 + 480));
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWImageQueueSinkNode)initWithHFRSupport:(BOOL)a3 ispJitterCompensationEnabled:(BOOL)a4 clientAuditToken:(id *)a5 sinkID:(id)a6
{
  v7 = a4;
  v8 = a3;
  v23.receiver = self;
  v23.super_class = BWImageQueueSinkNode;
  v9 = [(BWSinkNode *)&v23 initWithSinkID:a6];
  v10 = v9;
  if (v9)
  {
    if (v8)
    {
      v12 = 5;
    }

    else
    {
      v12 = 3;
    }

    v13 = v12 + (v8 && v7);
    v9->_imageQueueCapacity = v13;
    v9->_imageQueueRequiredFreeSlots = v13 - 3;
    v9->_imageQueueCurrentFreeSlots = v9->_imageQueueCapacity;
    v9->_imageQueueWidth = 640;
    v9->_imageQueueHeight = 480;
    v9->_resetPreviewSynchronizerOnNextFrame = 0;
    v9->_bufferIDsInQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v10 + 488) = objc_alloc_init(MEMORY[0x1E695DF70]);
    *(v10 + 496) = FigSimpleMutexCreate();
    *(v10 + 504) = FigDispatchQueueCreateWithPriority();
    *(v10 + 408) = 40;
    v14 = *&a5->var0[4];
    v21 = *a5->var0;
    v22 = v14;
    if (FigCaptureClientIsRunningInXCTest(&v21))
    {
      *(v10 + 408) = 0;
    }

    v15 = FigCapturePlatformIdentifier() > 5;
    *(v10 + 384) = v15;
    *(v10 + 385) = v15;
    *(v10 + 386) = v15;
    *(v10 + 387) = v15;
    v16 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v10];
    v17 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v17 setSupportedCacheModes:+[BWVideoFormatRequirements cacheModesForOptimizedDisplayAccess]];
    [(BWNodeInput *)v16 setFormatRequirements:v17];
    [(BWNodeInput *)v16 setRetainedBufferCount:*(v10 + 208)];
    [v10 addInput:v16];

    [(BWImageQueueSinkNode *)v10 _updateInputRequirements];
    [v10 setSupportsLiveReconfiguration:1];
    [v10 setSupportsPrepareWhileRunning:1];
    *(v10 + 456) = FigSimpleMutexCreate();
    *(v10 + 672) = objc_alloc_init(BWStats);
    v18 = *&a5->var0[4];
    v21 = *a5->var0;
    v22 = v18;
    *(v10 + 688) = FigCaptureGetPIDFromAuditToken(&v21);
    v19 = *&a5->var0[4];
    *(v10 + 692) = *a5->var0;
    *(v10 + 708) = v19;
    *(v10 + 724) = 0;
    *&v19 = -1;
    *(&v19 + 1) = -1;
    *(v10 + 264) = v19;
    *(v10 + 280) = v19;
    v20 = [BWLimitedGMErrorLogger alloc];
    *(v10 + 736) = -[BWLimitedGMErrorLogger initWithName:maxLoggingCount:](v20, "initWithName:maxLoggingCount:", [MEMORY[0x1E696AEC0] stringWithFormat:@"''%@", v10], 5);
    *(v10 + 609) = 0;
  }

  return v10;
}

- (void)dealloc
{
  self->_previewPTSHistory = 0;

  FigSimpleMutexDestroy();
  BWPreviewSynchronizerDestroy(self->_previewSynchronizer);
  self->_previewSynchronizer = 0;
  v3 = [(NSMutableArray *)self->_bufferIDsInQueue count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      [-[NSMutableArray objectAtIndexedSubscript:](self->_bufferIDsInQueue objectAtIndexedSubscript:{i), "unsignedLongLongValue"}];
      CAImageQueueUnregisterBuffer();
    }
  }

  [(BWImageQueueSinkNode *)self _cleanupIOSurfaces];
  [(BWImageQueueSinkNode *)self _cleanupImageQueueContext];
  imageQueue = self->_imageQueue;
  if (imageQueue)
  {
    CFRelease(imageQueue);
  }

  self->_bufferIDsInQueue = 0;
  enqueuedBufferContexts = self->_enqueuedBufferContexts;
  if (enqueuedBufferContexts)
  {
    if (self->_enqueuedBufferContextCount)
    {
      v8 = 0;
      do
      {
        iqsn_releaseBufferContext(self->_enqueuedBufferContexts[v8]);
        self->_enqueuedBufferContexts[v8++] = 0;
      }

      while (v8 < self->_enqueuedBufferContextCount);
      enqueuedBufferContexts = self->_enqueuedBufferContexts;
    }

    free(enqueuedBufferContexts);
  }

  if (self->_imageQueueSlot)
  {
    FPSupport_DeleteCASlot();
    self->_imageQueueSlot = 0;
  }

  self->_holdingBuffersForClientAssertion = 0;
  FigSimpleMutexDestroy();

  v9.receiver = self;
  v9.super_class = BWImageQueueSinkNode;
  [(BWSinkNode *)&v9 dealloc];
}

- (void)setMaxLossyCompressionLevel:(int)a3
{
  if (self->_maxLossyCompressionLevel != a3)
  {
    self->_maxLossyCompressionLevel = a3;
    [(BWImageQueueSinkNode *)self _updateInputRequirements];
  }
}

- (FigCaptureVideoTransform)transform
{
  p_transform = &self->_transform;
  v3 = *&self->_transform.mirrored;
  dimensions = p_transform->dimensions;
  result.dimensions = dimensions;
  result.mirrored = v3;
  result.rotationDegrees = HIDWORD(v3);
  return result;
}

- (void)registerSurfacesFromSourcePool:(id)a3
{
  if (self->_imageQueue)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __55__BWImageQueueSinkNode_registerSurfacesFromSourcePool___block_invoke;
    v4[3] = &unk_1E799C940;
    v4[4] = self;
    [a3 enumerateSurfacesUsingBlock:v4];
    FigSimpleMutexLock();
    if ([(BWVideoFormat *)[(BWNodeInput *)self->super.super._input videoFormat] colorSpaceProperties])
    {
      [(BWImageQueueSinkNode *)self _cleanupIOSurfaces];
    }

    FigSimpleMutexUnlock();
  }
}

uint64_t __55__BWImageQueueSinkNode_registerSurfacesFromSourcePool___block_invoke(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  [(BWImageQueueSinkNode *)*(a1 + 32) _bufferIDForSurface:a2];

  return FigSimpleMutexUnlock();
}

- (void)inputConnectionWillBeEnabled
{
  if (self->_previewSynchronizer)
  {
    self->_resetPreviewSynchronizerOnNextFrame = 1;
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)previewPTSDisplayedAtHostTime:(SEL)a3 allowingExtrapolation:(unint64_t)a4
{
  v20 = a5;
  *retstr = **&MEMORY[0x1E6960C70];
  FigSimpleMutexLock();
  v7 = [(NSMutableArray *)self->_previewPTSHistory count];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v22 = self;
  v8 = [(NSMutableArray *)self->_previewPTSHistory reverseObjectEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    v12 = 1;
    while (2)
    {
      v13 = 0;
      v14 = v7;
      v7 -= v10;
      do
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v30 + 1) + 8 * v13);
        v27 = 0u;
        v28 = 0u;
        [v15 getValue:&v27];
        v16 = *(&v28 + 1);
        v17 = a4 - *(&v28 + 1);
        if (a4 >= *(&v28 + 1))
        {
          *&retstr->var0 = v27;
          retstr->var3 = v28;
          if (v14 >= 2 && (v12 & 1) != 0 && v20)
          {
            v27 = 0u;
            v28 = 0u;
            [-[NSMutableArray objectAtIndexedSubscript:](v22->_previewPTSHistory objectAtIndexedSubscript:{(v14 - 2)), "getValue:", &v27}];
            *&rhs.value = v27;
            rhs.epoch = v28;
            memset(&v26, 0, sizeof(v26));
            lhs = *retstr;
            v18 = v17 / (v16 - *(&v28 + 1));
            CMTimeSubtract(&v26, &lhs, &rhs);
            memset(&lhs, 0, sizeof(lhs));
            time = v26;
            CMTimeMultiply(&rhs, &time, v18);
            time = *retstr;
            CMTimeAdd(&lhs, &time, &rhs);
            FigHostTimeToNanoseconds();
            FigHostTimeToNanoseconds();
            FigHostTimeToNanoseconds();
            *retstr = lhs;
          }

          return FigSimpleMutexUnlock();
        }

        v12 = 0;
        ++v13;
        --v14;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v30 objects:v29 count:16];
      v12 = 0;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  return FigSimpleMutexUnlock();
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)previewPTSAtHostTime:(SEL)a3
{
  *retstr = **&MEMORY[0x1E6960C70];
  FigSimpleMutexLock();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(NSMutableArray *)self->_previewPTSHistory reverseObjectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v14 = 0u;
        v15 = 0u;
        [v12 getValue:&v14];
        if (*(&v15 + 1) <= a4)
        {
          *&retstr->var0 = v14;
          retstr->var3 = v15;
          return FigSimpleMutexUnlock();
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v16 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  return FigSimpleMutexUnlock();
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  if ([(BWSinkNode *)self isActive])
  {
    if (dword_1ED8442D0)
    {
      v13 = 0;
      v12 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return;
  }

  if (a4)
  {
    [BWImageQueueSinkNode configurationWithID:a4 updatedFormat:self didBecomeLiveForInput:?];
  }

  else if (!self)
  {
    goto LABEL_7;
  }

  self->_liveSyncStrategy = self->_syncStrategy;
  self->_savedSyncStrategy = 0;
  self->_liveVideoHDRImageStatisticsEnabled = self->_videoHDRImageStatisticsEnabled;
  self->_cleanupImageQueueAtEndOfData = 0;
  self->_imageQueueNominalFrameRate = 0.0;
LABEL_7:
  self->_resetPreviewSynchronizerOnNextFrame = 0;
  previewSynchronizer = self->_previewSynchronizer;
  if (self->_liveSyncStrategy == 2)
  {
    if (previewSynchronizer)
    {
      BWPreviewSynchronizerReset(previewSynchronizer);
    }

    else
    {
      self->_previewSynchronizer = BWPreviewSynchronizerCreate(self->_imageQueue);
    }

    self->_imageQueueRequiredFreeSlots = 0;
  }

  else
  {
    BWPreviewSynchronizerDestroy(previewSynchronizer);
    self->_previewSynchronizer = 0;
    if (self->_liveSyncStrategy == 3)
    {
      self->_imageQueueRequiredFreeSlots = 0;
      self->_lastFramePTS = 0.0;
      self->_lastDisplayTime = 0.0;
    }

    else
    {
      self->_imageQueueRequiredFreeSlots = self->_imageQueueCapacity - 3;
    }
  }

  v11.receiver = self;
  v11.super_class = BWImageQueueSinkNode;
  [(BWSinkNode *)&v11 configurationWithID:a3 updatedFormat:a4 didBecomeLiveForInput:a5];
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  if (a3)
  {
    v12.receiver = self;
    v12.super_class = BWImageQueueSinkNode;
    [(BWSinkNode *)&v12 didReachEndOfDataForConfigurationID:v7 input:v8, v9.receiver, v9.super_class];
  }

  else
  {
    mach_absolute_time();
    FigHostTimeToNanoseconds();
    if (dword_1ED8442D0)
    {
      v11 = 0;
      v10 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [BWImageQueueSinkNode _collectUnconsumedBuffersWithReason:? collectMostFutureBuffers:?];
    [(BWImageQueueSinkNode *)self _processReleasedContexts];
    [(BWImageQueueSinkNode *)self _cleanupIOSurfaces];
    [(BWImageQueueSinkNode *)self _cleanupImageQueueContext];
    [(BWImageQueueSinkNode *)self _transferIOSurfaceOwnershipToEnqueuedBufferContext];
    os_unfair_lock_lock(&self->_clientPIDLock);

    self->_frameSender = 0;
    *&v6 = -1;
    *(&v6 + 1) = -1;
    *self->_frameSenderClientAuditToken.val = v6;
    *&self->_frameSenderClientAuditToken.val[4] = v6;
    os_unfair_lock_unlock(&self->_clientPIDLock);
    FigSimpleMutexLock();
    [(NSMutableArray *)self->_previewPTSHistory removeAllObjects];
    FigSimpleMutexUnlock();
    self->_numFramesReceived = 0;
    self->_receivingBlackenedFrames = 0;
    self->_firstDisplayedFrameHostTime = 0;
    self->_didCallFirstFrameAtHostTimeCallback = 0;
    self->_didCallFirstFrameCallback = 0;
    self->_firstOverCaptureDisplayedFrameHostTime = 0;
    self->_didLogFirstOverCaptureFrame = 0;
    [(BWLimitedGMErrorLogger *)self->_limitedGMErrorLogger resetCurrentLoggingCounter];
    self->_cleanupImageQueueAtEndOfData = 0;
    [(BWSinkNode *)&v9 didReachEndOfDataForConfigurationID:v7 input:v8, self, BWImageQueueSinkNode];
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  memset(&v43, 0, sizeof(v43));
  if (a3)
  {
    v6 = CMGetAttachment(a3, *off_1E798A420, 0);
    CMTimeMakeFromDictionary(&v43, v6);
  }

  else
  {
    v43 = **&MEMORY[0x1E6960C70];
  }

  if ((v43.flags & 1) == 0)
  {
    CMSampleBufferGetPresentationTimeStamp(&time, a3);
    v43 = time;
  }

  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    time = v43;
    CMTimeGetSeconds(&time);
    kdebug_trace();
  }

  if (a3)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a3);
    IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
    FigSimpleMutexLock();
    v38 = [(BWImageQueueSinkNode *)self _bufferIDForSurface:?];
    FigSimpleMutexUnlock();
    ++self->_numFramesReceived;
    v10 = CMGetAttachment(a3, @"FrameIsBlackened", 0);
    if ([v10 BOOLValue])
    {
      v11 = 1;
      if (!self->_receivingBlackenedFrames && dword_1ED8442D0)
      {
        LODWORD(rhs.value) = 0;
        v42 = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v42);
        v11 = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      v11 = 0;
      if (self->_receivingBlackenedFrames && dword_1ED8442D0)
      {
        LODWORD(rhs.value) = 0;
        v42 = OS_LOG_TYPE_DEFAULT;
        v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v13, v42);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v11 = 0;
      }
    }

    self->_receivingBlackenedFrames = v11;
    if (!v10 && !self->_didCallFirstFrameAtHostTimeCallback)
    {
      if ((self->_firstFramePTS.flags & 1) == 0)
      {
        self->_firstFramePTS = v43;
      }

      if (self->_firstDisplayedFrameHostTime)
      {
        if (*v7)
        {
          mach_absolute_time();
          if (*v7 == 1)
          {
            FigHostTimeToNanoseconds();
            time = self->_firstDisplayedFramePTS;
            CMTimeGetSeconds(&time);
            kdebug_trace();
          }
        }

        if (!self->_didCallFirstFrameCallback)
        {
          [(BWImageQueueSinkNodePreviewTapDelegate *)self->_previewTapDelegate imageQueueSinkNodeDidDisplayFirstFrame:self timedOut:0];
          self->_didCallFirstFrameCallback = 1;
          if (dword_1ED8442D0)
          {
            LODWORD(rhs.value) = 0;
            v42 = OS_LOG_TYPE_DEFAULT;
            v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v37, v42);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        [(BWImageQueueSinkNodePreviewTapDelegate *)self->_previewTapDelegate imageQueueSinkNodeDidDisplayFirstFrame:self atHostTime:self->_firstDisplayedFrameHostTime, v35, v36];
        self->_didCallFirstFrameAtHostTimeCallback = 1;
      }
    }

    if (self->_firstOverCaptureDisplayedFrameHostTime && *v7 && !self->_didLogFirstOverCaptureFrame)
    {
      mach_absolute_time();
      if (*v7 == 1)
      {
        FigHostTimeToNanoseconds();
        time = *(&self->_didCallFirstFrameCallback + 3);
        CMTimeGetSeconds(&time);
        kdebug_trace();
      }

      self->_didLogFirstOverCaptureFrame = 1;
    }

    if (!self->_didCallFirstFrameCallback && (self->_triggerDisplayTimeout || self->_numFramesReceived >= self->_numFramesReceivedBeforeFirstDisplayTimeout))
    {
      [(BWImageQueueSinkNodePreviewTapDelegate *)self->_previewTapDelegate imageQueueSinkNodeDidDisplayFirstFrame:self timedOut:1, v35, v36];
      self->_didCallFirstFrameCallback = 1;
      if (dword_1ED8442D0)
      {
        LODWORD(rhs.value) = 0;
        v42 = OS_LOG_TYPE_DEFAULT;
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, v42);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    if (self->_fenceSupportEnabled)
    {
      if (self->_fencePortGenerationIDWillChange)
      {
        self->_fencePortGenerationIDWillChange = 0;
        self->_framesSinceLastFenceIDWillChange = 0;
        if (!self->_savedSyncStrategy)
        {
          self->_savedSyncStrategy = self->_liveSyncStrategy;
        }

        self->_liveSyncStrategy = 1;
      }

      else
      {
        savedSyncStrategy = self->_savedSyncStrategy;
        if (savedSyncStrategy && self->_framesSinceLastFenceIDWillChange >= 16 && self->_framesSinceLastFence >= 16)
        {
          self->_liveSyncStrategy = savedSyncStrategy;
          self->_savedSyncStrategy = 0;
        }
      }

      ++self->_framesSinceLastFenceIDWillChange;
    }

    liveSyncStrategy = self->_liveSyncStrategy;
    if (liveSyncStrategy == 2)
    {
      if (self->_resetPreviewSynchronizerOnNextFrame)
      {
        BWPreviewSynchronizerReset(self->_previewSynchronizer);
        self->_resetPreviewSynchronizerOnNextFrame = 0;
      }

      InsertionTime = BWPreviewSynchronizerGetInsertionTime(self->_previewSynchronizer, a3);
    }

    else
    {
      if (liveSyncStrategy != 3)
      {
        v17 = -1.0e10;
LABEL_57:
        v19 = CACurrentMediaTime();
        if (self->_imageQueueCurrentFreeSlots <= self->_imageQueueRequiredFreeSlots)
        {
          v20 = CAImageQueueCollect();
          self->_imageQueueCurrentFreeSlots = v20;
          if (v20 <= self->_imageQueueRequiredFreeSlots)
          {
            [BWImageQueueSinkNode _collectUnconsumedBuffersWithReason:? collectMostFutureBuffers:?];
          }
        }

        if ([(BWFigVideoCaptureDevice *)self->_captureDevice cinematicVideoEnabled:v35])
        {
          memset(&time, 0, sizeof(time));
          CMTimeMakeWithSeconds(&lhs, v17, 1000000000);
          rhs = v43;
          CMTimeSubtract(&time, &lhs, &rhs);
          frameDisplayLatencyStats = self->_frameDisplayLatencyStats;
          lhs = time;
          [(BWStats *)frameDisplayLatencyStats addDataPoint:CMTimeGetSeconds(&lhs)];
          [(BWStats *)self->_frameDisplayLatencyStats average];
          *&v22 = v22;
          [(BWFigVideoCaptureDevice *)self->_captureDevice setCinematicVideoAverageRenderingTime:v22];
          [(BWStats *)self->_frameDisplayLatencyStats max];
          *&v23 = v23;
          [(BWFigVideoCaptureDevice *)self->_captureDevice setCinematicVideoWorstCaseRenderingTime:v23];
        }

        v24 = CMGetAttachment(a3, @"CAContextFencePortSendRight", 0);
        v25 = CMGetAttachment(a3, *off_1E798A3C8, 0);
        v26 = [objc_msgSend(v25 objectForKeyedSubscript:{*off_1E798A8B8), "BOOLValue"}];
        [objc_msgSend(v25 objectForKeyedSubscript:{*off_1E798B210), "floatValue"}];
        if (self->_imageQueueNominalFrameRate != v27)
        {
          self->_imageQueueNominalFrameRate = v27;
          CAImageQueueSetNominalFrameRate();
        }

        v29 = self->_imageQueueCurrentFreeSlots > self->_imageQueueRequiredFreeSlots || v24 != 0;
        if ((v29 | v26))
        {
          BWSampleBufferRemoveAllAttachedMedia(a3);
          time = v43;
          v32 = [(BWImageQueueSinkNode *)self _createContextForBuffer:a3 bufferId:v38 framePTS:&time.value];
          if (self->_fenceSupportEnabled)
          {
            [(BWImageQueueSinkNode *)a3 renderSampleBuffer:self forInput:&time];
          }

          if (*v7 == 1)
          {
            time = v43;
            CMTimeGetSeconds(&time);
            CMTimeMakeWithSeconds(&time, v19, 1000000000);
            rhs = v43;
            CMTimeSubtract(&lhs, &time, &rhs);
            time = lhs;
            CMTimeGetSeconds(&time);
            CMTimeMakeWithSeconds(&time, v17, 1000000000);
            rhs = v43;
            CMTimeSubtract(&lhs, &time, &rhs);
            time = lhs;
            CMTimeGetSeconds(&time);
            kdebug_trace();
            if (*v7 == 1)
            {
              time = v43;
              CMTimeGetSeconds(&time);
              kdebug_trace();
            }
          }

          FigCaptureTransformFlipAppliedBeforeRotationToAfter(self->_transform.mirrored, self->_transform.rotationDegrees);
          inserted = CAImageQueueInsertImageWithRotation();
          if (inserted)
          {
            os_unfair_lock_lock(&self->_clientPIDLock);
            frameSender = self->_frameSender;
            if (frameSender)
            {
              [(CMCaptureFrameSenderService *)frameSender sendFrame:a3];
            }

            else
            {
              [(BWLimitedGMErrorLogger *)self->_limitedGMErrorLogger logErrorNumber:0xFFFFFFFFLL errorString:@"Frame sender is nil during render.  Skipping sending frame."];
            }

            os_unfair_lock_unlock(&self->_clientPIDLock);
            FigSimpleMutexLock();
            -[NSMutableArray addObject:](self->_bufferIDsInQueue, "addObject:", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v38]);
            FigSimpleMutexUnlock();
          }

          else
          {
            iqsn_cleanupBufferContext(v32);
            iqsn_releaseBufferContext(v32);
          }

          if (self->_fenceSupportEnabled)
          {
            [MEMORY[0x1E6979518] commit];
          }

          self->_imageQueueCurrentFreeSlots = CAImageQueueCollect();
          [(BWImageQueueSinkNode *)self _processReleasedContexts];
          if (inserted)
          {
            goto LABEL_74;
          }
        }

        else
        {
          inserted = 0;
        }

        if (*v7 == 1)
        {
          time = v43;
          CMTimeGetSeconds(&time);
          kdebug_trace();
        }

LABEL_74:
        previewTapDelegate = self->_previewTapDelegate;
        if (previewTapDelegate)
        {
          [(BWImageQueueSinkNodePreviewTapDelegate *)previewTapDelegate imageQueueSinkNode:self didAttemptToEnqueuePreviewSampleBuffer:a3 withSuccess:inserted];
        }

        return;
      }

      time = v43;
      Seconds = CMTimeGetSeconds(&time);
      InsertionTime = [(BWImageQueueSinkNode *)self _displayTimeSyncedWithFramePTS:?];
    }

    v17 = InsertionTime;
    goto LABEL_57;
  }
}

- (void)handleDroppedSample:(id)a3 forInput:(id)a4
{
  if ([objc_msgSend(a3 "reason")])
  {
    [BWImageQueueSinkNode _collectUnconsumedBuffersWithReason:? collectMostFutureBuffers:?];
  }

  v7.receiver = self;
  v7.super_class = BWImageQueueSinkNode;
  [(BWNode *)&v7 handleDroppedSample:a3 forInput:a4];
}

- (void)_cleanupIOSurfaces
{
  if (a1)
  {
    v2 = *(a1 + 448);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (([*(a1 + 464) containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", *(*(a1 + 440) + 8 * i))}] & 1) == 0)
        {
          CAImageQueueUnregisterBuffer();
        }
      }
    }

    *(a1 + 448) = 0;
    free(*(a1 + 440));
    *(a1 + 440) = 0;

    *(a1 + 432) = 0;
  }
}

- (uint64_t)_cleanupImageQueueContext
{
  if (result)
  {
    v1 = result;
    if (*(result + 640))
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] activateBackground:1];

      *(v1 + 640) = 0;
      v2 = MEMORY[0x1E6979518];

      return [v2 commit];
    }
  }

  return result;
}

- (uint64_t)_bufferIDForSurface:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 432);
  if (!v4)
  {
    *(a1 + 432) = objc_alloc_init(MEMORY[0x1E695DF70]);
    goto LABEL_6;
  }

  v5 = [v4 indexOfObjectIdenticalTo:a2];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_6:
    v6 = CAImageQueueRegisterIOSurfaceBuffer();
    v7 = *(a1 + 448) + 1;
    *(a1 + 448) = v7;
    v8 = malloc_type_realloc(*(a1 + 440), 8 * v7, 0x100004000313F17uLL);
    *(a1 + 440) = v8;
    v8[*(a1 + 448) - 1] = v6;
    [*(a1 + 432) addObject:a2];
    return v6;
  }

  return *(*(a1 + 440) + 8 * v5);
}

- (void)updateClientAuditToken:(id *)a3
{
  os_unfair_lock_lock(&self->_clientPIDLock);
  v5 = *&a3->var0[4];
  *self->_clientAuditToken.val = *a3->var0;
  *&self->_clientAuditToken.val[4] = v5;
  v6 = *&a3->var0[4];
  v8[0] = *a3->var0;
  v8[1] = v6;
  self->_clientPID = FigCaptureGetPIDFromAuditToken(v8);
  holdingBuffersForClientAssertion = self->_holdingBuffersForClientAssertion;
  self->_holdingBuffersForClientAssertion = FigOSTransactionCreate();

  os_unfair_lock_unlock(&self->_clientPIDLock);
  [(BWImageQueueSinkNode *)self _createFrameSender];
}

- (uint64_t)_collectUnconsumedBuffersWithReason:(uint64_t)result collectMostFutureBuffers:
{
  if (result)
  {
    v1 = result;
    if (*(result + 300) != 1)
    {
      CACurrentMediaTime();
    }

    OUTLINED_FUNCTION_3_100();
    CAImageQueueConsumeUnconsumedInRange();
    OUTLINED_FUNCTION_3_100();
    result = CAImageQueueCollect();
    *(v1 + 240) = result;
  }

  return result;
}

- (void)_transferIOSurfaceOwnershipToEnqueuedBufferContext
{
  if (a1 && *(a1 + 480))
  {
    v2 = 0;
    do
    {
      v3 = *(*(a1 + 472) + 8 * v2);
      if (v3 && *v3)
      {
        ImageBuffer = CMSampleBufferGetImageBuffer(*v3);
        IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
        if (IOSurface)
        {
          IOSurface = CFRetain(IOSurface);
        }

        *(v3 + 8) = IOSurface;
        if (*v3)
        {
          CFRelease(*v3);
          *v3 = 0;
        }
      }

      ++v2;
    }

    while (*(a1 + 480) > v2);
  }
}

- (double)_displayTimeSyncedWithFramePTS:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  v4 = CACurrentMediaTime();
  v5 = a2 - *(a1 + 344);
  v6 = v5 + *(a1 + 352);
  Times = CAImageQueueGetTimes();
  if (Times)
  {
    if (Times == 1)
    {
      v8 = 0.0166666667;
    }

    else
    {
      v8 = v44[1] - v44[0];
      OUTLINED_FUNCTION_33();
      if (v15)
      {
        v19 = *(a1 + 320);
        if (v19 > 0.0)
        {
          v20 = v18 - v19;
          v21 = round(v20 / v8);
          v22 = v21 >= 1.0 ? v20 / v21 : *(a1 + 328);
          if (vabdd_f64(v22, v8) / v8 <= 0.1)
          {
            *(a1 + 328) = v22;
            v8 = v22;
          }
        }

        *(a1 + 320) = v18;
      }

      if (v8 <= 0.001)
      {
        goto LABEL_70;
      }

      if (Times > 0x17)
      {
LABEL_7:
        v10 = v5 / v8;
        v11 = round(v5 / v8);
        v12 = *(a1 + 352);
        if (v5 / v8 >= 1.0)
        {
          v13 = v11;
        }

        else
        {
          v13 = v5 / v8;
        }

        v6 = v12 + v8 * v13;
        v14 = vabdd_f64(1.0 / *(a1 + 368), 1.0 / v5);
        if (v6 - a2 > 0.166 || ((OUTLINED_FUNCTION_33(), v15) ? (v16 = v6 - v4 <= v5 * 3.0) : (v16 = 1), !v16))
        {
          if (v12 > 0.0)
          {
            if (v10 < 1.5 && (*(a1 + 386) & 1) != 0)
            {
              v17 = v12 + v8 * 0.01;
              if (v17 <= v44[0])
              {
                v6 = v44[0];
              }

              else
              {
                v6 = v17;
              }

              if (*MEMORY[0x1E695FF58] == 1)
              {
                kdebug_trace();
              }
            }

            else
            {
              v6 = v8 + v12;
            }
          }
        }

        v23 = fmod(v5, v8);
        if (v14 <= 0.9)
        {
          v31 = v23 / v8;
          if (v31 < 0.1 || v31 > 0.9)
          {
            OUTLINED_FUNCTION_33();
            if (v15)
            {
              v38 = v10 - v13;
              v39 = *(a1 + 336);
              v40 = BWModifiedMovingAverage(fabsf(v38), v39, 0.01);
              *(a1 + 336) = v40;
            }

            else
            {
              v40 = vabdd_f64(v10, v13);
            }

            v41 = 1.0;
            v42 = *(a1 + 376) + 1;
            *(a1 + 376) = v42;
            if (vcvtad_u64_f64(1.0 / v40) - 1 < v42)
            {
              *(a1 + 376) = 0;
              if (v13 > 1.0)
              {
                v41 = -1.0;
              }

              v6 = v6 + v8 * v13 * v41;
            }
          }

          else
          {
            v32 = *(a1 + 376) + 1;
            *(a1 + 376) = v32;
            if (*(a1 + 387) == 1)
            {
              v33 = v31;
              v34 = *(a1 + 336);
              v31 = BWModifiedMovingAverage(v33, v34, 0.01);
              *(a1 + 336) = v31;
              v32 = *(a1 + 376);
            }

            v35 = vcvtad_u64_f64(1.0 / v31);
            if (v32 >= v35)
            {
              *(a1 + 376) = 0;
              v36 = v35 <= 2 || v13 > 1.0;
              v37 = -1.0;
              if (!v36)
              {
                v37 = 1.0;
              }

              v6 = v6 + v8 * v37;
            }
          }
        }

        else
        {
          *(a1 + 376) = 0;
          *(a1 + 336) = 0x7FF8000000000000;
        }

        v24 = 0;
        v25 = -v8;
        v26 = v44;
        while (1)
        {
          v27 = *v26;
          if (v6 < *v26 && v4 < *v26 + v25 * 0.5)
          {
            break;
          }

          ++v24;
          ++v26;
          if (v24 == 24)
          {
            goto LABEL_70;
          }
        }

        if (v24 < 2 || (v29 = *(v26 - 1), v4 >= v29 + v25 * 0.5))
        {
          v30 = (a1 + 360);
          v29 = *v26;
        }

        else
        {
          v30 = (a1 + 360);
          if (a2 - *(a1 + 360) <= 2.0)
          {
            goto LABEL_55;
          }
        }

        *v30 = a2;
        v27 = v29;
LABEL_55:
        v6 = v27 + v25 * 0.25;
        goto LABEL_70;
      }
    }

    v9 = v44[Times - 1];
    do
    {
      v9 = v8 + v9;
      v44[Times++] = v9;
    }

    while (Times != 24);
    goto LABEL_7;
  }

LABEL_70:
  *(a1 + 344) = a2;
  *(a1 + 352) = v6;
  *(a1 + 368) = v5;
  return v6;
}

- (_DWORD)_createContextForBuffer:(uint64_t)a3 bufferId:(__int128 *)a4 framePTS:
{
  if (!a1)
  {
    return 0;
  }

  v8 = *(a1 + 480);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = *(a1 + 472);
  v10 = 1;
  do
  {
    v12 = *v9++;
    v11 = v12;
    if (v12[3])
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    if (v8 <= v10)
    {
      break;
    }

    ++v10;
  }

  while (!v13);
  if (!v13)
  {
LABEL_10:
    v14 = v8 + 1;
    *(a1 + 480) = v14;
    *(a1 + 472) = malloc_type_realloc(*(a1 + 472), 8 * v14, 0x2004093837F09uLL);
    v13 = malloc_type_calloc(0x80uLL, 1uLL, 0x10A00403843775EuLL);
    *(*(a1 + 472) + 8 * *(a1 + 480) - 8) = v13;
    v13[30] = 1;
  }

  *v13 = cf;
  CFRetain(cf);
  *(v13 + 2) = a3;
  *(v13 + 3) = a1;
  *(v13 + 1) = 0;
  v15 = *a4;
  *(v13 + 6) = *(a4 + 2);
  *(v13 + 2) = v15;
  ++v13[30];
  return v13;
}

- (uint64_t)_removeBufferFromInternalQueues:(uint64_t)a3 bufferId:
{
  if (result)
  {
    v5 = result;
    FigSimpleMutexLock();
    v6 = [*(v5 + 464) indexOfObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", a3)}];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(v5 + 464) removeObjectAtIndex:v6];
    }

    FigSimpleMutexUnlock();
    ImageBuffer = CMSampleBufferGetImageBuffer(a2);
    IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
    v9 = *(v5 + 432);
    if (!v9 || (result = [v9 indexOfObject:IOSurface], result == 0x7FFFFFFFFFFFFFFFLL))
    {

      return CAImageQueueUnregisterBuffer();
    }
  }

  return result;
}

- (void)_storePreviewPTS:(uint64_t)a3 withHostTime:(int)a4 isOverCaptureFrame:
{
  HIDWORD(v38) = a4;
  if (a1)
  {
    contexta = objc_autoreleasePoolPush();
    v56 = *&a2->value;
    epoch = a2->epoch;
    v58 = a3;
    v7 = [MEMORY[0x1E696B098] valueWithBytes:&v56 objCType:"{_PreviewPTSInfo={?=qiIq}Q}"];
    FigSimpleMutexLock();
    [*(a1 + 488) addObject:v7];
    v8 = [MEMORY[0x1E695DF70] array];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v9 = *(a1 + 488);
    v17 = OUTLINED_FUNCTION_4_89(v8, v10, v11, v12, v13, v14, v15, v16, v38, contexta, rhs.value, *&rhs.timescale, rhs.epoch, v44, lhs.value, *&lhs.timescale, lhs.epoch, v46, v47.value, *&v47.timescale, v47.epoch, v48, v49, *(&v49 + 1), v50, *(&v50 + 1), v51);
    if (v17)
    {
      v18 = v17;
      v19 = *v53;
LABEL_4:
      v20 = 0;
      while (1)
      {
        if (*v53 != v19)
        {
          objc_enumerationMutation(v9);
        }

        v21 = *(*(&v52 + 1) + 8 * v20);
        v49 = 0u;
        v50 = 0u;
        [v21 getValue:&v49];
        memset(&v47, 0, sizeof(v47));
        lhs = *a2;
        *&rhs.value = v49;
        rhs.epoch = v50;
        CMTimeSubtract(&v47, &lhs, &rhs);
        CMTimeMake(&lhs, 3, 1);
        rhs = v47;
        if (CMTimeCompare(&rhs, &lhs) <= 0)
        {
          break;
        }

        v22 = [v8 addObject:v21];
        if (v18 == ++v20)
        {
          v18 = OUTLINED_FUNCTION_4_89(v22, v23, v24, v25, v26, v27, v28, v29, v39, context, rhs.value, *&rhs.timescale, rhs.epoch, v44, lhs.value, *&lhs.timescale, lhs.epoch, v46, v47.value, *&v47.timescale, v47.epoch, v48, v49, *(&v49 + 1), v50, *(&v50 + 1), v51);
          if (v18)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v30 = [*(a1 + 488) removeObjectsInArray:v8];
    if (!*(a1 + 536))
    {
      v30 = OUTLINED_FUNCTION_0_113(v30, v31, v32, v33, v34, v35, v36, v37, v39, context, rhs.value, *&rhs.timescale, rhs.epoch, v44, lhs.value, *&lhs.timescale, lhs.epoch, v46, *&v47.value, v47.epoch, v48, v49, v50);
      if ((v30 & 0x80000000) == 0)
      {
        *(a1 + 536) = a3;
        OUTLINED_FUNCTION_1_122(544);
      }
    }

    if (!*(a1 + 600) && (OUTLINED_FUNCTION_0_113(v30, v31, v32, v33, v34, v35, v36, v37, v39, context, rhs.value, *&rhs.timescale, rhs.epoch, v44, lhs.value, *&lhs.timescale, lhs.epoch, v46, *&v47.value, v47.epoch, v48, v49, v50) & 0x80000000) == 0)
    {
      if (v40)
      {
        *(a1 + 600) = a3;
        OUTLINED_FUNCTION_1_122(572);
      }
    }

    FigSimpleMutexUnlock();
    objc_autoreleasePoolPop(context);
  }
}

- (double)_processBufferContext:(uint64_t)a1
{
  if (a1)
  {
    v3 = *(a2 + 24);
    if (v3 == a1)
    {
      v18 = *(a2 + 32);
      v5 = *(a2 + 80);
      memset(&v17, 0, sizeof(v17));
      v6 = FigHostTimeToNanoseconds();
      CMTimeMake(&v17, v6, 1000000000);
      memset(&v16, 0, sizeof(v16));
      v7 = CACurrentMediaTime();
      CMTimeMakeWithSeconds(&v16, v7, 1000000000);
      if (*MEMORY[0x1E695FF58] == 1)
      {
        time = v18;
        CMTimeGetSeconds(&time);
        time = v17;
        CMTimeGetSeconds(&time);
        time = v16;
        rhs = v17;
        CMTimeSubtract(&v15, &time, &rhs);
        time = v15;
        CMTimeGetSeconds(&time);
        kdebug_trace();
      }

      if (v5 && *(v3 + 488))
      {
        if (*(a2 + 56))
        {
          v8 = *(a2 + 80);
          CMGetAttachment(*a2, @"IsOverCaptureFrame", 0);
          v9 = FigCFEqual() != 0;
          v10 = *(v3 + 504);
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __46__BWImageQueueSinkNode__processBufferContext___block_invoke;
          v11[3] = &unk_1E799C968;
          v12 = v18;
          v11[4] = v3;
          v11[5] = v8;
          v13 = v9;
          dispatch_async(v10, v11);
        }
      }

      [(BWImageQueueSinkNode *)v3 _removeBufferFromInternalQueues:*(a2 + 16) bufferId:?];
    }

    return iqsn_cleanupBufferContext(a2);
  }

  return result;
}

void __46__BWImageQueueSinkNode__processBufferContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 72);
  v4 = *(a1 + 48);
  [(BWImageQueueSinkNode *)v2 _storePreviewPTS:v1 withHostTime:v3 isOverCaptureFrame:?];
}

- (void)configurationWithID:(void *)a1 updatedFormat:(uint64_t)a2 didBecomeLiveForInput:.cold.1(void *a1, uint64_t a2)
{
  v4 = [a1 width];
  v5 = [a1 height];
  *(a2 + 212) = v4;
  *(a2 + 216) = v5;
  [(BWImageQueueSinkNode *)a2 _ensureImageQueue];
  os_unfair_lock_lock((a2 + 724));
  if (!*(a2 + 424))
  {
    v6 = *(a2 + 708);
    v7[0] = *(a2 + 692);
    v7[1] = v6;
    if (FigCaptureAuditTokenIsValid(v7))
    {
      *(a2 + 424) = FigOSTransactionCreate();
    }
  }

  os_unfair_lock_unlock((a2 + 724));
}

- (uint64_t)renderSampleBuffer:(uint64_t)a3 forInput:(void *)a4 .cold.1(const void *a1, const __CFString *a2, uint64_t a3, void *a4)
{
  v7 = CMGetAttachment(a1, a2, 0);
  v8 = [CMGetAttachment(a1 @"CAContextFencePortGenerationID"];
  [MEMORY[0x1E6979518] begin];
  result = [MEMORY[0x1E6979518] activateBackground:1];
  if (v7 && v8 > *(a3 + 624))
  {
    [*(a3 + 640) setFencePort:{objc_msgSend(v7, "port")}];
    v10 = [v7 port];
    result = [v7 invalidate];
    *(a3 + 624) = v8;
    *(a3 + 616) = 0;
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  *a4 = v11;
  ++*(a3 + 616);
  ++*(a3 + 612);
  return result;
}

@end