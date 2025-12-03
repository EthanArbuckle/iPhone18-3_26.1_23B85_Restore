@interface BWCompressedShotBufferNode
+ (void)initialize;
- (BOOL)_hasQueuedCompressedBuffers;
- (BOOL)compressionResourcesAllocated;
- (BOOL)hasUncompressedEquivalentFreeBufferCount:(int)count;
- (BWCompressedShotBufferNode)initWithNodeConfiguration:(id)configuration compressionInputDimensions:(id)dimensions;
- (BWPixelBufferPool)_setupDecompressionPoolWithDimensions:(BWPixelBufferPool *)result;
- (CMAttachmentBearerRef)_newSampleBufferFromDecompressionPoolWithCopyOfSampleBuffer:(CMAttachmentBearerRef)result;
- (CMVideoFormatDescriptionRef)_copyCompressedFormatDescriptionForUncompressedSampleBuffer:(CMVideoFormatDescriptionRef)result;
- (double)_cropRectForSampleBuffer:(uint64_t)buffer;
- (id)freeBufferCountIncreasedHandler;
- (int)uncompressedEquivalentCapacity;
- (uint64_t)_compressedByteCapacity;
- (uint64_t)_copyRAWThumbnailsForSampleBufferIfNeeded:(uint64_t)result;
- (uint64_t)_inUseCompressedBufferCount;
- (uint64_t)_inUseCompressedBytes;
- (uint64_t)_newCompressedSampleBufferFromUncompressedSampleBuffer:(uint64_t)result;
- (uint64_t)_newCompressionSession;
- (uint64_t)_newDecompressedSampleBufferFromCompressedSampleBuffer:(uint64_t)buffer;
- (uint64_t)_shouldPassthroughSampleBuffer:(uint64_t)buffer compressionInputDimensions:(uint64_t)dimensions forInput:;
- (uint64_t)_updateCompressedByteCapacity;
- (void)_asyncOnDecompressionQueue:(uint64_t)queue;
- (void)_compressionOptionsWithCropRect:(uint64_t)rect pixelFormat:(int)format;
- (void)_cropRectForMetadata:(uint64_t)metadata dimensions:(void *)dimensions settings:;
- (void)_decompressionWork;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)flushAndWaitForUncompressedEquivalentFreeBufferCount:(int)count;
- (void)flushAndWaitUntilThreshold:(int)threshold;
- (void)getInUseCompressedBufferCount:(int *)count inUseCompressedBytes:(int64_t *)bytes maxInUseCompressedBytes:(int64_t *)compressedBytes forUncompressedEquivalentFreeBufferCount:(int)bufferCount;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)handleStillImagePrewarmWithSettings:(id)settings resourceConfig:(id)config forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setFreeBufferCountIncreasedHandler:(id)handler;
- (void)setUncompressedEquivalentCapacity:(int)capacity;
@end

@implementation BWCompressedShotBufferNode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWCompressedShotBufferNode)initWithNodeConfiguration:(id)configuration compressionInputDimensions:(id)dimensions
{
  v20.receiver = self;
  v20.super_class = BWCompressedShotBufferNode;
  v6 = [(BWNode *)&v20 init];
  v7 = v6;
  if (v6)
  {
    [(BWNode *)v6 setSupportsLiveReconfiguration:1];
    configurationCopy = configuration;
    v7->_nodeConfiguration = configurationCopy;
    v7->_optimizedFieldOfViewProcessingCropEnabled = [(BWStillImageNodeConfiguration *)configurationCopy optimizedProcessingForZoomFOVSupported];
    v7->_bufferTrackingLock._os_unfair_lock_opaque = 0;
    v7->_uncompressedEquivalentCapacity = 11;
    v7->_queuedCompressedSampleBuffers = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7->_passthroughEnabled = 1;
    v7->_compressWhenCompressedBuffersInUseEnabled = 1;
    v7->_compressedSurfacePoolEnabled = 0;
    if (dimensions.var0 >= 1 && *&dimensions > 0)
    {
      v7->_compressionInputDimensionsInit = dimensions;
      [configuration figThreadPriority];
      v7->_decompressionQueue = FigDispatchQueueCreateWithPriority();
      depthDataType = [configuration depthDataType];
      if (depthDataType <= 0xA)
      {
        if (((1 << depthDataType) & 0xF6) != 0)
        {
LABEL_6:

          return 0;
        }

        if (((1 << depthDataType) & 0x609) != 0)
        {
          v10 = 5;
        }

        else
        {
          v10 = 7;
        }

        v7->_decompressionPoolCapacity = v10;
      }

      v7->_rawThumbnailCopyEnabled = ((vcvts_n_f32_u64([objc_msgSend(MEMORY[0x1E696AE30] "processInfo")], 0xAuLL) * 0.00097656) * 0.00097656) > 10.0;
      v11 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v7 index:0];
      [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v11 primaryMediaConfiguration] setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v11 primaryMediaConfiguration] setPassthroughMode:1];
      [(BWNode *)v7 addInput:v11];
      v12 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v7];
      [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v12 primaryMediaConfiguration] setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v12 primaryMediaConfiguration] setPassthroughMode:1];
      [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v12 primaryMediaConfiguration] setIndexOfInputWhichDrivesThisOutput:[(BWNodeInput *)v11 index]];
      [(BWNode *)v7 addOutput:v12];
      v13 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v7 index:1];
      v14 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v14 setSupportedPixelFormats:&unk_1F22481F0];
      [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v13 primaryMediaConfiguration] setFormatRequirements:v14];
      [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v13 primaryMediaConfiguration] setPassthroughMode:1];
      [(BWNode *)v7 addInput:v13];
      v7->_sensorRawInput = v13;
      v15 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v7];
      v16 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v16 setSupportedPixelFormats:&unk_1F22481F0];
      [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v15 primaryMediaConfiguration] setFormatRequirements:v16];
      [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v15 primaryMediaConfiguration] setPassthroughMode:1];
      [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v15 primaryMediaConfiguration] setIndexOfInputWhichDrivesThisOutput:[(BWNodeInput *)v13 index]];
      [(BWNode *)v7 addOutput:v15];
      v7->_sensorRawOutput = v15;
      return v7;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v19 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(7, v19, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWCompressedShotBufferNode.m", 126, @"LastShownDate:BWCompressedShotBufferNode.m:126", @"LastShownBuild:BWCompressedShotBufferNode.m:126", 0);
    free(v19);
    goto LABEL_6;
  }

  return v7;
}

- (void)dealloc
{
  compressionSession = self->_compressionSession;
  if (compressionSession)
  {
    CFRelease(compressionSession);
  }

  decompressionFormatDescription = self->_decompressionFormatDescription;
  if (decompressionFormatDescription)
  {
    CFRelease(decompressionFormatDescription);
  }

  v5.receiver = self;
  v5.super_class = BWCompressedShotBufferNode;
  [(BWNode *)&v5 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  v5 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [input index]);

  [v5 setFormat:format];
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (dword_1EB58E240)
  {
    v11 = 0;
    v10 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__BWCompressedShotBufferNode_configurationWithID_updatedFormat_didBecomeLiveForInput___block_invoke;
  v9[3] = &unk_1E798FE50;
  v9[5] = self;
  v9[6] = d;
  v9[4] = input;
  [(BWCompressedShotBufferNode *)self _asyncOnDecompressionQueue:v9];
}

uint64_t __86__BWCompressedShotBufferNode_configurationWithID_updatedFormat_didBecomeLiveForInput___block_invoke(uint64_t a1)
{
  if (dword_1EB58E240)
  {
    v7 = 0;
    v6 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [objc_msgSend(objc_msgSend(*(a1 + 40) outputs];
}

- (void)_asyncOnDecompressionQueue:(uint64_t)queue
{
  if (queue)
  {
    if (a2)
    {
      v2 = *(queue + 248);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__BWCompressedShotBufferNode__asyncOnDecompressionQueue___block_invoke;
      block[3] = &unk_1E798FEA0;
      block[4] = a2;
      dispatch_async(v2, block);
    }
  }
}

- (void)handleStillImagePrewarmWithSettings:(id)settings resourceConfig:(id)config forInput:(id)input
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __90__BWCompressedShotBufferNode_handleStillImagePrewarmWithSettings_resourceConfig_forInput___block_invoke;
  v5[3] = &unk_1E798FE78;
  v5[4] = self;
  v5[5] = input;
  v5[6] = settings;
  v5[7] = config;
  [(BWCompressedShotBufferNode *)self _asyncOnDecompressionQueue:v5];
}

uint64_t __90__BWCompressedShotBufferNode_handleStillImagePrewarmWithSettings_resourceConfig_forInput___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "outputs")];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);

  return [v2 emitStillImagePrewarmMessageWithSettings:v3 resourceConfig:v4];
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__BWCompressedShotBufferNode_handleNodeError_forInput___block_invoke;
  v4[3] = &unk_1E798FD58;
  v4[4] = self;
  v4[5] = input;
  v4[6] = error;
  [(BWCompressedShotBufferNode *)self _asyncOnDecompressionQueue:v4];
}

uint64_t __55__BWCompressedShotBufferNode_handleNodeError_forInput___block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "outputs")];
  v3 = *(a1 + 48);

  return [v2 emitNodeError:v3];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  bufferCopy = buffer;
  v7 = CMGetAttachment(buffer, @"StillSettings", 0);
  v8 = v7;
  if (dword_1EB58E240)
  {
    v9 = v7;
    v57 = 0;
    v56 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v8 = v9;
  }

  compressionInputDimensionsInit = self->_compressionInputDimensionsInit;
  if (self->_optimizedFieldOfViewProcessingCropEnabled)
  {
    v12 = BWAspectRatioValueFromAspectRatio([objc_msgSend(v8 "requestedSettings")]);
    compressionInputDimensionsInit = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(compressionInputDimensionsInit, v12);
  }

  if (([(BWCompressedShotBufferNode *)self _shouldPassthroughSampleBuffer:bufferCopy compressionInputDimensions:compressionInputDimensionsInit forInput:input]& 1) != 0)
  {
LABEL_14:
    if (bufferCopy)
    {
      v18 = CFRetain(bufferCopy);
      goto LABEL_16;
    }

LABEL_56:
    v42 = CMGetAttachment(bufferCopy, *off_1E798A3C8, 0);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __58__BWCompressedShotBufferNode_renderSampleBuffer_forInput___block_invoke_3;
    v45[3] = &unk_1E798FE78;
    v45[4] = self;
    v45[5] = v8;
    v45[6] = v42;
    v45[7] = input;
    [(BWCompressedShotBufferNode *)self _asyncOnDecompressionQueue:v45];
    return;
  }

  sbuf = bufferCopy;
  if (!self->_decompressionPool)
  {
    [(BWCompressedShotBufferNode *)self _setupDecompressionPoolWithDimensions:?];
  }

  os_unfair_lock_lock(&self->_bufferTrackingLock);
  p_compressionInputDimensions = &self->_compressionInputDimensions;
  compressionInputDimensions = self->_compressionInputDimensions;
  if (compressionInputDimensions.width < 1 || compressionInputDimensions.height <= 0)
  {
    *p_compressionInputDimensions = compressionInputDimensionsInit;
    if (compressionInputDimensionsInit < 1 || SHIDWORD(compressionInputDimensionsInit) <= 0)
    {
      FormatDescription = CMSampleBufferGetFormatDescription(bufferCopy);
      *p_compressionInputDimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
    }

    [(BWCompressedShotBufferNode *)self _updateCompressedByteCapacity];
  }

  else
  {
    if (compressionInputDimensionsInit != compressionInputDimensions)
    {
      v57 = 0;
      v56 = 0;
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v48 = 138413058;
      v49 = BWStringFromDimensions();
      v50 = 2112;
      v51 = BWStringFromDimensions();
      v52 = 2112;
      v53 = BWAspectRatioToShortString([objc_msgSend(v8 "requestedSettings")]);
      v54 = 2048;
      settingsID = [v8 settingsID];
      v17 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(7, v17, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWCompressedShotBufferNode.m", 337, @"LastShownDate:BWCompressedShotBufferNode.m:337", @"LastShownBuild:BWCompressedShotBufferNode.m:337", 0);
      free(v17);
      os_unfair_lock_unlock(&self->_bufferTrackingLock);
      bufferCopy = sbuf;
      goto LABEL_14;
    }

    inUseUncompressedBufferCount = self->_inUseUncompressedBufferCount;
    if (inUseUncompressedBufferCount >= self->_decompressionPoolCapacity || self->_inUseCompressedBufferCount > 0)
    {
LABEL_32:
      inUseCompressedBufferCount = self->_inUseCompressedBufferCount;
      v43 = v8;
      if (inUseCompressedBufferCount <= 0)
      {
        inUseCompressedBytes = self->_inUseCompressedBytes;
        compressionInputDimensions.width *= self->_compressionInputDimensions.height;
        v29 = 2.0;
      }

      else
      {
        compressionInputDimensions = (self->_compressionInputDimensions.height * compressionInputDimensions.width);
        v27 = (*&compressionInputDimensions * inUseCompressedBufferCount);
        inUseCompressedBytes = self->_inUseCompressedBytes;
        v29 = v27 / inUseCompressedBytes;
      }

      v30 = (compressionInputDimensions.width / v29);
      v31 = inUseCompressedBytes + v30;
      compressedByteCapacity = self->_compressedByteCapacity;
      os_unfair_lock_unlock(&self->_bufferTrackingLock);
      v33 = MEMORY[0x1E695FF58];
      if (v31 >= compressedByteCapacity)
      {
        mach_absolute_time();
        if (*v33 == 1)
        {
          [(BWCompressedShotBufferNode *)self _inUseCompressedBufferCount];
          [(BWCompressedShotBufferNode *)self _inUseCompressedBytes];
          [(BWCompressedShotBufferNode *)self _compressedByteCapacity];
          kdebug_trace();
        }

        if (dword_1EB58E240)
        {
          v57 = 0;
          v56 = 0;
          v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v33 = MEMORY[0x1E695FF58];
        }

        while (1)
        {
          v36 = [(BWCompressedShotBufferNode *)self _inUseCompressedBytes]+ v30;
          if (v36 <= [(BWCompressedShotBufferNode *)self _compressedByteCapacity])
          {
            break;
          }

          usleep(0x2710u);
        }

        if (*v33 == 1)
        {
          kdebug_trace();
        }

        mach_absolute_time();
        FigHostTimeToNanoseconds();
        if (dword_1EB58E240)
        {
          v57 = 0;
          v56 = 0;
          v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      mach_absolute_time();
      bufferCopy = sbuf;
      v38 = [(BWCompressedShotBufferNode *)self _newCompressedSampleBufferFromUncompressedSampleBuffer:?];
      v8 = v43;
      if (v38)
      {
        v19 = v38;
        mach_absolute_time();
        FigHostTimeToNanoseconds();
        DataBuffer = CMSampleBufferGetDataBuffer(v19);
        DataLength = CMBlockBufferGetDataLength(DataBuffer);
        if (DataLength > 0)
        {
          v41 = DataLength;
          os_unfair_lock_lock(&self->_bufferTrackingLock);
          [(NSMutableArray *)self->_queuedCompressedSampleBuffers addObject:v19];
          ++self->_inUseCompressedBufferCount;
          self->_inUseCompressedBytes += v41;
          if (*MEMORY[0x1E695FF58] == 1)
          {
            kdebug_trace();
          }

          os_unfair_lock_unlock(&self->_bufferTrackingLock);
          v20 = v47;
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __58__BWCompressedShotBufferNode_renderSampleBuffer_forInput___block_invoke;
          v47[3] = &unk_1E798F870;
          v47[4] = self;
          goto LABEL_18;
        }

        CFRelease(v19);
      }

      goto LABEL_56;
    }

    decompressionPool = self->_decompressionPool;
    if (decompressionPool)
    {
      if (![(BWPixelBufferPool *)decompressionPool isPixelBufferAvailable])
      {
        compressionInputDimensions.width = p_compressionInputDimensions->width;
        goto LABEL_32;
      }

      inUseUncompressedBufferCount = self->_inUseUncompressedBufferCount;
    }

    self->_inUseUncompressedBufferCount = inUseUncompressedBufferCount + 1;
  }

  os_unfair_lock_unlock(&self->_bufferTrackingLock);
  v18 = [(BWCompressedShotBufferNode *)self _newSampleBufferFromDecompressionPoolWithCopyOfSampleBuffer:bufferCopy];
LABEL_16:
  v19 = v18;
  if (!v18)
  {
    goto LABEL_56;
  }

  CFRetain(v18);
  v20 = v46;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __58__BWCompressedShotBufferNode_renderSampleBuffer_forInput___block_invoke_2;
  v46[3] = &unk_1E798FE50;
  v46[4] = self;
  v46[5] = input;
  v46[6] = v19;
LABEL_18:
  [(BWCompressedShotBufferNode *)self _asyncOnDecompressionQueue:v20];
  if (([objc_msgSend(v8 "captureSettings")] & 2) == 0)
  {
    capacity = [(BWPixelBufferPool *)self->_rawThumbnailPool capacity];
    decompressionPoolCapacity = self->_decompressionPoolCapacity;
    if (capacity > 2 * decompressionPoolCapacity)
    {
      [(BWPixelBufferPool *)self->_rawThumbnailPool setCapacity:2 * decompressionPoolCapacity];
    }
  }

  CFRelease(v19);
}

void __58__BWCompressedShotBufferNode_renderSampleBuffer_forInput___block_invoke_2(uint64_t a1)
{
  [objc_msgSend(objc_msgSend(*(a1 + 32) "outputs")];
  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __58__BWCompressedShotBufferNode_renderSampleBuffer_forInput___block_invoke_3(uint64_t a1)
{
  v2 = [BWNodeError newError:4294954516 sourceNode:*(a1 + 32) stillImageSettings:*(a1 + 40) metadata:*(a1 + 48)];
  [objc_msgSend(objc_msgSend(*(a1 + 32) "outputs")];
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  if (dword_1EB58E240)
  {
    v11 = 0;
    v10 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(BWNode *)self allInputsHaveReachedState:0, input, v7, v8])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__BWCompressedShotBufferNode_didReachEndOfDataForConfigurationID_input___block_invoke;
    v9[3] = &unk_1E798F898;
    v9[4] = d;
    v9[5] = self;
    [(BWCompressedShotBufferNode *)self _asyncOnDecompressionQueue:v9];
  }
}

uint64_t __72__BWCompressedShotBufferNode_didReachEndOfDataForConfigurationID_input___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(*(a1 + 40) + 256) flush];

  *(*(a1 + 40) + 256) = 0;
  *(*(a1 + 40) + 264) = 0;

  *(*(a1 + 40) + 296) = 0;
  os_unfair_lock_lock((*(a1 + 40) + 160));
  *(*(a1 + 40) + 228) = *MEMORY[0x1E6960CF8];
  os_unfair_lock_unlock((*(a1 + 40) + 160));
  if (!v2)
  {
    if (dword_1EB58E240)
    {
      v32 = 0;
      v31 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = *(a1 + 40);
    if (*(v4 + 216))
    {
      CMPhotoCompressionSessionReleaseHardwareResources();
      CMPhotoCompressionSessionFlushCachedBuffers();
      v4 = *(a1 + 40);
      v5 = *(v4 + 216);
      if (v5)
      {
        CFRelease(v5);
        *(*(a1 + 40) + 216) = 0;
        v4 = *(a1 + 40);
      }
    }

    os_unfair_lock_lock((v4 + 160));
    v6 = *(a1 + 40);
    v7 = *(v6 + 200);
    *(v6 + 200) = 0;
    os_unfair_lock_unlock((*(a1 + 40) + 160));
    if (v7)
    {
      v7[2](v7);
    }
  }

  if (dword_1EB58E240)
  {
    v32 = 0;
    v31 = OS_LOG_TYPE_DEFAULT;
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v9 = v32;
    if (os_log_type_enabled(v8, v31))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFE;
    }

    if (v10)
    {
      v11 = [objc_msgSend(*(a1 + 40) "outputs")];
      v12 = *(a1 + 32);
      v25 = 136315650;
      v26 = "[BWCompressedShotBufferNode didReachEndOfDataForConfigurationID:input:]_block_invoke";
      v27 = 1026;
      v28 = v11;
      v29 = 2114;
      v30 = v12;
      LODWORD(v19) = 28;
      v18 = &v25;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [*(a1 + 40) outputs];
  result = [v13 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (result)
  {
    v15 = result;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v21 + 1) + 8 * v17++) markEndOfLiveOutputForConfigurationID:*(a1 + 32)];
      }

      while (v15 != v17);
      result = [v13 countByEnumeratingWithState:&v21 objects:v20 count:16];
      v15 = result;
    }

    while (result);
  }

  return result;
}

- (void)setUncompressedEquivalentCapacity:(int)capacity
{
  os_unfair_lock_lock(&self->_bufferTrackingLock);
  if (self->_uncompressedEquivalentCapacity != capacity)
  {
    self->_uncompressedEquivalentCapacity = capacity;
    [(BWCompressedShotBufferNode *)self _updateCompressedByteCapacity];
  }

  os_unfair_lock_unlock(&self->_bufferTrackingLock);
}

- (int)uncompressedEquivalentCapacity
{
  os_unfair_lock_lock(&self->_bufferTrackingLock);
  uncompressedEquivalentCapacity = self->_uncompressedEquivalentCapacity;
  os_unfair_lock_unlock(&self->_bufferTrackingLock);
  return uncompressedEquivalentCapacity;
}

- (BOOL)compressionResourcesAllocated
{
  os_unfair_lock_lock(&self->_bufferTrackingLock);
  compressionInputDimensions = self->_compressionInputDimensions;
  v5 = compressionInputDimensions.width > 0 && compressionInputDimensions.height > 0;
  os_unfair_lock_unlock(&self->_bufferTrackingLock);
  return v5;
}

- (void)flushAndWaitUntilThreshold:(int)threshold
{
  os_unfair_lock_lock(&self->_bufferTrackingLock);
  v5 = (((100.0 - threshold) / 100.0) * (self->_compressedByteCapacity / (self->_compressionInputDimensions.height * self->_compressionInputDimensions.width)));
  os_unfair_lock_unlock(&self->_bufferTrackingLock);

  [(BWCompressedShotBufferNode *)self flushAndWaitForUncompressedEquivalentFreeBufferCount:v5];
}

- (void)setFreeBufferCountIncreasedHandler:(id)handler
{
  os_unfair_lock_lock(&self->_bufferTrackingLock);
  inUseCompressedBufferCount = self->_inUseCompressedBufferCount;

  self->_freeBufferCountIncreasedHandler = [handler copy];
  os_unfair_lock_unlock(&self->_bufferTrackingLock);
  if (handler && !inUseCompressedBufferCount)
  {
    v6 = *(handler + 2);

    v6(handler);
  }
}

- (id)freeBufferCountIncreasedHandler
{
  os_unfair_lock_lock(&self->_bufferTrackingLock);
  v3 = self->_freeBufferCountIncreasedHandler;
  os_unfair_lock_unlock(&self->_bufferTrackingLock);

  return v3;
}

- (void)getInUseCompressedBufferCount:(int *)count inUseCompressedBytes:(int64_t *)bytes maxInUseCompressedBytes:(int64_t *)compressedBytes forUncompressedEquivalentFreeBufferCount:(int)bufferCount
{
  os_unfair_lock_lock(&self->_bufferTrackingLock);
  if (count)
  {
    *count = self->_inUseCompressedBufferCount;
  }

  if (bytes)
  {
    *bytes = self->_inUseCompressedBytes;
  }

  if (compressedBytes)
  {
    *compressedBytes = self->_compressedByteCapacity - self->_compressionInputDimensions.height * self->_compressionInputDimensions.width * bufferCount;
  }

  os_unfair_lock_unlock(&self->_bufferTrackingLock);
}

void __57__BWCompressedShotBufferNode__asyncOnDecompressionQueue___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __72__BWCompressedShotBufferNode__copyRAWThumbnailsForSampleBufferIfNeeded___block_invoke_2(uint64_t a1, const __CFString *a2)
{
  v3 = CMGetAttachment(*(a1 + 48), a2, 0);
  if (v3)
  {
    __72__BWCompressedShotBufferNode__copyRAWThumbnailsForSampleBufferIfNeeded___block_invoke_2_cold_1(v3, a1);
  }
}

- (uint64_t)_shouldPassthroughSampleBuffer:(uint64_t)buffer compressionInputDimensions:(uint64_t)dimensions forInput:
{
  if (result)
  {
    v4 = result;
    if (*(result + 144) != dimensions)
    {
      return 1;
    }

    v7 = CMGetAttachment(target, @"StillSettings", 0);
    v8 = CMGetAttachment(target, *off_1E798A3C8, 0);
    if ([objc_msgSend(v7 "requestedSettings")] == 2)
    {
      return 1;
    }

    if ([objc_msgSend(v7 "requestedSettings")] != 1 || (result = objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", *off_1E798B588), "intValue"), result != 1))
    {
      [(BWCompressedShotBufferNode *)v4 _cropRectForSampleBuffer:?];
      if (v10 <= buffer && v9 <= SHIDWORD(buffer))
      {
        if (([objc_msgSend(v7 "captureSettings")] & 2) != 0)
        {
          return 0;
        }

        if (*(v4 + 208) != 1)
        {
          return 0;
        }

        v12 = [objc_msgSend(v7 "captureSettings")];
        if (*(v4 + 209) == 1)
        {
          v13 = v12;
          if (-[BWCompressedShotBufferNode _hasQueuedCompressedBuffers](v4) || (v13 & 0x800) != 0 && ([v4 compressionResourcesAllocated] & 1) != 0)
          {
            return 0;
          }
        }
      }

      return 1;
    }
  }

  return result;
}

- (BWPixelBufferPool)_setupDecompressionPoolWithDimensions:(BWPixelBufferPool *)result
{
  if (result)
  {
    v2 = result;
    if (!result[2]._name)
    {
      v4 = [-[NSString primaryMediaProperties](result[1]._name "primaryMediaProperties")];
      v5 = objc_alloc_init(BWVideoFormatRequirements);
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v4, "pixelFormat")}];
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
      [OUTLINED_FUNCTION_4() setSupportedPixelFormats:?];
      [(BWVideoFormatRequirements *)v5 setWidth:a2];
      [(BWVideoFormatRequirements *)v5 setHeight:a2 >> 32];
      [v4 bytesPerRowAlignment];
      [OUTLINED_FUNCTION_4() setBytesPerRowAlignment:?];
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v4, "cacheMode")}];
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
      [OUTLINED_FUNCTION_4() setSupportedCacheModes:?];
      v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "colorSpaceProperties")}];
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
      [OUTLINED_FUNCTION_4() setSupportedColorSpaceProperties:?];
      v7 = v5;
      LOBYTE(v6) = 1;
      result = -[BWPixelBufferPool initWithVideoFormat:capacity:name:clientProvidesPool:memoryPool:providesBackPressure:reportSlowBackPressureAllocations:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:clientProvidesPool:memoryPool:providesBackPressure:reportSlowBackPressureAllocations:", +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1]), *&v2[2]._clientProvidesPool, @"BWCompressedShotBuffer Decompression", 0, +[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"), 1, v6);
      v2[2]._name = &result->super.isa;
    }
  }

  return result;
}

- (uint64_t)_updateCompressedByteCapacity
{
  if (result)
  {
    v1 = *(result + 228);
    if (v1 >= 1 && SHIDWORD(v1) >= 1)
    {
      v3 = *(result + 172) - *(result + 272);
      if (v3 <= 1)
      {
        v3 = 1;
      }

      *(result + 184) = (HIDWORD(v1) * v1) * v3;
    }
  }

  return result;
}

- (uint64_t)_inUseCompressedBufferCount
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_12(self);
  v2 = *(v1 + 168);
  OUTLINED_FUNCTION_18_4();
  return v2;
}

- (uint64_t)_inUseCompressedBytes
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_12(self);
  v2 = *(v1 + 176);
  OUTLINED_FUNCTION_18_4();
  return v2;
}

- (uint64_t)_compressedByteCapacity
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_12(self);
  v2 = *(v1 + 184);
  OUTLINED_FUNCTION_18_4();
  return v2;
}

- (uint64_t)_newCompressedSampleBufferFromUncompressedSampleBuffer:(uint64_t)result
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v49 = 0;
  v50 = 0;
  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  v5 = MEMORY[0x1E695FF58];
  if (ImageBuffer)
  {
    v6 = CFRetain(ImageBuffer);
    if (v6)
    {
      v7 = v6;
      if (*v5 == 1)
      {
        IOSurface = CVPixelBufferGetIOSurface(v6);
        IOSurfaceGetID(IOSurface);
        kdebug_trace();
      }

      PixelFormatType = CVPixelBufferGetPixelFormatType(v7);
      if (PixelFormatType != 1651925816 && PixelFormatType != 1652056888)
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
LABEL_37:
        v30 = v7;
        goto LABEL_43;
      }

      v11 = PixelFormatType;
      memset(&timingInfoOut, 0, sizeof(timingInfoOut));
      if (CMSampleBufferGetSampleTimingInfo(sbuf, 0, &timingInfoOut))
      {
        goto LABEL_37;
      }

      if (!*(v3 + 216))
      {
        _newCompressionSession = [(BWCompressedShotBufferNode *)v3 _newCompressionSession];
        *(v3 + 216) = _newCompressionSession;
        if (!_newCompressionSession)
        {
          goto LABEL_37;
        }
      }

      v12 = *MEMORY[0x1E6991870];
      v47[0] = &unk_1F2242718;
      v13 = *MEMORY[0x1E6991860];
      v46[0] = v12;
      v46[1] = v13;
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2];
      v15 = *MEMORY[0x1E6991880];
      v47[1] = v14;
      v47[2] = &unk_1F2242718;
      v16 = *MEMORY[0x1E6991868];
      v46[2] = v15;
      v46[3] = v16;
      v47[3] = MEMORY[0x1E695E118];
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:4];
      if (CMPhotoCompressionSessionOpenEmptyContainer())
      {
        goto LABEL_37;
      }

      Width = CVPixelBufferGetWidth(v7);
      Height = CVPixelBufferGetHeight(v7);
      dimensions = [*(v3 + 264) dimensions];
      v20 = dimensions;
      v21 = HIDWORD(dimensions);
      if (Width <= dimensions && Height <= SHIDWORD(dimensions))
      {
        goto LABEL_40;
      }

      v23 = dimensions;
      v51.origin.x = [(BWCompressedShotBufferNode *)v3 _cropRectForSampleBuffer:?];
      v24 = v51.size.width;
      v25 = v51.size.height;
      y = v51.origin.y;
      x = v51.origin.x;
      if (CGRectIsNull(v51))
      {
        goto LABEL_37;
      }

      if (v24 > v20 || v25 > v21)
      {
        goto LABEL_40;
      }

      v27 = v24;
      if (FigCaptureCeilFloatToMultipleOf(8, v27) < v20)
      {
        v23 = FigCaptureCeilFloatToMultipleOf(8, v27);
      }

      v28 = v25;
      if (FigCaptureCeilFloatToMultipleOf(8, v28) < v21)
      {
        LODWORD(v21) = FigCaptureCeilFloatToMultipleOf(8, v28);
      }

      if (((v23 | v21) & 7) == 0 || !(v23 & 0xF | v21 & 3))
      {
LABEL_40:
        v30 = v7;
      }

      else
      {
        mach_absolute_time();
        v29 = [+[BWOnDemandPixelBufferAllocator onDemandAllocatorWithDimensions:pixelFormat:name:memoryPool:](BWOnDemandPixelBufferAllocator onDemandAllocatorWithDimensions:v20 pixelFormat:v11 name:@"Uncompressed shot buffer copy" memoryPool:+[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool")), "newPixelBuffer"];
        if (!v29)
        {
          goto LABEL_37;
        }

        v30 = v29;
        v45 = v11;
        v31 = *MEMORY[0x1E69661F8];
        v32 = CVBufferCopyAttachment(v7, *MEMORY[0x1E69661F8], 0);
        if (v32)
        {
          v33 = v32;
          CVBufferSetAttachment(v30, v31, v32, kCVAttachmentMode_ShouldNotPropagate);
          CFRelease(v33);
        }

        CVPixelBufferLockBaseAddress(v7, 1uLL);
        CVPixelBufferLockBaseAddress(v30, 0);
        BytesPerRow = CVPixelBufferGetBytesPerRow(v7);
        v35 = CVPixelBufferGetBytesPerRow(v30);
        BaseAddress = CVPixelBufferGetBaseAddress(v7);
        v37 = CVPixelBufferGetBaseAddress(v30);
        if (v21)
        {
          v38 = v37;
          v39 = v21;
          v40 = &BaseAddress[BytesPerRow * y + x];
          do
          {
            memcpy(v38, v40, v23);
            v40 += BytesPerRow;
            v38 += v35;
            --v39;
          }

          while (v39);
        }

        CVPixelBufferUnlockBaseAddress(v7, 1uLL);
        CVPixelBufferUnlockBaseAddress(v30, 0);
        mach_absolute_time();
        FigHostTimeToNanoseconds();
        CFRetain(v30);
        CFRelease(v7);
        v5 = MEMORY[0x1E695FF58];
        LODWORD(v11) = v45;
      }

      OUTLINED_FUNCTION_2_20();
      [BWCompressedShotBufferNode _compressionOptionsWithCropRect:v42 pixelFormat:v11];
      if (!CMPhotoCompressionSessionAddImage())
      {
        CMPhotoCompressionSessionCloseContainerAndCopyBacking();
      }

      goto LABEL_43;
    }
  }

  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  v30 = 0;
LABEL_43:
  if (*v5 == 1)
  {
    OUTLINED_FUNCTION_5_14();
  }

  if (v49)
  {
    CFRelease(v49);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return v50;
}

- (void)_decompressionWork
{
  if (self)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }

    v2 = OUTLINED_FUNCTION_10_7();
    os_unfair_lock_lock(v2);
    firstObject = [*(self + 192) firstObject];
    if (firstObject)
    {
      v5 = firstObject;
      [*(self + 192) removeObjectAtIndex:0];
      v6 = OUTLINED_FUNCTION_10_7();
      os_unfair_lock_unlock(v6);
      DataBuffer = CMSampleBufferGetDataBuffer(v5);
      DataLength = CMBlockBufferGetDataLength(DataBuffer);
      v9 = [(BWCompressedShotBufferNode *)self _newDecompressedSampleBufferFromCompressedSampleBuffer:v5];
      if (v9)
      {
        v10 = v9;
        CMGetAttachment(v9, @"StillSettings", 0);
        [*(self + 152) emitSampleBuffer:v10];
        CFRelease(v10);
      }

      else
      {
        v11 = CMGetAttachment(v5, @"StillSettings", 0);
        v12 = [BWNodeError newError:4294954516 sourceNode:self stillImageSettings:v11 metadata:CMGetAttachment(v5, *off_1E798A3C8, 0)];
        [*(self + 152) emitNodeError:v12];
      }

      CFRelease(v5);
      v13 = OUTLINED_FUNCTION_10_7();
      os_unfair_lock_lock(v13);
      --*(self + 168);
      v14 = *(self + 176);
      *(self + 176) = v14 - DataLength;
      if (!*(self + 168))
      {
        if (v14 != DataLength)
        {
          OUTLINED_FUNCTION_0();
          FigDebugAssert3();
        }

        *(self + 164) = 0;
      }

      if (*MEMORY[0x1E695FF58] == 1)
      {
        kdebug_trace();
      }

      v16 = *(self + 200);
      v15 = OUTLINED_FUNCTION_10_7();
      os_unfair_lock_unlock(v15);
      if (v16)
      {
        v16[2](v16);
      }
    }

    else
    {
      v4 = OUTLINED_FUNCTION_10_7();

      os_unfair_lock_unlock(v4);
    }
  }
}

- (CMAttachmentBearerRef)_newSampleBufferFromDecompressionPoolWithCopyOfSampleBuffer:(CMAttachmentBearerRef)result
{
  if (result)
  {
    v3 = result;
    mach_absolute_time();
    target = 0;
    ImageBuffer = CMSampleBufferGetImageBuffer(a2);
    newPixelBuffer = [*(v3 + 264) newPixelBuffer];
    v6 = newPixelBuffer;
    if (!ImageBuffer)
    {
      OUTLINED_FUNCTION_0();
      goto LABEL_50;
    }

    if (!newPixelBuffer)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      return target;
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
    v8 = CVPixelBufferGetPixelFormatType(v6);
    if (PixelFormatType != 1651925816 && PixelFormatType != 1652056888)
    {
      goto LABEL_13;
    }

    if (v8 != 1651925816 && v8 != 1652056888)
    {
      goto LABEL_13;
    }

    Width = CVPixelBufferGetWidth(ImageBuffer);
    Height = CVPixelBufferGetHeight(ImageBuffer);
    v13 = CVPixelBufferGetWidth(v6);
    v14 = CVPixelBufferGetHeight(v6);
    v15 = *MEMORY[0x1E695F050];
    v16 = *(MEMORY[0x1E695F050] + 8);
    v17 = *(MEMORY[0x1E695F050] + 16);
    v18 = *(MEMORY[0x1E695F050] + 24);
    v47 = v13 | (v14 << 32);
    v48 = Width | (Height << 32);
    if (v48 != v47)
    {
      v19 = v14;
      if (Width > v13 || Height > v14)
      {
        v42 = [(BWCompressedShotBufferNode *)v3 _cropRectForSampleBuffer:a2];
        v15 = v42;
        v16 = v43;
        if (v44 > v13 || v45 > v19)
        {
LABEL_13:
          OUTLINED_FUNCTION_0();
          FigDebugAssert3();
LABEL_40:
          CFRelease(v6);
          return target;
        }

        v17 = v44;
        v18 = v45;
      }
    }

    v21 = Height << 32;
    BytesPerRow = CVPixelBufferGetBytesPerRow(ImageBuffer);
    v23 = CVPixelBufferGetBytesPerRow(v6);
    CVPixelBufferLockBaseAddress(ImageBuffer, 1uLL);
    CVPixelBufferLockBaseAddress(v6, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(ImageBuffer);
    v25 = CVPixelBufferGetBaseAddress(v6);
    if (BytesPerRow == v23)
    {
      v50.origin.x = OUTLINED_FUNCTION_1();
      if (CGRectIsNull(v50))
      {
        memcpy(v25, BaseAddress, BytesPerRow * (v21 >> 32));
        goto LABEL_31;
      }
    }

    if (BytesPerRow >= v23)
    {
      v26 = v23;
    }

    else
    {
      v26 = BytesPerRow;
    }

    v51.origin.x = OUTLINED_FUNCTION_1();
    if (CGRectIsNull(v51))
    {
      v27 = v21 >> 32;
      if (!v27)
      {
        goto LABEL_31;
      }
    }

    else
    {
      BaseAddress += BytesPerRow * v16 + v15;
      v27 = v18;
      v26 = v17;
      if (!v18)
      {
        goto LABEL_31;
      }
    }

    do
    {
      memcpy(v25, BaseAddress, v26);
      BaseAddress += BytesPerRow;
      v25 += v23;
      --v27;
    }

    while (v27);
LABEL_31:
    CVPixelBufferUnlockBaseAddress(ImageBuffer, 1uLL);
    CVPixelBufferUnlockBaseAddress(v6, 0);
    CVBufferPropagateAttachments(ImageBuffer, v6);
    v28 = *MEMORY[0x1E69661F8];
    v29 = CVBufferCopyAttachment(ImageBuffer, *MEMORY[0x1E69661F8], 0);
    CVBufferSetAttachment(v6, v28, v29, kCVAttachmentMode_ShouldNotPropagate);
    if (v29)
    {
      CFRelease(v29);
    }

    if (!BWCMSampleBufferCreateCopyWithNewPixelBuffer(a2, v6, (v3 + 280), &target))
    {
      [(BWCompressedShotBufferNode *)v3 _copyRAWThumbnailsForSampleBufferIfNeeded:?];
      v52.origin.x = OUTLINED_FUNCTION_1();
      if (!CGRectIsNull(v52))
      {
        v30 = BWCMSampleBufferCopyReattachAndReturnMutableMetadata(target);
        v31 = CMGetAttachment(target, @"StillSettings", 0);
        if (*(v3 + 136) == 1)
        {
          if ([objc_msgSend(v31 "processingSettings")])
          {
            OUTLINED_FUNCTION_1();
            FigCaptureMetadataUtilitiesUpdateISPSpatialMetadataForStillImageCrop(v32, v33);
            OUTLINED_FUNCTION_1();
            FigCFDictionarySetCGRect();
          }
        }

        v34 = OUTLINED_FUNCTION_1();
        FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v35, v36, v47, v34, v37, v38, v39, v40, v41, v17, v18);
        FigCaptureMetadataUtilitiesUpdateMetadataForNewFinalDimensions(v30, v48, v47);
      }

      if (!v6)
      {
        return target;
      }

      goto LABEL_40;
    }

LABEL_50:
    FigDebugAssert3();
    if (!v6)
    {
      return target;
    }

    goto LABEL_40;
  }

  return result;
}

- (void)flushAndWaitForUncompressedEquivalentFreeBufferCount:(int)count
{
  mach_absolute_time();
  os_unfair_lock_lock(&self->_bufferTrackingLock);
  v5 = self->_compressedByteCapacity - self->_compressionInputDimensions.height * self->_compressionInputDimensions.width * count;
  os_unfair_lock_unlock(&self->_bufferTrackingLock);
  v6 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    [(BWCompressedShotBufferNode *)self _inUseCompressedBufferCount];
    [(BWCompressedShotBufferNode *)self _inUseCompressedBytes];
    kdebug_trace();
  }

  _inUseCompressedBytes = [(BWCompressedShotBufferNode *)self _inUseCompressedBytes];
  if (_inUseCompressedBytes > v5)
  {
    v8 = 0;
    do
    {
      if ((v8 & 1) == 0 && dword_1EB58E240)
      {
        v9 = OUTLINED_FUNCTION_7_12();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v6 = MEMORY[0x1E695FF58];
      }

      usleep(0x2710u);
      _inUseCompressedBytes2 = [(BWCompressedShotBufferNode *)self _inUseCompressedBytes];
      v8 = 1;
    }

    while (_inUseCompressedBytes2 > v5);
  }

  if (*v6 == 1)
  {
    OUTLINED_FUNCTION_5_14();
  }

  if (_inUseCompressedBytes <= v5)
  {
    if (!dword_1EB58E240)
    {
      return;
    }
  }

  else
  {
    mach_absolute_time();
    FigHostTimeToNanoseconds();
    if (!dword_1EB58E240)
    {
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_7_12();
  os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  OUTLINED_FUNCTION_2_4();
  fig_log_call_emit_and_clean_up_after_send_and_compose();
}

- (BOOL)hasUncompressedEquivalentFreeBufferCount:(int)count
{
  os_unfair_lock_lock(&self->_bufferTrackingLock);
  v5 = self->_compressedByteCapacity - self->_compressionInputDimensions.height * self->_compressionInputDimensions.width * count;
  os_unfair_lock_unlock(&self->_bufferTrackingLock);
  return [(BWCompressedShotBufferNode *)self _inUseCompressedBytes]<= v5;
}

- (void)_cropRectForMetadata:(uint64_t)metadata dimensions:(void *)dimensions settings:
{
  if (self)
  {
    v6 = *MEMORY[0x1E695F050];
    v5 = *(MEMORY[0x1E695F050] + 8);
    v8 = *(MEMORY[0x1E695F050] + 16);
    v7 = *(MEMORY[0x1E695F050] + 24);
    if (a2 && (metadata >= 1 ? (v9 = SHIDWORD(metadata) <= 0) : (v9 = 1), !v9 && dimensions))
    {
      v12 = [objc_msgSend(dimensions "requestedSettings")];
      FigCaptureMetadataUtilitiesGetValidBufferRect();
      OUTLINED_FUNCTION_11_1();
      if (*(self + 136) == 1 && [objc_msgSend(dimensions "processingSettings")] && v12 && v12 != 6)
      {
        BWAspectRatioValueFromAspectRatio(v12);
        v13 = OUTLINED_FUNCTION_3_1();
        FigCaptureMetadataUtilitiesRectByCroppingRectToAspectRatio(v13, v14, v15, v16, v17);
        FigCaptureMetadataUtilitiesRoundRectToMultipleOf();
        v19.origin.x = v6;
        v19.origin.y = v5;
        v19.size.width = v8;
        v19.size.height = v7;
        CGRectIntersection(v18, v19);
        FigCaptureMetadataUtilitiesRoundDenormalizedRectToRawSensorCFABoundary(a2);
        OUTLINED_FUNCTION_11_1();
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }
  }

  OUTLINED_FUNCTION_3_1();
}

- (double)_cropRectForSampleBuffer:(uint64_t)buffer
{
  if (!buffer)
  {
    return 0.0;
  }

  v4 = CMGetAttachment(target, @"StillSettings", 0);
  v5 = CMGetAttachment(target, *off_1E798A3C8, 0);
  v6 = BWPixelBufferDimensionsFromSampleBuffer(target);
  [(BWCompressedShotBufferNode *)buffer _cropRectForMetadata:v5 dimensions:v6 settings:v4];
  return result;
}

- (uint64_t)_copyRAWThumbnailsForSampleBufferIfNeeded:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v15 = __72__BWCompressedShotBufferNode__copyRAWThumbnailsForSampleBufferIfNeeded___block_invoke;
    v16 = &unk_1E798FEC8;
    v4 = *(result + 288);
    v17 = result;
    v18 = target;
    if (v4 == 1)
    {
      __72__BWCompressedShotBufferNode__copyRAWThumbnailsForSampleBufferIfNeeded___block_invoke(v14, *off_1E798A3C0);
      v15(v14, *off_1E798A470);
    }

    v5 = CMGetAttachment(target, @"StillSettings", 0);
    result = [objc_msgSend(v5 "requestedSettings")];
    if (*(v3 + 136) == 1)
    {
      v6 = result;
      result = [objc_msgSend(v5 "processingSettings")];
      if (result)
      {
        if (v6)
        {
          v7 = v6 == 6;
        }

        else
        {
          v7 = 1;
        }

        if (!v7)
        {
          v8[0] = MEMORY[0x1E69E9820];
          v8[1] = 3221225472;
          v9 = __72__BWCompressedShotBufferNode__copyRAWThumbnailsForSampleBufferIfNeeded___block_invoke_2;
          v10 = &unk_1E798FEF0;
          v12 = v5;
          v13 = target;
          v11 = v3;
          __72__BWCompressedShotBufferNode__copyRAWThumbnailsForSampleBufferIfNeeded___block_invoke_2(v8, *off_1E798A3C0);
          return (v9)(v8, *off_1E798A470);
        }
      }
    }
  }

  return result;
}

void __72__BWCompressedShotBufferNode__copyRAWThumbnailsForSampleBufferIfNeeded___block_invoke(uint64_t a1, const __CFString *a2)
{
  v4 = CMGetAttachment(*(a1 + 40), a2, 0);
  if (v4)
  {
    v5 = v4;
    mach_absolute_time();
    v6 = *(*(a1 + 32) + 296);
    if (!v6)
    {
      v7 = CVPixelBufferCopyCreationAttributes(v5);
      v8 = [[BWVideoFormatRequirements alloc] initWithPixelBufferAttributes:v7];
      v13 = v8;
      *(*(a1 + 32) + 296) = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1]), 2 * *(*(a1 + 32) + 272), @"BWCompressedShotBuffer RAW thumbnail", +[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"));

      v6 = OUTLINED_FUNCTION_8_13();
    }

    v9 = [v6 newPixelBuffer];
    if (v9 || ([*(*(a1 + 32) + 296) setCapacity:{2 * *(*(a1 + 32) + 272) + objc_msgSend(OUTLINED_FUNCTION_8_13(), "capacity")}], (v9 = objc_msgSend(OUTLINED_FUNCTION_8_13(), "newPixelBuffer")) != 0))
    {
      v10 = v9;
      if (BWMemcpyPixelBuffer(v5, v9, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)))
      {
        CVBufferPropagateAttachments(v5, v10);
        v11 = *MEMORY[0x1E69661F8];
        v12 = CVBufferCopyAttachment(v5, *MEMORY[0x1E69661F8], 0);
        CVBufferSetAttachment(v10, v11, v12, kCVAttachmentMode_ShouldNotPropagate);
        if (v12)
        {
          CFRelease(v12);
        }

        CMSetAttachment(*(a1 + 40), a2, v10, 1u);
      }

      CFRelease(v10);
    }
  }
}

- (uint64_t)_newCompressionSession
{
  if (!result)
  {
    return result;
  }

  v10 = 0;
  v11 = 0;
  if ((*(result + 224) & 1) == 0)
  {
    goto LABEL_5;
  }

  v1 = FigCapturePlatformIOSurfaceWiringAssertionEnabled() != 0;
  v8 = *MEMORY[0x1E6991BE8];
  v7[0] = &unk_1F2242718;
  v2 = *MEMORY[0x1E6991BB8];
  v6[0] = *MEMORY[0x1E6991BC0];
  v6[1] = v2;
  v7[1] = [MEMORY[0x1E696AD98] numberWithBool:v1];
  v6[2] = *MEMORY[0x1E6991BB0];
  v7[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BWMemoryPool poolIdentifier](+[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"), "poolIdentifier")}];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  if (!CMPhotoSurfacePoolCreate())
  {
    v3 = *MEMORY[0x1E69919E0];
    v4[0] = *MEMORY[0x1E69919E8];
    v4[1] = v3;
    v5[0] = MEMORY[0x1E695E118];
    v5[1] = v10;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
LABEL_5:
    CMPhotoCompressionSessionCreate();
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v11;
}

- (void)_compressionOptionsWithCropRect:(uint64_t)rect pixelFormat:(int)format
{
  if (!rect)
  {
    return 0;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v10 = 0;
  v11 = 2;
  FigCapturePreferredSlimCodecFlavorAndTilesForPixelFormat(format, &v10, &v11);
  [dictionary setObject:&unk_1F2242730 forKeyedSubscript:*MEMORY[0x1E69918D0]];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:v10];
  [dictionary setObject:v5 forKeyedSubscript:*MEMORY[0x1E6991990]];
  [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6991898]];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:v11];
  [dictionary setObject:v6 forKeyedSubscript:*MEMORY[0x1E69919A8]];
  if (*(rect + 224) == 1)
  {
    v7 = MEMORY[0x1E695E118];
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69919B0]];
    [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x1E6991948]];
  }

  v12.origin.x = OUTLINED_FUNCTION_3_1();
  if (!CGRectIsNull(v12))
  {
    v13.origin.x = OUTLINED_FUNCTION_3_1();
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v13);
    [dictionary setObject:DictionaryRepresentation forKeyedSubscript:*MEMORY[0x1E6991998]];
    if (DictionaryRepresentation)
    {
      CFRelease(DictionaryRepresentation);
    }
  }

  return dictionary;
}

- (CMVideoFormatDescriptionRef)_copyCompressedFormatDescriptionForUncompressedSampleBuffer:(CMVideoFormatDescriptionRef)result
{
  if (result)
  {
    FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
    Extensions = CMFormatDescriptionGetExtensions(FormatDescription);
    if (Extensions)
    {
      v5 = *MEMORY[0x1E6965F30];
      v52[0] = *MEMORY[0x1E6965F98];
      v52[1] = v5;
      v52[2] = *MEMORY[0x1E6965D88];
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:3];
      v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v15 = OUTLINED_FUNCTION_17_0(v7, v8, v9, v10, v11, v12, v13, v14, v29, formatDescriptionOut, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, 0);
      if (v15)
      {
        v16 = v15;
        v17 = *v49;
        do
        {
          v18 = 0;
          do
          {
            if (*v49 != v17)
            {
              objc_enumerationMutation(v6);
            }

            v19 = [v7 setObject:-[__CFDictionary objectForKeyedSubscript:](Extensions forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v48 + 1) + 8 * v18)), *(*(&v48 + 1) + 8 * v18)}];
            ++v18;
          }

          while (v16 != v18);
          v16 = OUTLINED_FUNCTION_17_0(v19, v20, v21, v22, v23, v24, v25, v26, v30, formatDescriptionOut, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48);
        }

        while (v16);
      }

      if ([v7 count])
      {
        Extensions = v7;
      }

      else
      {
        Extensions = 0;
      }
    }

    formatDescriptionOut = 0;
    v27 = CMSampleBufferGetFormatDescription(sbuf);
    Dimensions = CMVideoFormatDescriptionGetDimensions(v27);
    CMVideoFormatDescriptionCreate(*MEMORY[0x1E695E480], 0x736C696Du, Dimensions.width, Dimensions.height, Extensions, &formatDescriptionOut);
    return formatDescriptionOut;
  }

  return result;
}

- (BOOL)_hasQueuedCompressedBuffers
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_6_12(self);
  v2 = *(v1 + 168) > 0;
  OUTLINED_FUNCTION_18_4();
  return v2;
}

- (uint64_t)_newDecompressedSampleBufferFromCompressedSampleBuffer:(uint64_t)buffer
{
  if (!buffer)
  {
    return 0;
  }

  if (*(buffer + 264))
  {
    mach_absolute_time();
    OUTLINED_FUNCTION_16_2();
    if (v4)
    {
      OUTLINED_FUNCTION_5_14();
    }

    waitForAvailablePixelBuffer = [*(buffer + 264) waitForAvailablePixelBuffer];
    OUTLINED_FUNCTION_16_2();
    if (v4)
    {
      OUTLINED_FUNCTION_5_14();
    }

    if (dword_1EB58E240)
    {
      v6 = waitForAvailablePixelBuffer;
    }

    else
    {
      v6 = 0;
    }

    if (v6 == 1)
    {
      v14 = 0;
      v13 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  mach_absolute_time();
  OUTLINED_FUNCTION_16_2();
  if (v4)
  {
    OUTLINED_FUNCTION_5_14();
  }

  v8 = *(buffer + 256);
  if (!v8)
  {
    if (!*(buffer + 264) || (v8 = [[BWPhotoDecompressor alloc] initWithOutputPixelBufferPool:*(buffer + 264)], (*(buffer + 256) = v8) == 0))
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
      return 0;
    }
  }

  v9 = [(BWPhotoDecompressor *)v8 newUncompressedSampleBufferFromSampleBuffer:a2, v11, v12];
  OUTLINED_FUNCTION_16_2();
  if (v4)
  {
    OUTLINED_FUNCTION_5_14();
  }

  return v9;
}

void __72__BWCompressedShotBufferNode__copyRAWThumbnailsForSampleBufferIfNeeded___block_invoke_2_cold_1(__CVBuffer *a1, uint64_t a2)
{
  v7 = CVBufferCopyAttachment(a1, *off_1E798A3C8, 0);
  v4 = *(a2 + 32);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  [(BWCompressedShotBufferNode *)v4 _cropRectForMetadata:v7 dimensions:Width | (Height << 32) settings:*(a2 + 40)];
  if (!CGRectIsNull(v9))
  {
    FigCFDictionarySetCGRect();
  }
}

@end