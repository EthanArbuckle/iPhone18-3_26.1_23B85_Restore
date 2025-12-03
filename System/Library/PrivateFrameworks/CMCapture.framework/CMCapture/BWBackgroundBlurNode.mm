@interface BWBackgroundBlurNode
- (BWBackgroundBlurNode)initWithStillImageCaptureEnabled:(BOOL)enabled maxLossyCompressionLevel:(int)level fastSwitchEnabled:(BOOL)switchEnabled availableEffects:(unint64_t)effects activeEffect:(unint64_t)effect isHighQualitySupported:(BOOL)supported upstreamDeviceOrientationCorrectionEnabled:(BOOL)correctionEnabled deviceType:(int)self0 captureDevice:(id)self1;
- (CVPixelBufferRef)_savePixelBufferForStillImageCaptureRequests:(__int128 *)requests withPts:;
- (uint64_t)_reportBackgroundBlurCoreAnalyticsData;
- (uint64_t)_updateActiveReactions:(__int128 *)reactions currentRenderPTS:(uint64_t)s requestedTriggers:;
- (uint64_t)_updateOutputRequirements;
- (unint64_t)_getActivePTEffectTypes;
- (void)_createMatchingPixelBufferFromSavedVideoBuffersWithTargetPts:(uint64_t)pts;
- (void)_newStillImageOutputPixelBufferFromVideoPixelBuffer:(uint64_t)buffer;
- (void)_supportedInputPixelFormats;
- (void)_supportedOutputPixelFormats;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didChangeBackgroundBlurAperture:(float)aperture;
- (void)didChangeBackgroundReplacementPixelBuffer:(__CVBuffer *)buffer;
- (void)didChangeGesturesEnabled:(BOOL)enabled;
- (void)didChangePortraitEffectStudioLightQuality:(int64_t)quality;
- (void)didChangeStudioLightingIntensity:(float)intensity;
- (void)didChangeSuppressedGesturesEnabled:(BOOL)enabled;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)lowPowerModeChanged:(id)changed;
- (void)performReactionEffect:(id)effect;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setActiveBlurEffect:(unint64_t)effect;
- (void)setEffectQuality:(int64_t)quality;
- (void)setReactionsInProgressChangedHandler:(id)handler;
- (void)setSuppressedGestureHandler:(id)handler;
@end

@implementation BWBackgroundBlurNode

- (BWBackgroundBlurNode)initWithStillImageCaptureEnabled:(BOOL)enabled maxLossyCompressionLevel:(int)level fastSwitchEnabled:(BOOL)switchEnabled availableEffects:(unint64_t)effects activeEffect:(unint64_t)effect isHighQualitySupported:(BOOL)supported upstreamDeviceOrientationCorrectionEnabled:(BOOL)correctionEnabled deviceType:(int)self0 captureDevice:(id)self1
{
  enabledCopy = enabled;
  v31.receiver = self;
  v31.super_class = BWBackgroundBlurNode;
  v17 = [(BWNode *)&v31 init];
  v18 = v17;
  if (v17)
  {
    v17->_fastSwitchEnabled = switchEnabled;
    v17->_videoInput = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v17 index:0];
    v20 = objc_alloc_init(BWVideoFormatRequirements);
    *(v18 + 292) = 0;
    *(v18 + 360) = level;
    [(BWVideoFormatRequirements *)v20 setSupportedPixelFormats:[(BWBackgroundBlurNode *)v18 _supportedInputPixelFormats]];
    [*(v18 + 176) setFormatRequirements:v20];
    [*(v18 + 176) setPassthroughMode:2];
    [*(v18 + 176) setRetainedBufferCount:1];
    [v18 addInput:*(v18 + 176)];
    *(v18 + 184) = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v18];
    v21 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v21 setSupportedPixelFormats:[(BWBackgroundBlurNode *)v18 _supportedOutputPixelFormats]];
    [*(v18 + 184) setFormatRequirements:v21];
    [*(v18 + 184) setPassthroughMode:2];
    [*(v18 + 184) setProvidesPixelBufferPool:1];
    [objc_msgSend(*(v18 + 184) "primaryMediaConfiguration")];
    [*(v18 + 184) setIndexOfInputWhichDrivesThisOutput:0];
    [v18 addOutput:*(v18 + 184)];
    *(v18 + 208) = enabledCopy;
    if (enabledCopy)
    {
      [*(v18 + 176) setRetainedBufferCount:{objc_msgSend(*(v18 + 176), "retainedBufferCount") + 1}];
      [*(v18 + 176) setIndefinitelyHeldBufferCount:{objc_msgSend(*(v18 + 176), "indefinitelyHeldBufferCount") + 1}];
      *(v18 + 192) = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v18 index:1];
      v26 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v26 setSupportedPixelFormats:[(BWBackgroundBlurNode *)v18 _supportedInputPixelFormats]];
      [*(v18 + 192) setFormatRequirements:v26];
      [*(v18 + 192) setPassthroughMode:0];
      [v18 addInput:*(v18 + 192)];
      *(v18 + 200) = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v18];
      v27 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v27 setSupportedPixelFormats:[(BWBackgroundBlurNode *)v18 _supportedOutputPixelFormats]];
      [*(v18 + 200) setFormatRequirements:v27];
      [*(v18 + 200) setPassthroughMode:0];
      [objc_msgSend(*(v18 + 200) "primaryMediaConfiguration")];
      [*(v18 + 200) setIndexOfInputWhichDrivesThisOutput:1];
      [v18 addOutput:*(v18 + 200)];
      *(v18 + 224) = 0u;
      *(v18 + 240) = 0u;
      *(v18 + 256) = 0u;
      *(v18 + 272) = 0u;
      *(v18 + 288) = 0;
    }

    *(v18 + 376) = (2 * effects) & 0x20 | effects;
    [v18 setActiveBlurEffect:effect];
    *(v18 + 364) = supported;
    *(v18 + 384) = correctionEnabled;
    *(v18 + 296) = type;
    *(v18 + 536) = objc_alloc_init(BWDeviceThermalMonitor);
    if (*(v18 + 364))
    {
      v22 = 110;
    }

    else
    {
      v22 = 100;
    }

    [v18 setEffectQuality:v22];
    objc_initWeak(&location, v18);
    v23 = *(v18 + 536);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __221__BWBackgroundBlurNode_initWithStillImageCaptureEnabled_maxLossyCompressionLevel_fastSwitchEnabled_availableEffects_activeEffect_isHighQualitySupported_upstreamDeviceOrientationCorrectionEnabled_deviceType_captureDevice___block_invoke;
    v28[3] = &unk_1E7991F70;
    objc_copyWeak(&v29, &location);
    [v23 setThermalHandler:v28];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v18 selector:sel_lowPowerModeChanged_ name:*MEMORY[0x1E696A7D8] object:0];
    *(v18 + 408) = 1077936128;
    *(v18 + 412) = 1056964608;
    *(v18 + 416) = 0;
    *(v18 + 417) = 0;
    *(v18 + 424) = 0;
    *(v18 + 432) = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = MEMORY[0x1E6960C70];
    *(v18 + 528) = *(MEMORY[0x1E6960C70] + 16);
    *(v18 + 512) = *v25;
    [v18 setSupportsLiveReconfiguration:1];
    [v18 setSupportsPrepareWhileRunning:1];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v18;
}

void __221__BWBackgroundBlurNode_initWithStillImageCaptureEnabled_maxLossyCompressionLevel_fastSwitchEnabled_availableEffects_activeEffect_isHighQualitySupported_upstreamDeviceOrientationCorrectionEnabled_deviceType_captureDevice___block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    return;
  }

  v7 = WeakRetained;
  if ([a2 thermalLevel] <= 2)
  {
    v6 = [a2 thermalLevel] == 2;
    v5 = v7;
    if (!v6)
    {
      goto LABEL_9;
    }

    v4 = 100;
  }

  else
  {
    v4 = 0;
    v5 = v7;
  }

  [v5 setEffectQuality:v4];
  v5 = v7;
LABEL_9:
}

- (void)dealloc
{
  os_unfair_lock_lock(&_MergedGlobals_4);
  if (qword_1ED844EE0)
  {
  }

  v3 = ++sSuspendedPTEffectID;
  qword_1ED844EE0 = self->_ptEffect;
  self->_ptEffect = 0;
  os_unfair_lock_unlock(&_MergedGlobals_4);
  v4 = dispatch_time(0, 2000000000);
  global_queue = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__BWBackgroundBlurNode_dealloc__block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v17 = v3;
  dispatch_after(v4, global_queue, block);

  self->_reconfiguredPTEffect = 0;
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  if (self->_stillImageCaptureEnabled)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = v8;
      pixelBuffer = self->_stillCaptureQueue[v7].pixelBuffer;
      if (pixelBuffer)
      {
        CFRelease(pixelBuffer);
      }

      v8 = 0;
      v7 = 1;
    }

    while ((v9 & 1) != 0);
  }

  stillImagePixelTransferSession = self->_stillImagePixelTransferSession;
  if (stillImagePixelTransferSession)
  {
    CFRelease(stillImagePixelTransferSession);
  }

  reactionsInProgressObserver = self->_reactionsInProgressObserver;
  if (reactionsInProgressObserver)
  {
    _Block_release(reactionsInProgressObserver);
  }

  suppressedGestureObserver = self->_suppressedGestureObserver;
  if (suppressedGestureObserver)
  {
    _Block_release(suppressedGestureObserver);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E696A7D8] object:0];

  v15.receiver = self;
  v15.super_class = BWBackgroundBlurNode;
  [(BWNode *)&v15 dealloc];
}

void __31__BWBackgroundBlurNode_dealloc__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock(&_MergedGlobals_4);
  if (qword_1ED844EE0 && sSuspendedPTEffectID == *(a1 + 32))
  {

    qword_1ED844EE0 = 0;
  }

  os_unfair_lock_unlock(&_MergedGlobals_4);
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  if ([input passthroughMode])
  {
    if (self->_videoInput == input)
    {
      v7 = &OBJC_IVAR___BWBackgroundBlurNode__videoOutput;
    }

    else
    {
      if (self->_stillImageInput != input)
      {
        goto LABEL_7;
      }

      v7 = &OBJC_IVAR___BWBackgroundBlurNode__stillImageOutput;
    }

    [*(&self->super.super.isa + *v7) setFormat:format];
  }

LABEL_7:

  [(BWBackgroundBlurNode *)self _updateOutputRequirements];
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (self->_reconfiguredPTEffect)
  {
    ptEffect = self->_ptEffect;
    ptEffectReleaseQueue = self->_ptEffectReleaseQueue;
    if (!ptEffectReleaseQueue)
    {
      ptEffectReleaseQueue = FigDispatchQueueCreateWithPriority();
      self->_ptEffectReleaseQueue = ptEffectReleaseQueue;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__BWBackgroundBlurNode_configurationWithID_updatedFormat_didBecomeLiveForInput___block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = ptEffect;
    dispatch_async(ptEffectReleaseQueue, block);
    self->_ptEffect = self->_reconfiguredPTEffect;
    self->_reconfiguredPTEffect = 0;
  }

  if (self->_videoInput == input)
  {
    v9 = &OBJC_IVAR___BWBackgroundBlurNode__videoOutput;
    goto LABEL_9;
  }

  if (self->_stillImageInput == input)
  {
    v9 = &OBJC_IVAR___BWBackgroundBlurNode__stillImageOutput;
LABEL_9:
    [*(&self->super.super.isa + *v9) makeConfiguredFormatLive];
  }

  self->_previousEffectBypassed = 1;
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  if (!d)
  {
    if (!self->_effectBypassed)
    {
      [(BWBackgroundBlurNode *)self _reportBackgroundBlurCoreAnalyticsData];
    }

    if (self->_videoInput == input)
    {
      [(BWDeviceOrientationMonitor *)self->_deviceOrientationMonitor stop];
    }
  }

  [(BWLimitedGMErrorLogger *)self->_limitedGMErrorLogger resetCurrentLoggingCounter];
  if (self->_videoInput == input)
  {
    [(BWNodeOutput *)self->_videoOutput markEndOfLiveOutputForConfigurationID:d];
  }

  if (self->_stillImageInput == input)
  {
    stillImageOutput = self->_stillImageOutput;

    [(BWNodeOutput *)stillImageOutput markEndOfLiveOutputForConfigurationID:d];
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  v86 = 0;
  if (self->_stillImageInput == input)
  {
    v7 = &OBJC_IVAR___BWBackgroundBlurNode__stillImageOutput;
  }

  else
  {
    v7 = &OBJC_IVAR___BWBackgroundBlurNode__videoOutput;
  }

  if (!buffer)
  {
    goto LABEL_21;
  }

  v8 = *(&self->super.super.isa + *v7);
  effectBypassed = self->_effectBypassed;
  v10 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v10)
  {
    [BWBackgroundBlurNode renderSampleBuffer:forInput:];
    goto LABEL_21;
  }

  v11 = v10;
  memset(&v85, 0, sizeof(v85));
  CMTimeMakeFromDictionary(&v85, [v10 objectForKeyedSubscript:*off_1E798A420]);
  if ((v85.flags & 1) == 0)
  {
    CMSampleBufferGetPresentationTimeStamp(time, buffer);
    v85 = *time;
  }

  if (self->_videoInput != input)
  {
    inputCopy3 = input;
    *time = v85;
    ImageBuffer = [(BWBackgroundBlurNode *)self _createMatchingPixelBufferFromSavedVideoBuffersWithTargetPts:?];
    if (ImageBuffer)
    {
      v13 = 1;
      goto LABEL_24;
    }

    [BWBackgroundBlurNode renderSampleBuffer:forInput:];
    v13 = 0;
    v59 = 4294954513;
    goto LABEL_83;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (!ImageBuffer)
  {
    goto LABEL_30;
  }

  if (!effectBypassed)
  {
    if (self->_activeBlurEffect == 16)
    {
      if ([-[PTEffect activeReactions](self->_ptEffect "activeReactions")])
      {
        memset(time, 0, 24);
        CMTimeMake(time, 1, 30);
        p_framerateThrottleNextPTS = &self->_framerateThrottleNextPTS;
        if (self->_framerateThrottleNextPTS.flags)
        {
          *time1 = v85;
          *&time2.value = *&p_framerateThrottleNextPTS->value;
          time2.epoch = self->_framerateThrottleNextPTS.epoch;
          if (CMTimeCompare(time1, &time2) < 0)
          {
LABEL_21:
            ImageBuffer = 0;
            goto LABEL_30;
          }

          memset(time1, 0, 24);
          time2 = v85;
          *&lhs.value = *&p_framerateThrottleNextPTS->value;
          lhs.epoch = self->_framerateThrottleNextPTS.epoch;
          CMTimeSubtract(time1, &time2, &lhs);
          time2 = v85;
          rhs = *time;
          CMTimeAdd(&lhs, &time2, &rhs);
          time2 = *time1;
          v80 = *time;
          v81 = *&time[16];
          CMTimeRemainder();
          CMTimeSubtract(&time2, &lhs, &rhs);
          *&p_framerateThrottleNextPTS->value = *&time2.value;
          epoch = time2.epoch;
        }

        else
        {
          *time1 = *time;
          *&time1[16] = *&time[16];
          Seconds = CMTimeGetSeconds(time1);
          CMTimeMakeWithSeconds(&time2, Seconds + -0.005, v85.timescale);
          lhs = v85;
          CMTimeAdd(time1, &lhs, &time2);
          *&p_framerateThrottleNextPTS->value = *time1;
          epoch = *&time1[16];
        }

        self->_framerateThrottleNextPTS.epoch = epoch;
      }

      else
      {
        [BWBackgroundBlurNode renderSampleBuffer:? forInput:?];
      }
    }

    v72 = v8;
    inputCopy3 = input;
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(time, HostTimeClock);
    CMTimeConvertScale(&v79, time, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    value = v79.value;
    ptEffectRenderRequest = self->_ptEffectRenderRequest;
    *time = v85;
    [(PTEffectRenderRequest *)ptEffectRenderRequest setFrameTimeSeconds:CMTimeGetSeconds(time)];
    ActivePTEffect = [(BWBackgroundBlurNode *)self _getActivePTEffectTypes];
    if ((ActivePTEffect & 0x10) != 0 && [(NSMutableArray *)self->_pendingPTEffectReactions count])
    {
      [(PTEffectRenderRequest *)self->_ptEffectRenderRequest setReactions:self->_pendingPTEffectReactions];

      self->_pendingPTEffectReactions = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      [(PTEffectRenderRequest *)self->_ptEffectRenderRequest setReactions:0];
      [(NSMutableArray *)self->_pendingPTEffectReactions removeAllObjects];
    }

    [(PTEffectRenderRequest *)self->_ptEffectRenderRequest setEffectType:ActivePTEffect];
    [(PTEffectRenderRequest *)self->_ptEffectRenderRequest setSuppressGestureTriggeredReactions:0];
    if (self->_suppressedGesturesEnabled && !self->_gesturesEnabled)
    {
      [(PTEffectRenderRequest *)self->_ptEffectRenderRequest setSuppressGestureTriggeredReactions:1];
    }

    [(PTEffectRenderRequest *)self->_ptEffectRenderRequest setInColorBuffer:ImageBuffer];
    v25 = [v11 objectForKeyedSubscript:*off_1E798B220];
    [(PTEffectRenderRequest *)self->_ptEffectRenderRequest setDetectedObjects:v25];
    v26 = *off_1E798B4B8;
    if ([v11 objectForKeyedSubscript:*off_1E798B4B8])
    {
      [objc_msgSend(v11 objectForKeyedSubscript:{v26), "floatValue"}];
    }

    else
    {
      LODWORD(v27) = 2143289344;
    }

    [(PTEffectRenderRequest *)self->_ptEffectRenderRequest setLuxLevel:v27];
    if (![(PTEffect *)self->_ptEffect isRenderRequiredForRequest:self->_ptEffectRenderRequest])
    {
      v55 = 0;
      goto LABEL_68;
    }

    v71 = v25;
    v28 = [objc_msgSend(v8 "livePixelBufferPool")];
    if (!v28)
    {
      goto LABEL_21;
    }

    v70 = v28;
    [(PTEffectRenderRequest *)self->_ptEffectRenderRequest setOutColorBuffer:?];
    [(PTEffectRenderRequest *)self->_ptEffectRenderRequest setEffectQuality:self->_effectQuality];
    v29 = self->_ptEffectRenderRequest;
    v30 = *(MEMORY[0x1E695EFD0] + 16);
    *time = *MEMORY[0x1E695EFD0];
    *&time[16] = v30;
    v78 = *(MEMORY[0x1E695EFD0] + 32);
    [(PTEffectRenderRequest *)v29 setTransform:time];
    *&v31 = self->_backgroundBlurAperture;
    [(PTEffectRenderRequest *)self->_ptEffectRenderRequest setApertureSDOF:v31];
    *&v32 = self->_studioLightingIntensity;
    [(PTEffectRenderRequest *)self->_ptEffectRenderRequest setRelightStrengthStudioLight:v32];
    [(PTEffectRenderRequest *)self->_ptEffectRenderRequest setInBackgroundReplacementBuffer:self->_backgroundReplacementPixelBuffer];
    v33 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v34 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    key = *off_1E798A308;
    v35 = CMGetAttachment(buffer, *off_1E798A308, 0);
    v68 = *off_1E798A300;
    v36 = CMGetAttachment(buffer, *off_1E798A300, 0);
    [v33 unionSet:v35];
    [v34 unionSet:v36];
    v67 = *off_1E798A350;
    v37 = CMGetAttachment(buffer, *off_1E798A350, 0);
    v66 = *off_1E798A348;
    v38 = CMGetAttachment(buffer, *off_1E798A348, 0);
    [v33 unionSet:v37];
    [v34 unionSet:v38];
    if ([v33 count] || objc_msgSend(v34, "count"))
    {
      v65 = [v71 mutableCopy];
      v64 = *off_1E798ACB8;
      v39 = [objc_msgSend(v71 "objectForKeyedSubscript:"mutableCopy"")];
      v63 = *off_1E798ACB0;
      v40 = [objc_msgSend(v71 "objectForKeyedSubscript:"mutableCopy"")];
      v62 = v33;
      v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v33, "count")}];
      v42 = *off_1E798ACE8;
      v43 = v39;
      [v39 setObject:v41 forKeyedSubscript:*off_1E798ACE8];
      [v40 setObject:objc_msgSend(objc_alloc(MEMORY[0x1E695DF70]) forKeyedSubscript:{"initWithCapacity:", objc_msgSend(v34, "count")), v42}];
      v44 = v65;
      [v65 setObject:v43 forKeyedSubscript:v64];
      [v65 setObject:v40 forKeyedSubscript:v63];
      [MEMORY[0x1E6994580] filterDetectedObjects:v71 usedFaceIDs:v62 usedBodyIDs:v34 filteredObjects:v65];
      CMRemoveAttachment(buffer, key);
      CMRemoveAttachment(buffer, v68);
      CMRemoveAttachment(buffer, v67);
      CMRemoveAttachment(buffer, v66);
      v45 = 1;
    }

    else
    {
      v45 = 0;
      v44 = v71;
    }

    [(PTEffectRenderRequest *)self->_ptEffectRenderRequest setFocusOnAll:v45];
    [(PTEffectRenderRequest *)self->_ptEffectRenderRequest setDetectedObjects:v44];
    v46 = *off_1E798A310;
    v47 = CMGetAttachment(buffer, *off_1E798A310, 0);
    if (v47)
    {
      v48 = v47;
      [v47 floatValue];
      if (v49 > 0.0)
      {
        [v48 floatValue];
        [(PTEffectRenderRequest *)self->_ptEffectRenderRequest setFocalLength:?];
        CMRemoveAttachment(buffer, v46);
      }
    }

    if (!self->_upstreamDeviceOrientationCorrectionEnabled && !BWDeviceTypeIsExtensionDeviceType([objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B238), "integerValue"}]))
    {
      v50 = -[BWDeviceOrientationMonitor rotationDegreesFromOrientation:isFrontCamera:isExternalCamera:isMirrored:clientExpectsCameraMountedInLandscapeOrientation:](self->_deviceOrientationMonitor, "rotationDegreesFromOrientation:isFrontCamera:isExternalCamera:isMirrored:clientExpectsCameraMountedInLandscapeOrientation:", -[BWDeviceOrientationMonitor mostRecentPortraitLandscapeOrientation](self->_deviceOrientationMonitor, "mostRecentPortraitLandscapeOrientation"), [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B540), "containsString:", @"Front"}], 0, 0, -[BWGraph clientExpectsCameraMountedInLandscapeOrientation](-[BWNode graph](self, "graph"), "clientExpectsCameraMountedInLandscapeOrientation"));
      EncodedSize = CVImageBufferGetEncodedSize(ImageBuffer);
      v78 = 0u;
      memset(time, 0, sizeof(time));
      FigCaptureMakeMirrorAndRotateVideoTransform(EncodedSize.width, EncodedSize.height, 0, v50, time);
      v52 = self->_ptEffectRenderRequest;
      *time1 = *time;
      *&time1[16] = *&time[16];
      v76 = v78;
      [(PTEffectRenderRequest *)v52 setTransform:time1];
    }

    v53 = *(MEMORY[0x1E695F058] + 16);
    *time = *MEMORY[0x1E695F058];
    *&time[16] = v53;
    if (FigCFDictionaryGetCGRectIfPresent())
    {
      [(PTEffectRenderRequest *)self->_ptEffectRenderRequest setOutColorROI:*time, *&time[16], *&time[24]];
    }

    v54 = [(PTEffect *)self->_ptEffect render:self->_ptEffectRenderRequest];
    if (!v54)
    {
      if (![(PTEffectRenderRequest *)self->_ptEffectRenderRequest outColorBufferWriteSkipped])
      {
        v56 = CMClockGetHostTimeClock();
        CMClockGetTime(time, v56);
        v13 = 1;
        CMTimeConvertScale(&v74, time, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        [(BWStats *)self->_backgroundBlurProcessingTimeStats addDataPoint:(v74.value - value)];
        effectBypassed = 0;
        ImageBuffer = v70;
LABEL_72:
        activeReactions = [(PTEffect *)self->_ptEffect activeReactions];
        CMSampleBufferGetPresentationTimeStamp(time, buffer);
        -[BWBackgroundBlurNode _updateActiveReactions:currentRenderPTS:requestedTriggers:](self, activeReactions, time, [-[PTEffectRenderRequest reactions](self->_ptEffectRenderRequest "reactions")]);
        if ([(PTEffectRenderRequest *)self->_ptEffectRenderRequest suppressGestureTriggeredReactions]&& [(PTEffectRenderRequest *)self->_ptEffectRenderRequest gestureCount])
        {
          suppressedGestureObserver = self->_suppressedGestureObserver;
          v8 = v72;
          if (suppressedGestureObserver)
          {
            suppressedGestureObserver[2]();
          }
        }

        else
        {
          v8 = v72;
        }

        goto LABEL_12;
      }

      v55 = v70;
LABEL_68:
      v86 = CFRetain(buffer);
      CFRetain(ImageBuffer);
      if (v55)
      {
        CFRelease(v55);
      }

      v13 = 0;
      effectBypassed = 1;
      goto LABEL_72;
    }

    v59 = v54;
    v13 = 0;
    ImageBuffer = v70;
    v8 = v72;
LABEL_83:
    if (self->_videoInput == inputCopy3)
    {
      CMSampleBufferGetPresentationTimeStamp(time, buffer);
      [v8 emitDroppedSample:{+[BWDroppedSample newDroppedSampleWithReason:pts:](BWDroppedSample, "newDroppedSampleWithReason:pts:", 0x1F219C110, time)}];
    }

    else
    {
      v60 = [BWNodeError newError:v59 sourceNode:self stillImageSettings:CMGetAttachment(buffer metadata:@"StillSettings", 0), v11];
      [v8 emitNodeError:v60];
    }

    [(BWLimitedGMErrorLogger *)self->_limitedGMErrorLogger logErrorNumber:v59 errorString:@"Error : Emitting dropped buffer"];
    if (v13)
    {
      goto LABEL_31;
    }

LABEL_30:
    ++self->_numberOfFramesThatCouldNotBeBlurred;
    goto LABEL_31;
  }

  inputCopy3 = input;
  v86 = CFRetain(buffer);
  ImageBuffer = CFRetain(ImageBuffer);
  [(NSMutableArray *)self->_pendingPTEffectReactions removeAllObjects];
  v13 = 0;
  effectBypassed = 1;
LABEL_12:
  if (self->_stillImageCaptureEnabled)
  {
    *time = v85;
    [(BWBackgroundBlurNode *)self _savePixelBufferForStillImageCaptureRequests:time withPts:?];
  }

  v14 = CMGetAttachment(buffer, *off_1E798D4F0, 0);
  if (v14)
  {
    v15 = v14;
    v16 = v8;
    maxThermalSystemPressureLevel = self->_maxThermalSystemPressureLevel;
    if (maxThermalSystemPressureLevel <= [v14 intValue])
    {
      intValue = [v15 intValue];
    }

    else
    {
      intValue = self->_maxThermalSystemPressureLevel;
    }

    v8 = v16;
    self->_maxThermalSystemPressureLevel = intValue;
  }

LABEL_24:
  if (!v86)
  {
    BWCMSampleBufferCreateCopyWithNewPixelBuffer(buffer, ImageBuffer, &self->_outputFormatDescription, &v86);
    if (!v86)
    {
      v59 = 4294954516;
      goto LABEL_83;
    }
  }

  [v8 emitSampleBuffer:?];
  if (!self->_previousEffectBypassed && effectBypassed)
  {
    [BWBackgroundBlurNode renderSampleBuffer:? forInput:?];
  }

  self->_previousEffectBypassed = effectBypassed;
  if ((v13 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_31:
  if (v86)
  {
    CFRelease(v86);
  }

  if (ImageBuffer)
  {
    CFRelease(ImageBuffer);
  }

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)setActiveBlurEffect:(unint64_t)effect
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  self->_activeBlurEffect = effect;

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

uint64_t __82__BWBackgroundBlurNode__updateActiveReactions_currentRenderPTS_requestedTriggers___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [*(*(a1 + 32) + 480) removeObjectForKey:a2];
  result = bbn_StringForPTEffectReactionType([a3 effectType]);
  if (result)
  {
    v6 = *(a1 + 40);
    v7 = MEMORY[0x1E696AD98];
    [a3 startTime];
    v9[1] = [v7 numberWithDouble:?];
    return [v6 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, &v8, 2)}];
  }

  return result;
}

uint64_t __82__BWBackgroundBlurNode__updateActiveReactions_currentRenderPTS_requestedTriggers___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  result = bbn_StringForPTEffectReactionType([a3 effectType]);
  if (result)
  {
    v6 = result;
    v7 = *(a1 + 32);
    v12[0] = result;
    v11[0] = @"ReactionType";
    v11[1] = @"StartTime";
    v8 = MEMORY[0x1E696AD98];
    [a3 startTime];
    v12[1] = [v8 numberWithDouble:?];
    v11[2] = @"EndTime";
    v10 = *(a1 + 48);
    v12[2] = [MEMORY[0x1E696AD98] numberWithDouble:CMTimeGetSeconds(&v10)];
    [v7 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, v11, 3)}];
    v9 = objc_alloc_init(BWReactionAnalyticsPayload);
    [(BWReactionAnalyticsPayload *)v9 setReactionType:v6];
    -[BWReactionAnalyticsPayload setUiTriggeredReaction:](v9, "setUiTriggeredReaction:", [a3 uiTriggeredReaction]);
    [(BWReactionAnalyticsPayload *)v9 setClientApplicationID:*(*(a1 + 40) + 304)];
    [(BWReactionAnalyticsPayload *)v9 setContinuityCameraClientDeviceClass:*(*(a1 + 40) + 312)];
    result = [+[BWCoreAnalyticsReporter sharedInstance](BWCoreAnalyticsReporter sendEvent:"sendEvent:", v9];
    ++*(*(a1 + 40) + 448);
  }

  return result;
}

uint64_t __82__BWBackgroundBlurNode__updateActiveReactions_currentRenderPTS_requestedTriggers___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 objectForKeyedSubscript:@"StartTime"];
  v5 = [a3 objectForKeyedSubscript:@"StartTime"];

  return [v4 compare:v5];
}

- (void)didChangePortraitEffectStudioLightQuality:(int64_t)quality
{
  if (self->_ptEffect)
  {
    if (self->_effectQuality != quality)
    {
      [(BWBackgroundBlurNode *)self setEffectQuality:?];
    }
  }
}

- (void)didChangeBackgroundBlurAperture:(float)aperture
{
  if (self->_backgroundBlurAperture != aperture)
  {
    os_unfair_lock_lock(&self->_bufferServicingLock);
    self->_backgroundBlurAperture = aperture;

    os_unfair_lock_unlock(&self->_bufferServicingLock);
  }
}

- (void)didChangeStudioLightingIntensity:(float)intensity
{
  if (self->_studioLightingIntensity != intensity)
  {
    os_unfair_lock_lock(&self->_bufferServicingLock);
    self->_studioLightingIntensity = intensity;

    os_unfair_lock_unlock(&self->_bufferServicingLock);
  }
}

- (void)didChangeGesturesEnabled:(BOOL)enabled
{
  if (self->_gesturesEnabled != enabled)
  {
    os_unfair_lock_lock(&self->_bufferServicingLock);
    self->_gesturesEnabled = enabled;

    os_unfair_lock_unlock(&self->_bufferServicingLock);
  }
}

- (void)didChangeSuppressedGesturesEnabled:(BOOL)enabled
{
  if (self->_suppressedGesturesEnabled != enabled)
  {
    os_unfair_lock_lock(&self->_bufferServicingLock);
    self->_suppressedGesturesEnabled = enabled;

    os_unfair_lock_unlock(&self->_bufferServicingLock);
  }
}

- (void)setReactionsInProgressChangedHandler:(id)handler
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  reactionsInProgressObserver = self->_reactionsInProgressObserver;
  if (reactionsInProgressObserver)
  {
    _Block_release(reactionsInProgressObserver);
  }

  self->_reactionsInProgressObserver = _Block_copy(handler);

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)setSuppressedGestureHandler:(id)handler
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  suppressedGestureObserver = self->_suppressedGestureObserver;
  if (suppressedGestureObserver)
  {
    _Block_release(suppressedGestureObserver);
  }

  self->_suppressedGestureObserver = _Block_copy(handler);

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)didChangeBackgroundReplacementPixelBuffer:(__CVBuffer *)buffer
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  backgroundReplacementPixelBuffer = self->_backgroundReplacementPixelBuffer;
  self->_backgroundReplacementPixelBuffer = buffer;
  if (buffer)
  {
    CFRetain(buffer);
  }

  if (backgroundReplacementPixelBuffer)
  {
    CFRelease(backgroundReplacementPixelBuffer);
  }

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)setEffectQuality:(int64_t)quality
{
  qualityCopy = quality;
  if (quality >= 110 && !self->_isHighQualityEffectSupported)
  {
    qualityCopy = 100;
  }

  if ([(BWDeviceThermalMonitor *)self->_thermalMonitor thermalLevel]<= 2)
  {
    if (-[BWDeviceThermalMonitor thermalLevel](self->_thermalMonitor, "thermalLevel") == 2 || [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")])
    {
      qualityCopy = 100;
    }
  }

  else
  {
    qualityCopy = 0;
  }

  os_unfair_lock_lock(&self->_bufferServicingLock);
  self->_effectQuality = qualityCopy;

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)lowPowerModeChanged:(id)changed
{
  name = [changed name];
  if ([name isEqualToString:*MEMORY[0x1E696A7D8]])
  {
    if ([objc_msgSend(MEMORY[0x1E696AE30] "processInfo")])
    {
      selfCopy2 = self;
      v6 = 100;
    }

    else
    {
      if (!self->_isHighQualityEffectSupported)
      {
        return;
      }

      selfCopy2 = self;
      v6 = 110;
    }

    [(BWBackgroundBlurNode *)selfCopy2 setEffectQuality:v6];
  }
}

- (void)_supportedInputPixelFormats
{
  if (!self)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E695DF70] arrayWithObjects:{&unk_1F2243D20, &unk_1F2243D38, 0}];
  [v2 addObjectsFromArray:{FigCaptureSupportedPixelFormatsForCompressionType(4, 0, 0, *(self + 360))}];
  return v2;
}

- (void)_supportedOutputPixelFormats
{
  if (!self)
  {
    return 0;
  }

  v2 = [MEMORY[0x1E695DF70] arrayWithArray:-[BWBackgroundBlurNode _supportedInputPixelFormats](self)];
  v3 = [objc_msgSend(*(self + 176) "videoFormat")];
  if (v3)
  {
    IsFullRange = FigCapturePixelFormatIsFullRange(v3);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__BWBackgroundBlurNode__supportedOutputPixelFormats__block_invoke;
    v6[3] = &__block_descriptor_33_e35_B24__0__NSNumber_8__NSDictionary_16l;
    v7 = IsFullRange;
    [v2 filterUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", v6)}];
  }

  return v2;
}

- (uint64_t)_updateOutputRequirements
{
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(*(result + 176) "videoFormat")];
    if (v2)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:v2];
      v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
    }

    else
    {
      v3 = 0;
    }

    [objc_msgSend(v1[24] "videoFormat")];
    _supportedOutputPixelFormats = [(BWBackgroundBlurNode *)v1 _supportedOutputPixelFormats];
    formatRequirements = [v1[25] formatRequirements];
    [formatRequirements setWidth:{objc_msgSend(objc_msgSend(v1[22], "videoFormat"), "width")}];
    [formatRequirements setHeight:{objc_msgSend(objc_msgSend(v1[22], "videoFormat"), "height")}];
    [formatRequirements setSupportedColorSpaceProperties:v3];
    return [formatRequirements setSupportedPixelFormats:_supportedOutputPixelFormats];
  }

  return result;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v13.receiver = self;
  v13.super_class = BWBackgroundBlurNode;
  [(BWNode *)&v13 prepareForCurrentConfigurationToBecomeLive];
  formatDescriptionOut = 0;
  if (!self->_metalCommandQueue)
  {
    metalDevice = [MEMORY[0x1E6991778] metalDevice];
    if (!metalDevice)
    {
      goto LABEL_28;
    }

    newCommandQueue = [metalDevice newCommandQueue];
    self->_metalCommandQueue = newCommandQueue;
    if (!newCommandQueue)
    {
      goto LABEL_28;
    }

    [(MTLCommandQueue *)newCommandQueue setGPUPriority:4];
  }

  v5 = *MEMORY[0x1E695E480];
  if (!CMVideoFormatDescriptionCreate(*MEMORY[0x1E695E480], [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] pixelFormat], [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] width], [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] height], 0, &formatDescriptionOut))
  {
    v6 = [objc_alloc(getPTEffectDescriptorClass()) init];
    [v6 setMetalCommandQueue:self->_metalCommandQueue];
    [v6 setColorSize:{-[BWVideoFormat width](-[BWNodeInput videoFormat](self->super._input, "videoFormat"), "width"), -[BWVideoFormat height](-[BWNodeInput videoFormat](self->super._input, "videoFormat"), "height")}];
    [v6 setExternalDisparitySize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    [v6 setAvailableEffectTypes:self->_availablePTEffects];
    [v6 setActiveEffectType:-[BWBackgroundBlurNode _getActivePTEffectTypes](self)];
    [v6 setEffectQuality:self->_effectQuality];
    [v6 setAllowSkipOutColorBufferWrite:1];
    [v6 setExternalCamera:self->_deviceType == 15];
    asyncInitQueue = self->_asyncInitQueue;
    if (!asyncInitQueue)
    {
      asyncInitQueue = FigDispatchQueueCreateWithPriority();
      self->_asyncInitQueue = asyncInitQueue;
    }

    if (!self->_asyncProcessingQueue)
    {
      self->_asyncProcessingQueue = FigDispatchQueueCreateWithPriority();
      asyncInitQueue = self->_asyncInitQueue;
    }

    [v6 setAsyncInitQueue:asyncInitQueue];
    [v6 setAsyncProcessingQueue:self->_asyncProcessingQueue];
    availableEffectTypes = [v6 availableEffectTypes];
    if ((availableEffectTypes & [v6 activeEffectType] & 0x40) != 0)
    {
      [v6 setSyncInitialization:1];
    }

    if (self->_ptEffect)
    {

      self->_reconfiguredPTEffect = [(PTEffect *)self->_ptEffect reconfigureWithNewSize:v6];
    }

    else
    {
      os_unfair_lock_lock(&_MergedGlobals_4);
      v9 = qword_1ED844EE0;
      if (qword_1ED844EE0)
      {
        self->_ptEffect = qword_1ED844EE0;
        qword_1ED844EE0 = 0;
        [v9 reconfigure:v6];
      }

      else
      {
        self->_ptEffect = [objc_alloc(getPTEffectClass()) initWithDescriptor:v6];
      }

      os_unfair_lock_unlock(&_MergedGlobals_4);
    }

    if (self->_ptEffect)
    {
      if (!self->_ptEffectRenderRequest)
      {
        self->_ptEffectRenderRequest = [objc_alloc(getPTEffectRenderRequestClass()) init];
      }

      if (!self->_stillImageCaptureEnabled || self->_stillImagePixelTransferSession || (VTPixelTransferSessionCreate(v5, &self->_stillImagePixelTransferSession), self->_stillImagePixelTransferSession))
      {
        if (!self->_deviceOrientationMonitor)
        {
          v10 = objc_alloc_init(BWDeviceOrientationMonitor);
          self->_deviceOrientationMonitor = v10;
          [(BWDeviceOrientationMonitor *)v10 start];
        }

        if (!self->_backgroundBlurProcessingTimeStats)
        {
          v11 = objc_alloc_init(BWStats);
          self->_backgroundBlurProcessingTimeStats = v11;
          [(BWStats *)v11 setMultiplier:0.000001];
          [(BWStats *)self->_backgroundBlurProcessingTimeStats setUnitDesignator:@"ms"];
          self->_numberOfFramesThatCouldNotBeBlurred = 0;
        }
      }
    }
  }

LABEL_28:
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }
}

- (unint64_t)_getActivePTEffectTypes
{
  if (result)
  {
    v1 = *(result + 368);
    if ((v1 & 0x10) != 0 && ((*(result + 416) & 1) != 0 || *(result + 417) == 1))
    {
      v2 = v1 | 0x20;
    }

    else
    {
      v2 = v1 & 0xFFFFFFFFFFFFFFDFLL;
    }

    if (*(result + 424))
    {
      return v2;
    }

    else
    {
      return v2 & 0xFFFFFFFFFFFFFFBFLL;
    }
  }

  return result;
}

- (uint64_t)_reportBackgroundBlurCoreAnalyticsData
{
  if (result)
  {
    v1 = result;
    v2 = objc_alloc_init(BWBackgroundBlurSessionAnalyticsPayload);
    [(BWBackgroundBlurSessionAnalyticsPayload *)v2 setClientApplicationID:*(v1 + 304)];
    [(BWBackgroundBlurSessionAnalyticsPayload *)v2 setEffectQuality:*(v1 + 544)];
    [*(v1 + 320) average];
    [(BWBackgroundBlurSessionAnalyticsPayload *)v2 setAverageProcessingTime:?];
    [*(v1 + 320) max];
    [(BWBackgroundBlurSessionAnalyticsPayload *)v2 setMaxProcessingTime:?];
    -[BWBackgroundBlurSessionAnalyticsPayload setNumberOfFrames:](v2, "setNumberOfFrames:", [*(v1 + 320) numberOfSamples]);
    [(BWBackgroundBlurSessionAnalyticsPayload *)v2 setNumberOfFrameDrops:*(v1 + 328)];
    [(BWBackgroundBlurSessionAnalyticsPayload *)v2 setMaxThermalSystemPressureLevel:*(v1 + 332)];
    v3 = +[BWCoreAnalyticsReporter sharedInstance];

    return [(BWCoreAnalyticsReporter *)v3 sendEvent:v2];
  }

  return result;
}

- (uint64_t)_updateActiveReactions:(__int128 *)reactions currentRenderPTS:(uint64_t)s requestedTriggers:
{
  if (result)
  {
    v6 = result;
    if (s || (v7 = [a2 count], v7 != objc_msgSend(OUTLINED_FUNCTION_1_58(), "count")) || (result = objc_msgSend(a2, "count")) != 0 && *(v6 + 416) == 1 && (result = objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_1_58(), "allKeys"), "isEqual:", objc_msgSend(a2, "allKeys")), (result & 1) == 0))
    {
      v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a2, "count") + objc_msgSend(OUTLINED_FUNCTION_1_58(), "count")}];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __82__BWBackgroundBlurNode__updateActiveReactions_currentRenderPTS_requestedTriggers___block_invoke;
      v14[3] = &unk_1E7991FB8;
      v14[4] = v6;
      v14[5] = v8;
      [a2 enumerateKeysAndObjectsUsingBlock:v14];
      v9 = OUTLINED_FUNCTION_1_58();
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __82__BWBackgroundBlurNode__updateActiveReactions_currentRenderPTS_requestedTriggers___block_invoke_2;
      v11[3] = &unk_1E7991FE0;
      v12 = *reactions;
      v13 = *(reactions + 2);
      v11[4] = v8;
      v11[5] = v6;
      [v9 enumerateKeysAndObjectsUsingBlock:v11];
      [v8 sortUsingComparator:&__block_literal_global_52];
      v10 = *(v6 + 496);
      if (v10)
      {
        (*(v10 + 16))(v10, v8);
      }

      result = [a2 mutableCopy];
      *(v6 + 480) = result;
    }
  }

  return result;
}

- (CVPixelBufferRef)_savePixelBufferForStillImageCaptureRequests:(__int128 *)requests withPts:
{
  if (result)
  {
    v5 = result;
    v6 = *(result + 4 * *(result + 72) + 28);
    if (v6)
    {
      CVPixelBufferRelease(v6);
    }

    v10 = *requests;
    v11 = *(requests + 2);
    result = CVPixelBufferRetain(texture);
    v7 = v5 + 32 * *(v5 + 72) + 224;
    *v7 = result;
    *(v7 + 24) = v11;
    *(v7 + 8) = v10;
    v8 = *(v5 + 72);
    if (v8 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8 + 1;
    }

    *(v5 + 72) = v9;
  }

  return result;
}

- (void)_createMatchingPixelBufferFromSavedVideoBuffersWithTargetPts:(uint64_t)pts
{
  if (!pts)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = *a2;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = 1;
  while (1)
  {
    v8 = v7;
    v9 = (pts + 224 + 32 * v3);
    v11 = *v9;
    v10 = v9[1];
    v12 = v5 - v10;
    if (v5 == v10)
    {
      break;
    }

    v7 = 0;
    if (v12 < 0)
    {
      v12 = -v12;
    }

    if (v6 > v12)
    {
      v4 = v11;
    }

    if (v6 >= v12)
    {
      v6 = v12;
    }

    v3 = 1;
    if ((v8 & 1) == 0)
    {
      if (!v4)
      {
        return 0;
      }

      return [(BWBackgroundBlurNode *)pts _newStillImageOutputPixelBufferFromVideoPixelBuffer:v4];
    }
  }

  v4 = v11;
  if (!v11)
  {
    return 0;
  }

  return [(BWBackgroundBlurNode *)pts _newStillImageOutputPixelBufferFromVideoPixelBuffer:v4];
}

- (void)_newStillImageOutputPixelBufferFromVideoPixelBuffer:(uint64_t)buffer
{
  if (!buffer)
  {
    return 0;
  }

  v3 = 0;
  if (a2)
  {
    if (*(buffer + 216))
    {
      v3 = [objc_msgSend(objc_msgSend(*(buffer + 200) "primaryMediaProperties")];
      if (v3)
      {
        if (VTPixelTransferSessionTransferImage(*(buffer + 216), a2, v3))
        {
          CFRelease(v3);
          return 0;
        }
      }
    }
  }

  return v3;
}

- (void)performReactionEffect:(id)effect
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  if (qword_1ED844EF0 != -1)
  {
    dispatch_once(&qword_1ED844EF0, &__block_literal_global_294);
  }

  v5 = [qword_1ED844EE8 objectForKeyedSubscript:effect];
  if (v5 && (v6 = [v5 unsignedIntegerValue], v6 <= 7))
  {
    v7 = v6;
    v8 = objc_alloc_init(getPTEffectReactionClass());
    [v8 setEffectType:v7];
    [v8 setUiTriggeredReaction:1];
    reactionCounterAPI = self->_reactionCounterAPI;
    self->_reactionCounterAPI = reactionCounterAPI + 1;
    [v8 setTriggerID:~reactionCounterAPI];
    [(NSMutableArray *)self->_pendingPTEffectReactions addObject:v8];
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (uint64_t)renderSampleBuffer:forInput:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (__n128)renderSampleBuffer:(uint64_t)a1 forInput:.cold.2(uint64_t a1)
{
  v1 = MEMORY[0x1E6960C70];
  result = *MEMORY[0x1E6960C70];
  *(a1 + 512) = *MEMORY[0x1E6960C70];
  *(a1 + 528) = *(v1 + 16);
  return result;
}

- (uint64_t)renderSampleBuffer:(uint64_t)a1 forInput:.cold.3(uint64_t a1)
{
  [(BWBackgroundBlurNode *)a1 _reportBackgroundBlurCoreAnalyticsData];
  *(a1 + 332) = 0;
  *(a1 + 328) = 0;

  v2 = objc_alloc_init(BWStats);
  *(a1 + 320) = v2;
  [(BWStats *)v2 setMultiplier:0.000001];
  return [*(a1 + 320) setUnitDesignator:@"ms"];
}

- (uint64_t)renderSampleBuffer:forInput:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end