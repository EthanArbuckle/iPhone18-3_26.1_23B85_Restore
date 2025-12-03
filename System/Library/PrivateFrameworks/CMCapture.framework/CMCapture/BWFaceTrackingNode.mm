@interface BWFaceTrackingNode
- (BWFaceTrackingNode)initWithFigThreadPriority:(unsigned int)priority pearlModuleType:(int)type useUnfilteredDepth:(BOOL)depth queueDepth:(unsigned int)queueDepth passthroughInputs:(BOOL)inputs allowPixelTransfer:(BOOL)transfer;
- (uint64_t)_depthIntrinsicsExtrinsicsFromRGBIntrisics:(unint64_t)intrisics colorWidth:(unint64_t)width colorHeight:(unint64_t)height depthWidth:(double)depthWidth depthHeight:(double)depthHeight;
- (uint64_t)_prepareDecompressionResources;
- (uint64_t)_setupCVA;
- (void)_processSampleBuffer:(uint64_t)buffer;
- (void)_releaseDecompressionResources;
- (void)_startProcessingSampleSampleBuffer:(uint64_t)buffer;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setSkipProcessing:(BOOL)processing;
@end

@implementation BWFaceTrackingNode

- (void)_releaseDecompressionResources
{
  if (self)
  {
    os_unfair_lock_assert_not_owner((self + 256));
    os_unfair_lock_lock((self + 256));

    *(self + 240) = 0;
    v2 = *(self + 248);
    if (v2)
    {
      CFRelease(v2);
      *(self + 248) = 0;
    }

    os_unfair_lock_unlock((self + 256));
  }
}

- (BWFaceTrackingNode)initWithFigThreadPriority:(unsigned int)priority pearlModuleType:(int)type useUnfilteredDepth:(BOOL)depth queueDepth:(unsigned int)queueDepth passthroughInputs:(BOOL)inputs allowPixelTransfer:(BOOL)transfer
{
  v10 = *&queueDepth;
  depthCopy = depth;
  v25.receiver = self;
  v25.super_class = BWFaceTrackingNode;
  v13 = [(BWNode *)&v25 init];
  if (v13)
  {
    v13->_processingSemaphore = dispatch_semaphore_create(0);
    v13->_faceTrackingMachThreadPriority = FigThreadGetMachThreadPriorityValue();
    v13->_pearlModuleType = type;
    v13->_faceTrackingFailureFieldOfViewModifier = -1.0;
    v13->_passthroughInputs = inputs;
    if (type)
    {
      v13->_depthAttachedMediaKey = @"Depth";
      if (depthCopy && v13->_pearlModuleType == 2)
      {
        v13->_depthAttachedMediaKey = @"UnfilteredDepth";
      }
    }

    if (v10 && (v13->_processingLock._os_unfair_lock_opaque = 0, v13->_processingQueue = FigDispatchQueueCreateWithPriority(), v14 = CMSimpleQueueCreate(*MEMORY[0x1E695E480], v10, &v13->_nextSbufQueue), v14))
    {
      [BWFaceTrackingNode initWithFigThreadPriority:v14 pearlModuleType:v13 useUnfilteredDepth:? queueDepth:? passthroughInputs:? allowPixelTransfer:?];
      return 0;
    }

    else
    {
      v15 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v13];
      [(BWNodeInput *)v15 setRetainedBufferCount:v10];
      [(BWNodeInput *)v15 setPassthroughMode:v13->_passthroughInputs];
      if (!transfer)
      {
        v16 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v16 setSupportedPixelFormats:&unk_1F2248490];
        [(BWNodeInput *)v15 setFormatRequirements:v16];
      }

      if (v13->_depthAttachedMediaKey)
      {
        v17 = objc_alloc_init(BWNodeInputMediaConfiguration);
        v18 = objc_alloc_init(BWVideoFormatRequirements);
        [(BWVideoFormatRequirements *)v18 setSupportedPixelFormats:&unk_1F22484A8];
        if (v13->_nextSbufQueue)
        {
          [(BWNodeInputMediaConfiguration *)v17 setRetainedBufferCount:1];
        }

        [(BWNodeInputMediaConfiguration *)v17 setFormatRequirements:v18];
        [(BWNodeInput *)v15 setMediaConfiguration:v17 forAttachedMediaKey:v13->_depthAttachedMediaKey];
      }

      [(BWNode *)v13 addInput:v15];
      passthroughInputs = v13->_passthroughInputs;
      v20 = [BWNodeOutput alloc];
      if (passthroughInputs)
      {
        v21 = [(BWNodeOutput *)v20 initWithMediaType:1986618469 node:v13];
        primaryMediaConfiguration = [(BWNodeOutput *)v21 primaryMediaConfiguration];
        [(BWNodeOutputMediaConfiguration *)primaryMediaConfiguration setFormatRequirements:[(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v15 primaryMediaConfiguration] formatRequirements]];
        [(BWNodeOutputMediaConfiguration *)primaryMediaConfiguration setPassthroughMode:1];
      }

      else
      {
        v21 = [(BWNodeOutput *)v20 initWithMediaType:1836016234 node:v13];
        v24 = *MEMORY[0x1E69629E8];
        -[BWNodeOutput setFormat:](v21, "setFormat:", +[BWMetadataObjectFormat formatWithMetadataIdentifiers:](BWMetadataObjectFormat, "formatWithMetadataIdentifiers:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1]));
      }

      [(BWNode *)v13 addOutput:v21];
      v13->_addMesh = 1;
      v13->_addDebugInfo = 0;
      v13->_decompressionLock._os_unfair_lock_opaque = 0;
      [(BWNode *)v13 setSupportsLiveReconfiguration:1];
      [(BWNode *)v13 setSupportsPrepareWhileRunning:1];
    }
  }

  return v13;
}

- (void)dealloc
{
  faceTrackingRef = self->_faceTrackingRef;
  if (faceTrackingRef)
  {
    CFRelease(faceTrackingRef);
  }

  nextSbufQueue = self->_nextSbufQueue;
  if (nextSbufQueue)
  {
    CFRelease(nextSbufQueue);
  }

  [(BWFaceTrackingNode *)self _releaseDecompressionResources];
  v5.receiver = self;
  v5.super_class = BWFaceTrackingNode;
  [(BWNode *)&v5 dealloc];
}

- (void)setSkipProcessing:(BOOL)processing
{
  self->_skipProcessing = processing;
  if (processing && !self->_nextSbufQueue)
  {
    [(BWFaceTrackingNode *)self _releaseDecompressionResources];
  }
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  if (self->_passthroughInputs)
  {
    [(BWNodeOutput *)self->super._output setFormat:format];
  }

  v7 = FigCaptureUncompressedPixelFormatForPixelFormat([format pixelFormat]);
  if (v7 != [format pixelFormat])
  {
    v8 = objc_alloc_init(BWVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v8, "setWidth:", [format width]);
    -[BWVideoFormatRequirements setHeight:](v8, "setHeight:", [format height]);
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v8, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1]);

    v10 = v8;
    self->_uncompressedVideoFormat = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1]);
  }

  v9.receiver = self;
  v9.super_class = BWFaceTrackingNode;
  [(BWNode *)&v9 didSelectFormat:format forInput:input];
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (self->_nextSbufQueue)
  {
    processingQueue = self->_processingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__BWFaceTrackingNode_configurationWithID_updatedFormat_didBecomeLiveForInput___block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = self;
    dispatch_async(processingQueue, block);
  }

  else
  {
    output = self->super._output;

    [(BWNodeOutput *)output makeConfiguredFormatLive:d];
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  uncompressedVideoBufferPool = self->_uncompressedVideoBufferPool;
  if (uncompressedVideoBufferPool && ![(BWVideoFormat *)self->_uncompressedVideoFormat isEqual:[(BWPixelBufferPool *)uncompressedVideoBufferPool videoFormat:d]])
  {
    [(BWFaceTrackingNode *)self _releaseDecompressionResources];
  }

  if (self->_nextSbufQueue)
  {
    processingQueue = self->_processingQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__BWFaceTrackingNode_didReachEndOfDataForConfigurationID_input___block_invoke;
    v9[3] = &unk_1E798F898;
    v9[4] = self;
    v9[5] = d;
    dispatch_async(processingQueue, v9);
  }

  else
  {
    output = self->super._output;

    [(BWNodeOutput *)output markEndOfLiveOutputForConfigurationID:d, input];
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (self->_passthroughInputs || (v13 = CMGetAttachment(buffer, @"DepthDisabled", 0), !self->_skipProcessing) && ([v13 BOOLValue] & 1) == 0)
  {
    v6 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      CMSampleBufferGetPresentationTimeStamp(&v14, buffer);
      time = v14;
      CMTimeGetSeconds(&time);
      kdebug_trace();
    }

    if (self->_nextSbufQueue)
    {
      os_unfair_lock_lock(&self->_processingLock);
      processing = self->_processing;
      Count = CMSimpleQueueGetCount(self->_nextSbufQueue);
      Capacity = CMSimpleQueueGetCapacity(self->_nextSbufQueue);
      if (buffer)
      {
        CFRetain(buffer);
      }

      if (self->_processing)
      {
        if (Count == Capacity)
        {
          v10 = CMSimpleQueueDequeue(self->_nextSbufQueue);
          if (v10)
          {
            CFRelease(v10);
          }
        }

        CMSimpleQueueEnqueue(self->_nextSbufQueue, buffer);
      }

      self->_processing = 1;
      os_unfair_lock_unlock(&self->_processingLock);
      if (!processing)
      {
        [(BWFaceTrackingNode *)self _startProcessingSampleSampleBuffer:buffer];
      }

      v11 = *v6;
      if (!buffer)
      {
        goto LABEL_26;
      }

      if (Count != Capacity || v11 != 1)
      {
        goto LABEL_26;
      }

      CMSampleBufferGetPresentationTimeStamp(&v14, buffer);
      time = v14;
      CMTimeGetSeconds(&time);
      kdebug_trace();
    }

    else
    {
      [(BWFaceTrackingNode *)self _processSampleBuffer:buffer];
    }

    v11 = *v6;
LABEL_26:
    if (v11 == 1)
    {
      kdebug_trace();
    }
  }
}

- (void)_processSampleBuffer:(uint64_t)buffer
{
  if (!buffer)
  {
    return;
  }

  bufferCopy = buffer;
  if (*(buffer + 168) && !_FigIsCurrentDispatchQueue())
  {
    [BWFaceTrackingNode _processSampleBuffer:];
  }

  if (*(bufferCopy + 178) == 1)
  {
    v4 = CMGetAttachment(target, @"DepthDisabled", 0);
    if ((*(bufferCopy + 228) & 1) != 0 || [v4 BOOLValue])
    {
      v5 = *(bufferCopy + 16);

      [v5 emitSampleBuffer:target];
      return;
    }
  }

  v67 = 0;
  v68 = &v67;
  v69 = 0x3052000000;
  v70 = __Block_byref_object_copy__15;
  v71 = __Block_byref_object_dispose__15;
  v72 = 0;
  if ([(BWFaceTrackingNode *)bufferCopy _setupCVA])
  {
    v6 = 0;
    goto LABEL_42;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  ImageBuffer = CMSampleBufferGetImageBuffer(target);
  cf = ImageBuffer;
  if (!ImageBuffer)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    goto LABEL_42;
  }

  CFRetain(ImageBuffer);
  if (!*(bufferCopy + 232))
  {
LABEL_18:
    [v6 setObject:cf forKeyedSubscript:getkCVAFaceTracking_Color()];
    v9 = CMGetAttachment(target, *off_1E798A3C8, 0);
    v41 = v9;
    if (v9)
    {
      v10 = [v9 objectForKeyedSubscript:*off_1E798B218];
      array = [MEMORY[0x1E695DF70] array];
      if ([v10 count])
      {
        v11 = FigCaptureRotationDegreesWithMirroring(*(bufferCopy + 192), *(bufferCopy + 196));
        v47 = 0u;
        memset(time, 0, sizeof(time));
        FigCaptureMakeMirrorAndRotateVideoTransform(1, 1, *(bufferCopy + 196), v11, time);
        v12 = *(bufferCopy + 196);
        v66[0] = *time;
        v66[1] = *&time[16];
        v66[2] = v47;
        v13 = BWCreateTransformedFacesArray(v10, v66, v11, v12);
        v38 = v6;
        v39 = bufferCopy;
        v40 = target;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        obj = v13;
        v14 = [v13 countByEnumeratingWithState:&v62 objects:v61 count:16];
        if (v14)
        {
          v15 = *v63;
          v16 = *off_1E798B2B8;
          v17 = *off_1E798B780;
          v18 = *off_1E798B5C0;
          v19 = *off_1E798B160;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v63 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v62 + 1) + 8 * i);
              dictionary = [MEMORY[0x1E695DF90] dictionary];
              v23 = [v21 objectForKeyedSubscript:v16];
              if (v23)
              {
                [dictionary setObject:v23 forKeyedSubscript:getkCVAFaceTracking_DetectedFaceFaceID()];
              }

              v24 = [v21 objectForKeyedSubscript:v17];
              if (v24)
              {
                [dictionary setObject:v24 forKeyedSubscript:getkCVAFaceTracking_Timestamp()];
              }

              v25 = [v21 objectForKeyedSubscript:v18];
              if (v25)
              {
                [dictionary setObject:v25 forKeyedSubscript:getkCVAFaceTracking_DetectedFaceRect()];
              }

              v26 = [v21 objectForKeyedSubscript:v19];
              if (v26)
              {
                [dictionary setObject:v26 forKeyedSubscript:getkCVAFaceTracking_DetectedFaceAngleInfoRoll()];
              }

              [array addObject:dictionary];
            }

            v14 = [obj countByEnumeratingWithState:&v62 objects:v61 count:16];
          }

          while (v14);
        }

        bufferCopy = v39;
        target = v40;
        v6 = v38;
      }

      [v6 setObject:array forKeyedSubscript:getkCVAFaceTracking_DetectedFacesArray()];
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __43__BWFaceTrackingNode__processSampleBuffer___block_invoke;
      v60[3] = &unk_1E7991508;
      v60[4] = bufferCopy;
      v60[5] = &v67;
      [v6 setObject:objc_msgSend(v60 forKeyedSubscript:{"copy"), getkCVAFaceTracking_Callback()}];
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      v27 = CMGetAttachment(target, *MEMORY[0x1E6960470], 0);
      v28 = v27;
      if (v27 && [v27 length] == 48)
      {
        [v28 getBytes:&v57 length:{objc_msgSend(v28, "length")}];
        LODWORD(v29) = v57;
        v30 = DWORD1(v58);
        v45 = *&v59;
        v55[0] = [MEMORY[0x1E696AD98] numberWithFloat:v29];
        v55[1] = &unk_1F2243660;
        v55[2] = [MEMORY[0x1E696AD98] numberWithFloat:v45];
        v56[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:3];
        v54[0] = &unk_1F2243660;
        LODWORD(v31) = v30;
        v32 = [MEMORY[0x1E696AD98] numberWithFloat:v31];
        HIDWORD(v33) = HIDWORD(v45);
        LODWORD(v33) = HIDWORD(v45);
        v54[1] = v32;
        v54[2] = [MEMORY[0x1E696AD98] numberWithFloat:v33];
        v56[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:3];
        v56[2] = &unk_1F22484C0;
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:3];
        v52[0] = getkCVAFaceTracking_Rotation();
        v53[0] = &unk_1F2248538;
        v52[1] = getkCVAFaceTracking_Translation();
        v53[1] = &unk_1F22484D8;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
        v50[0] = getkCVAFaceTracking_Intrinsics();
        v51[0] = v34;
        v50[1] = getkCVAFaceTracking_Extrinsics();
        v51[1] = v35;
        [v6 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v51, v50, 2), getkCVAFaceTracking_CameraColor()}];
        memset(&v49, 0, sizeof(v49));
        CMSampleBufferGetPresentationTimeStamp(&v49, target);
        v36 = [v41 objectForKeyedSubscript:*off_1E798A420];
        if (!v36)
        {
          v37 = *MEMORY[0x1E695E480];
          *time = v49;
          v36 = CMTimeCopyAsDictionary(time, v37);
        }

        [v6 setObject:v36 forKeyedSubscript:getkCVAFaceTracking_Timestamp()];
        [objc_msgSend(v41 objectForKeyedSubscript:{*off_1E798B4B8), "intValue"}];
        [objc_msgSend(v41 objectForKeyedSubscript:{*off_1E798B2A8), "doubleValue"}];
        v48 = 0;
        FigCaptureComputeImageGainFromMetadata();
      }

      goto LABEL_41;
    }

    goto LABEL_48;
  }

  os_unfair_lock_lock((bufferCopy + 256));
  if (-[BWFaceTrackingNode _prepareDecompressionResources](bufferCopy) || (v8 = [*(bufferCopy + 240) newPixelBuffer]) == 0)
  {
LABEL_48:
    fig_log_get_emitter();
    FigDebugAssert3();
    goto LABEL_41;
  }

  if (!VTPixelTransferSessionTransferImage(*(bufferCopy + 248), cf, v8))
  {
    CFRelease(cf);
    os_unfair_lock_unlock((bufferCopy + 256));
    cf = v8;
    goto LABEL_18;
  }

LABEL_41:
  CFRelease(cf);
LABEL_42:

  if (*(bufferCopy + 178) == 1)
  {
    [*(bufferCopy + 16) emitSampleBuffer:target];
  }

  _Block_object_dispose(&v67, 8);
}

void __57__BWFaceTrackingNode__startProcessingSampleSampleBuffer___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = MEMORY[0x1E695FF58];
    do
    {
      v4 = objc_autoreleasePoolPush();
      if (*v3 == 1)
      {
        kdebug_trace();
      }

      [(BWFaceTrackingNode *)*(a1 + 32) _processSampleBuffer:v1];
      CFRelease(v1);
      os_unfair_lock_lock((*(a1 + 32) + 136));
      v1 = CMSimpleQueueDequeue(*(*(a1 + 32) + 168));
      *(*(a1 + 32) + 160) = v1 != 0;
      os_unfair_lock_unlock((*(a1 + 32) + 136));
      if (*v3 == 1)
      {
        kdebug_trace();
      }

      objc_autoreleasePoolPop(v4);
    }

    while (v1);
  }
}

intptr_t __43__BWFaceTrackingNode__processSampleBuffer___block_invoke(uint64_t a1, void *a2)
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  *(*(*(a1 + 40) + 8) + 40) = a2;
  v4 = *(*(a1 + 32) + 152);

  return dispatch_semaphore_signal(v4);
}

- (uint64_t)_prepareDecompressionResources
{
  selfCopy = self;
  if (self)
  {
    os_unfair_lock_assert_owner(self + 64);
    if (*&selfCopy[58]._os_unfair_lock_opaque && !*&selfCopy[60]._os_unfair_lock_opaque)
    {
      v2 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", *&selfCopy[58]._os_unfair_lock_opaque, 1, @"FaceTrackingNode uncompressed image pool", [*&selfCopy[4]._os_unfair_lock_opaque memoryPool]);
      *&selfCopy[60]._os_unfair_lock_opaque = v2;
      if (v2)
      {
        selfCopy = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &selfCopy[62]);
        if (selfCopy)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_6();
          FigDebugAssert3();
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_6();
        FigDebugAssert3();
        return 4294954510;
      }
    }

    else
    {
      return 0;
    }
  }

  return selfCopy;
}

- (void)_startProcessingSampleSampleBuffer:(uint64_t)buffer
{
  if (buffer)
  {
    v2 = *(buffer + 144);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __57__BWFaceTrackingNode__startProcessingSampleSampleBuffer___block_invoke;
    v3[3] = &unk_1E7990178;
    v3[4] = buffer;
    v3[5] = a2;
    dispatch_async(v2, v3);
  }
}

- (uint64_t)_setupCVA
{
  if (!self)
  {
    return 0;
  }

  if (*(self + 168) && !_FigIsCurrentDispatchQueue())
  {
    fig_log_get_emitter();
    v19 = v1;
    LODWORD(v18) = 0;
    FigDebugAssert3();
  }

  if (*(self + 176))
  {
    return 0;
  }

  v3 = *(self + 184);
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
  [MEMORY[0x1E696AD98] numberWithInt:*(self + 200)];
  v5 = getkCVAFaceTracking_ThreadPriority();
  OUTLINED_FUNCTION_1_46(v5);
  [MEMORY[0x1E696AD98] numberWithBool:*(self + 212)];
  v6 = getkCVAFaceTracking_UseRecognition();
  OUTLINED_FUNCTION_1_46(v6);
  if (*(self + 216) > 0.0)
  {
    [MEMORY[0x1E696AD98] numberWithFloat:?];
    v7 = getkCVAFaceTracking_NetworkFailureThresholdMultiplier();
    OUTLINED_FUNCTION_1_46(v7);
  }

  if (*(self + 224) >= 0.0)
  {
    [MEMORY[0x1E696AD98] numberWithFloat:?];
    v8 = getkCVAFaceTracking_TrackingFailureFieldOfViewModifier();
    OUTLINED_FUNCTION_1_46(v8);
  }

  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", *(self + 220), v18, v19), getkCVA_tmrLADzZUFnL94QtJ4Eb9fgi()}];
  [MEMORY[0x1E696AD98] numberWithBool:v3 == 0];
  v9 = getkCVAFaceTracking_ColorOnly();
  OUTLINED_FUNCTION_1_46(v9);
  v10 = *(self + 204);
  if (v10 == 1 || v10 == 3)
  {
    getkCVAFaceTracking_DepthSource_Pearl();
LABEL_18:
    v12 = getkCVAFaceTracking_DepthSource();
    OUTLINED_FUNCTION_1_46(v12);
    goto LABEL_19;
  }

  if (v10 == 2)
  {
    getkCVAFaceTracking_DepthSource_SMPRaw();
    goto LABEL_18;
  }

LABEL_19:
  if (*(self + 208) >= 1)
  {
    [MEMORY[0x1E696AD98] numberWithInt:?];
    v13 = getkCVAFaceTracking_NumTrackedFaces();
    OUTLINED_FUNCTION_1_46(v13);
  }

  v14 = *(self + 128);
  if (v14)
  {
    CFRelease(v14);
    *(self + 128) = 0;
  }

  v15 = soft_CVAFaceTrackingCreate(*MEMORY[0x1E695E480], v4, self + 128);
  if (v15)
  {
    v17 = *(self + 128);
    if (v17)
    {
      CFRelease(v17);
      *(self + 128) = 0;
    }
  }

  else
  {
    *(self + 176) = 1;
  }

  return v15;
}

- (uint64_t)_depthIntrinsicsExtrinsicsFromRGBIntrisics:(unint64_t)intrisics colorWidth:(unint64_t)width colorHeight:(unint64_t)height depthWidth:(double)depthWidth depthHeight:(double)depthHeight
{
  if (result)
  {
    depthWidthCopy = depthWidth;
    *&depthWidth = width;
    heightCopy = height;
    v11 = width / height;
    v12 = a2;
    intrisicsCopy = intrisics;
    v14 = a2 / intrisics;
    v15 = *(&depthHeight + 1);
    v16 = *(&a8 + 1);
    v17 = v11 - v14;
    if (v11 < v14)
    {
      v17 = v14 - v11;
    }

    if (v17 < 0.01)
    {
      v18 = *&depthWidth / v12;
      v19 = heightCopy / intrisicsCopy;
      *&depthWidth = *&depthWidthCopy * (*&depthWidth / v12);
      v32 = *&a8;
      v42[0] = [MEMORY[0x1E696AD98] numberWithFloat:depthWidth];
      v42[1] = &unk_1F2243660;
      v42[2] = [MEMORY[0x1E696AD98] numberWithDouble:(v32 + 0.5) * v18 + -0.5];
      v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:3];
      v41[0] = &unk_1F2243660;
      *&v20 = v15 * v19;
      v41[1] = [MEMORY[0x1E696AD98] numberWithFloat:v20];
      v21 = &unk_1F22485B0;
      v22 = &unk_1F2248550;
      v23 = &v43;
      v24 = v41;
LABEL_11:
      v24[2] = [MEMORY[0x1E696AD98] numberWithDouble:(v16 + 0.5) * v19 + -0.5];
      v23[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
      v23[2] = v22;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
      v36[0] = getkCVAFaceTracking_Rotation();
      v37[0] = v21;
      v36[1] = getkCVAFaceTracking_Translation();
      v37[1] = &unk_1F2248640;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
      v34[0] = getkCVAFaceTracking_Intrinsics();
      v35[0] = v29;
      v34[1] = getkCVAFaceTracking_Extrinsics();
      v35[1] = v30;
      return [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
    }

    v25 = 1.0 / v14;
    if (v11 >= v25)
    {
      v26 = v11 - v25;
    }

    else
    {
      v26 = v25 - v11;
    }

    if (v26 < 0.01)
    {
      v19 = heightCopy / v12;
      v27 = *&depthWidth / intrisicsCopy;
      *&depthWidth = *(&depthHeight + 1) * (*&depthWidth / intrisicsCopy);
      v31 = depthWidthCopy;
      v33 = *&a8;
      v39[0] = [MEMORY[0x1E696AD98] numberWithFloat:depthWidth];
      v39[1] = &unk_1F2243660;
      v39[2] = [MEMORY[0x1E696AD98] numberWithDouble:width - (v16 + 0.5) * v27 + -0.5];
      v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
      v38[0] = &unk_1F2243660;
      HIDWORD(v28) = HIDWORD(v31);
      *&v28 = *&v31 * v19;
      v21 = &unk_1F2248628;
      v38[1] = [MEMORY[0x1E696AD98] numberWithFloat:v28];
      v22 = &unk_1F22485C8;
      v23 = &v40;
      v24 = v38;
      v16 = v33;
      goto LABEL_11;
    }

    return 0;
  }

  return result;
}

- (void)initWithFigThreadPriority:(uint64_t)a1 pearlModuleType:(void *)a2 useUnfilteredDepth:queueDepth:passthroughInputs:allowPixelTransfer:.cold.1(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  FigDebugAssert3();
}

- (uint64_t)_processSampleBuffer:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

@end