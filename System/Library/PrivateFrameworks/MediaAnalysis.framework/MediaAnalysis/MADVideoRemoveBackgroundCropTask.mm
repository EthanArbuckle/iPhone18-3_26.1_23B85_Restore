@interface MADVideoRemoveBackgroundCropTask
+ (id)taskWithAsset:(id)asset previewRequest:(id)request generationRequest:(id)generationRequest cancelBlock:(id)block progressHandler:(id)handler resultHandler:(id)resultHandler completionHandler:(id)completionHandler;
- (BOOL)exportFutureSamples:(id)samples sequenceWriter:(id)writer progress:(id)progress error:(id *)error;
- (BOOL)exportPastSamples:(id)samples sequenceWriter:(id)writer progress:(id)progress error:(id *)error;
- (BOOL)isAnimatedStickerPreferredWithPastSamples:(id)samples futureSamples:(id)futureSamples;
- (BOOL)isCanceled;
- (BOOL)run:(id *)run;
- (BOOL)validateRequest:(id *)request;
- (CGRect)scaleNormalizedCropRect:(CGRect)rect forPixelBuffer:(__CVBuffer *)buffer;
- (MADVideoRemoveBackgroundCropTask)initWithAsset:(id)asset previewRequest:(id)request generationRequest:(id)generationRequest cancelBlock:(id)block progressHandler:(id)handler resultHandler:(id)resultHandler completionHandler:(id)completionHandler;
- (__CVBuffer)generateMaskForSampleBuffer:(opaqueCMSampleBuffer *)buffer orientation:(unsigned int)orientation error:(id *)error;
- (id).cxx_construct;
- (id)compressSequenceData:(id)data sequenceWriter:(id)writer outputWidth:(unint64_t *)width outputHeight:(unint64_t *)height;
- (id)decodeSamplesUntilTime:(id *)time trackOutput:(id)output baseTime:(id *)baseTime progress:(id)progress error:(id *)error;
- (id)decodeSettingsForTrack:(id)track;
- (id)processFutureSamplesFromTrackOutput:(id)output baseTime:(id *)time orientation:(unsigned int)orientation maskSampleBuffer:(opaqueCMSampleBuffer *)buffer maskPixelBuffer:(__CVBuffer *)pixelBuffer cropUnion:(CGRect *)union endTime:(id *)endTime progress:(id)self0 error:(id *)self1;
- (id)processPastSampleBuffers:(id)buffers orientation:(unsigned int)orientation maskPixelBuffer:(__CVBuffer *)buffer cropUnion:(CGRect *)union progress:(id)progress error:(id *)error;
- (void)dealloc;
- (void)publishPayloadWidth:(unint64_t)width height:(unint64_t)height data:(id)data;
- (void)publishPreviewResultsTimeRange:(id *)range pastSamples:(id)samples futureSamples:(id)futureSamples cropRect:(CGRect)rect;
@end

@implementation MADVideoRemoveBackgroundCropTask

- (MADVideoRemoveBackgroundCropTask)initWithAsset:(id)asset previewRequest:(id)request generationRequest:(id)generationRequest cancelBlock:(id)block progressHandler:(id)handler resultHandler:(id)resultHandler completionHandler:(id)completionHandler
{
  assetCopy = asset;
  requestCopy = request;
  generationRequestCopy = generationRequest;
  blockCopy = block;
  handlerCopy = handler;
  resultHandlerCopy = resultHandler;
  completionHandlerCopy = completionHandler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __143__MADVideoRemoveBackgroundCropTask_initWithAsset_previewRequest_generationRequest_cancelBlock_progressHandler_resultHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E834C7A0;
  v20 = completionHandlerCopy;
  v36 = v20;
  v21 = _Block_copy(aBlock);
  v34.receiver = self;
  v34.super_class = MADVideoRemoveBackgroundCropTask;
  v22 = [(VCPMABaseTask *)&v34 initWithCompletionHandler:v21];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_previewRequest, request);
    objc_storeStrong(&v23->_request, generationRequest);
    objc_storeStrong(&v23->_asset, asset);
    v24 = _Block_copy(handlerCopy);
    progressHandler = v23->_progressHandler;
    v23->_progressHandler = v24;

    v26 = _Block_copy(resultHandlerCopy);
    resultHandler = v23->_resultHandler;
    v23->_resultHandler = v26;

    v28 = _Block_copy(v20);
    completionHandler = v23->_completionHandler;
    v23->_completionHandler = v28;

    [(VCPMABaseTask *)v23 setCancelBlock:blockCopy, generationRequestCopy, requestCopy, assetCopy];
  }

  return v23;
}

+ (id)taskWithAsset:(id)asset previewRequest:(id)request generationRequest:(id)generationRequest cancelBlock:(id)block progressHandler:(id)handler resultHandler:(id)resultHandler completionHandler:(id)completionHandler
{
  assetCopy = asset;
  requestCopy = request;
  generationRequestCopy = generationRequest;
  blockCopy = block;
  handlerCopy = handler;
  resultHandlerCopy = resultHandler;
  completionHandlerCopy = completionHandler;
  v21 = [objc_alloc(objc_opt_class()) initWithAsset:assetCopy previewRequest:requestCopy generationRequest:generationRequestCopy cancelBlock:blockCopy progressHandler:handlerCopy resultHandler:resultHandlerCopy completionHandler:completionHandlerCopy];

  return v21;
}

- (void)dealloc
{
  globalSession = [MEMORY[0x1E6984688] globalSession];
  [globalSession releaseCachedResources];

  v4.receiver = self;
  v4.super_class = MADVideoRemoveBackgroundCropTask;
  [(VCPMABaseTask *)&v4 dealloc];
}

- (BOOL)isCanceled
{
  stickerIdentifiers = [(MADVideoRemoveBackgroundRequest *)self->_request stickerIdentifiers];
  if ([stickerIdentifiers count])
  {
    isCanceled = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MADVideoRemoveBackgroundCropTask;
    isCanceled = [(VCPMABaseTask *)&v6 isCanceled];
  }

  return isCanceled;
}

- (BOOL)validateRequest:(id *)request
{
  v38[1] = *MEMORY[0x1E69E9840];
  maxDimension = [(MADVideoRemoveBackgroundRequest *)self->_request maxDimension];
  if (maxDimension)
  {
    minDimension = [(MADVideoRemoveBackgroundRequest *)self->_request minDimension];
    if (minDimension)
    {
      maxDimension2 = [(MADVideoRemoveBackgroundRequest *)self->_request maxDimension];
      integerValue = [maxDimension2 integerValue];
      minDimension2 = [(MADVideoRemoveBackgroundRequest *)self->_request minDimension];
      integerValue2 = [minDimension2 integerValue];

      if (integerValue < integerValue2)
      {
        v11 = MEMORY[0x1E696ABC0];
        v37 = *MEMORY[0x1E696A578];
        v12 = MEMORY[0x1E696AEC0];
        minDimension3 = [(MADVideoRemoveBackgroundRequest *)self->_request minDimension];
        maxDimension3 = [(MADVideoRemoveBackgroundRequest *)self->_request maxDimension];
        v15 = [v12 stringWithFormat:@"Invalid request - min dimension (%@) exceeds max dimension (%@)", minDimension3, maxDimension3];
        v38[0] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
        v17 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v16];
        v18 = *request;
        *request = v17;

        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  maxFileSize = [(MADVideoRemoveBackgroundRequest *)self->_request maxFileSize];
  if (maxFileSize && (-[MADVideoRemoveBackgroundRequest maxFileSize](self->_request, "maxFileSize"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 unsignedIntegerValue], v20, maxFileSize, !v21))
  {
    v31 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v32 = MEMORY[0x1E696AEC0];
    minDimension3 = [(MADVideoRemoveBackgroundRequest *)self->_request maxFileSize];
    maxDimension3 = [v32 stringWithFormat:@"Invalid request - max file size (%@) must be greater than zero", minDimension3];
    v36 = maxDimension3;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v30 = [v31 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v15];
  }

  else
  {
    instancePoint = [(MADVideoRemoveBackgroundRequest *)self->_request instancePoint];
    if (!instancePoint)
    {
      return 1;
    }

    instancePoint2 = [(MADVideoRemoveBackgroundRequest *)self->_request instancePoint];
    [instancePoint2 pointValue];
    v39.x = v24;
    v39.y = v25;
    v40.origin.x = 0.0;
    v40.origin.y = 0.0;
    v40.size.width = 1.0;
    v40.size.height = 1.0;
    v26 = CGRectContainsPoint(v40, v39);

    if (v26)
    {
      return 1;
    }

    v28 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A578];
    v29 = MEMORY[0x1E696AEC0];
    minDimension3 = [(MADVideoRemoveBackgroundRequest *)self->_request instancePoint];
    maxDimension3 = [v29 stringWithFormat:@"Invalid request - instance point (%@) outside of unit rect", minDimension3];
    v34 = maxDimension3;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v30 = [v28 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v15];
  }

  v16 = *request;
  *request = v30;
LABEL_14:

  return 0;
}

- (id)decodeSettingsForTrack:(id)track
{
  v21 = *MEMORY[0x1E69E9840];
  trackCopy = track;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:&unk_1F49BBD88 forKeyedSubscript:*MEMORY[0x1E6966130]];
  maxDimension = [(MADVideoRemoveBackgroundRequest *)self->_request maxDimension];

  if (maxDimension)
  {
    maxDimension2 = [(MADVideoRemoveBackgroundRequest *)self->_request maxDimension];
    [maxDimension2 doubleValue];
    v9 = v8;

    [trackCopy naturalSize];
    v12 = v10 >= v11 ? v10 : v11;
    if (v9 < v12)
    {
      v13 = ((v10 * (v9 / v12)) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v14 = ((v11 * (v9 / v12)) + 1) & 0xFFFFFFFFFFFFFFFELL;
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v18[0] = 67109376;
        v18[1] = v13;
        v19 = 1024;
        v20 = v14;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG] Scaling decode to %dx%d", v18, 0xEu);
      }

      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v13];
      [dictionary setObject:v15 forKeyedSubscript:*MEMORY[0x1E6966208]];

      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v14];
      [dictionary setObject:v16 forKeyedSubscript:*MEMORY[0x1E69660B8]];
    }
  }

  return dictionary;
}

- (id)decodeSamplesUntilTime:(id *)time trackOutput:(id)output baseTime:(id *)baseTime progress:(id)progress error:(id *)error
{
  v55[1] = *MEMORY[0x1E69E9840];
  outputCopy = output;
  progressCopy = progress;
  v44 = outputCopy;
  track = [outputCopy track];
  buf.duration = *time;
  v41 = [track makeSampleCursorWithPresentationTimeStamp:&buf];

  if (MediaAnalysisLogLevel() >= 6)
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      if (v41)
      {
        [v41 presentationTimeStamp];
        v15 = *lhs;
        [v41 presentationTimeStamp];
        timescale = rhs.timescale;
      }

      else
      {
        timescale = 0;
        v15 = 0;
        memset(lhs, 0, 24);
        memset(&rhs, 0, sizeof(rhs));
      }

      var0 = time->var0;
      var1 = time->var1;
      LODWORD(buf.duration.value) = 134218752;
      *(&buf.duration.value + 4) = v15;
      LOWORD(buf.duration.flags) = 1024;
      *(&buf.duration.flags + 2) = timescale;
      WORD1(buf.duration.epoch) = 2048;
      *(&buf.duration.epoch + 4) = var0;
      WORD2(buf.presentationTimeStamp.value) = 1024;
      *(&buf.presentationTimeStamp.value + 6) = var1;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG] Decoding until %lld/%d (mask time: %lld/%d)", &buf, 0x22u);
    }
  }

  array = [MEMORY[0x1E695DF70] array];
  v42 = baseTime->var0;
  v19 = *MEMORY[0x1E696A768];
  v20 = *MEMORY[0x1E696A578];
  do
  {
    v21 = objc_autoreleasePoolPush();
    if ([(MADVideoRemoveBackgroundCropTask *)self isCanceled])
    {
      v22 = MEMORY[0x1E696ABC0];
      v54 = v20;
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request canceled"];
      v55[0] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
      v25 = [v22 errorWithDomain:v19 code:-128 userInfo:v24];
      v26 = *error;
      *error = v25;

      v27 = 1;
      goto LABEL_37;
    }

    copyNextSampleBuffer = [v44 copyNextSampleBuffer];
    originalSBuf = copyNextSampleBuffer;
    if (copyNextSampleBuffer)
    {
      memset(&v45, 0, sizeof(v45));
      CMSampleBufferGetPresentationTimeStamp(&v45, copyNextSampleBuffer);
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.duration.value) = 134218240;
        *(&buf.duration.value + 4) = v45.value;
        LOWORD(buf.duration.flags) = 1024;
        *(&buf.duration.flags + 2) = v45.timescale;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG] Decoded %lld/%d", &buf, 0x12u);
      }

      if (v42)
      {
        memset(&buf.presentationTimeStamp, 0, 48);
        v29 = MEMORY[0x1E6960C70];
        *&buf.duration.value = *MEMORY[0x1E6960C70];
        buf.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
        *lhs = v45;
        rhs = *baseTime;
        CMTimeSubtract(&buf.presentationTimeStamp, lhs, &rhs);
        buf.decodeTimeStamp = *v29;
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *lhs = 134218752;
          *&lhs[4] = v45.value;
          *&lhs[12] = 1024;
          *&lhs[14] = v45.timescale;
          *&lhs[18] = 2048;
          *&lhs[20] = buf.presentationTimeStamp.value;
          v51 = 1024;
          v52 = buf.presentationTimeStamp.timescale;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG] Adjusting time %lld/%d --> %lld/%d", lhs, 0x22u);
        }

        rhs.value = 0;
        if (CMSampleBufferCreateCopyWithNewTiming(0, originalSBuf, 1, &buf, &rhs))
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *lhs = 134218240;
            *&lhs[4] = v45.value;
            *&lhs[12] = 1024;
            *&lhs[14] = v45.timescale;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RMBG] Failed to adjust sample timing (%lld/%d)", lhs, 0x12u);
          }

          v30 = MEMORY[0x1E696ABC0];
          v48 = v20;
          v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to adjust sample timing (%lld/%d)", v45.value, v45.timescale];
          v49 = v31;
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
          v33 = [v30 errorWithDomain:v19 code:-18 userInfo:v32];
          v34 = *error;
          *error = v33;

          CF<__CVBuffer *>::~CF(&rhs);
          v27 = 1;
          goto LABEL_36;
        }

        value = rhs.value;
        if (rhs.value)
        {
          value = CFRetain(rhs.value);
        }

        *lhs = value;
        if (originalSBuf)
        {
          CFRelease(originalSBuf);
          value = *lhs;
        }

        originalSBuf = value;
        *lhs = 0;
        CF<__CVBuffer *>::~CF(lhs);
        CF<__CVBuffer *>::~CF(&rhs);
      }

      [array addObject:originalSBuf];
      [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "completedUnitCount") + 1}];
      if (v41)
      {
        [v41 presentationTimeStamp];
      }

      else
      {
        memset(&rhs, 0, sizeof(rhs));
      }

      buf.duration = v45;
      *lhs = rhs;
      if (CMTimeCompare(&buf.duration, lhs) >= 0)
      {
        v27 = 5;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 5;
    }

LABEL_36:
    CF<__CVBuffer *>::~CF(&originalSBuf);
LABEL_37:
    objc_autoreleasePoolPop(v21);
  }

  while (!v27);
  if (v27 == 5)
  {
    v36 = array;
    v37 = array;
  }

  else
  {
    v37 = 0;
    v36 = array;
  }

  return v37;
}

- (__CVBuffer)generateMaskForSampleBuffer:(opaqueCMSampleBuffer *)buffer orientation:(unsigned int)orientation error:(id *)error
{
  v6 = *&orientation;
  v118[1] = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG] Creating mask to seed tracking", buf, 2u);
  }

  v9 = +[MADImageRemoveBackgroundResource sharedResource];
  [v9 setMaskOnly:1];
  v10 = +[VCPMADResourceManager sharedManager];
  v101 = [v10 activateResource:v9];

  v11 = objc_alloc_init(MEMORY[0x1E6984560]);
  [v11 setRevision:1];
  if (DeviceHasANE())
  {
    defaultANEDevice = [MEMORY[0x1E6984608] defaultANEDevice];
    [v11 setProcessingDevice:defaultANEDevice];
  }

  v13 = objc_alloc(MEMORY[0x1E69845B8]);
  session = [v9 session];
  v15 = [v13 initWithCMSampleBuffer:buffer orientation:v6 options:MEMORY[0x1E695E0F8] session:session];

  v16 = VCPSignPostLog();
  v17 = os_signpost_id_generate(v16);

  v18 = VCPSignPostLog();
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "VNGenerateInstanceMaskRequest_PerformRequest", "", buf, 2u);
  }

  v118[0] = v11;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:1];
  v103 = 0;
  v21 = [v15 performRequests:v20 error:&v103];
  v22 = v103;

  if (v21)
  {
    v23 = VCPSignPostLog();
    v24 = v23;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_END, v17, "VNGenerateInstanceMaskRequest_PerformRequest", "", buf, 2u);
    }

    results = [v11 results];
    firstObject = [results firstObject];

    if (!firstObject)
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Video frame failed to produce a mask", buf, 2u);
      }

      v42 = MEMORY[0x1E696ABC0];
      v116 = *MEMORY[0x1E696A578];
      allInstances4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Video frame failed to produce a mask"];
      v117 = allInstances4;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
      v45 = [v42 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v44];
      v46 = *error;
      *error = v45;

      goto LABEL_45;
    }

    allInstances = [firstObject allInstances];
    v28 = [allInstances count] == 0;

    if (v28)
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] No instances detected in video frame", buf, 2u);
      }

      v47 = MEMORY[0x1E696ABC0];
      v114 = *MEMORY[0x1E696A578];
      allInstances4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No instances detected in video frame"];
      v115 = allInstances4;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
      v49 = [v47 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v48];
      v50 = *error;
      *error = v49;

      goto LABEL_45;
    }

    allInstances2 = [firstObject allInstances];
    if ([allInstances2 count] <= 1)
    {
    }

    else
    {
      instancePoint = [(MADVideoRemoveBackgroundRequest *)self->_request instancePoint];
      v31 = instancePoint == 0;

      if (!v31)
      {
        instancePoint2 = [(MADVideoRemoveBackgroundRequest *)self->_request instancePoint];
        [instancePoint2 pointValue];
        v34 = v33;
        v36 = v35;

        instanceMask = [firstObject instanceMask];
        v38 = instanceMask;
        *&v112[4] = instanceMask;
        v113 = 1;
        if (!instanceMask)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [MADVideoRemoveBackgroundCropTask generateMaskForSampleBuffer:orientation:error:];
          }

          *buf = -50;
          goto LABEL_44;
        }

        v39 = CVPixelBufferLockBaseAddress(instanceMask, 1uLL);
        *buf = v39;
        if (v39)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [MADVideoRemoveBackgroundCropTask generateMaskForSampleBuffer:v38 orientation:v39 error:?];
          }

LABEL_44:
          v58 = MEMORY[0x1E696ABC0];
          v109 = *MEMORY[0x1E696A578];
          v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to lock instance mask"];
          v110 = v59;
          v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
          v61 = [v58 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v60];
          v62 = *error;
          *error = v61;

          allInstances4 = 0;
LABEL_45:
          v41 = 0;
LABEL_46:

          goto LABEL_47;
        }

        Width = CVPixelBufferGetWidth([firstObject instanceMask]);
        Height = CVPixelBufferGetHeight([firstObject instanceMask]);
        BytesPerRow = CVPixelBufferGetBytesPerRow([firstObject instanceMask]);
        BaseAddress = CVPixelBufferGetBaseAddress([firstObject instanceMask]);
        v68 = (v34 * (Width - 1));
        v69 = Width;
        v70 = ((1.0 - v36) * (Height - 1));
        v71 = &BaseAddress[BytesPerRow * v70];
        v98 = v68;
        v72 = Height;
        v73 = v71[v68];
        if (v71[v68])
        {
          if (MediaAnalysisLogLevel() < 5 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_79;
          }

          *v106 = 67109632;
          *v107 = v73;
          *&v107[4] = 1024;
          *&v107[6] = v98;
          LOWORD(v108) = 1024;
          *(&v108 + 2) = v70;
          v74 = MEMORY[0x1E69E9C10];
          v75 = "[RMBG] Selecting instance %d at location (%d, %d)";
        }

        else
        {
          v95 = BaseAddress;
          v96 = v72;
          v97 = v69;
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *v106 = 67109376;
            *v107 = v98;
            *&v107[4] = 1024;
            *&v107[6] = v70;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] No instance at (%d, %d), searching nearby", v106, 0xEu);
          }

          v73 = 0;
          v76 = 0;
          v77 = v96 - 50;
          if (v70 - 25 < v96 - 50)
          {
            v77 = v70 - 25;
          }

          if (v70 <= 25)
          {
            v78 = 0;
          }

          else
          {
            v78 = v77;
          }

          v79 = v97 - 50;
          if (v98 - 25 < v97 - 50)
          {
            v79 = v98 - 25;
          }

          if (v98 <= 25)
          {
            v80 = 0;
          }

          else
          {
            v80 = v79;
          }

          v81 = &v95[BytesPerRow * v78 + v80];
          v82 = v78 - v70;
          v83 = v80 - v98;
          v84 = 0x7FFFFFFF;
          do
          {
            for (i = 0; i != 50; ++i)
            {
              v86 = (v82 + v76) * (v82 + v76) + (v83 + i) * (v83 + i);
              if (v86 < v84)
              {
                v87 = *(v81 + i);
              }

              else
              {
                v86 = v84;
                v87 = v73;
              }

              if (*(v81 + i))
              {
                v84 = v86;
                v73 = v87;
              }
            }

            ++v76;
            v81 += BytesPerRow;
          }

          while (v76 != 50);
          if (!v73)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v106 = 134218240;
              *v107 = v34;
              *&v107[8] = 2048;
              v108 = v36;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RMBG] No instances near specified point (%0.2f, %0.2f)", v106, 0x16u);
            }

            v91 = MEMORY[0x1E696ABC0];
            v104 = *MEMORY[0x1E696A578];
            v99 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No instances near specified point (%0.2f, %0.2f)", *&v34, *&v36];
            v105 = v99;
            v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
            v88 = v38;
            v93 = [v91 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v92];
            v94 = *error;
            *error = v93;

            allInstances4 = 0;
            v89 = 0;
LABEL_80:
            v90 = CVPixelBufferUnlockBaseAddress(v88, 1uLL);
            if (v90 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v106 = 134218240;
              *v107 = v88;
              *&v107[8] = 1024;
              LODWORD(v108) = v90;
              _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to unlock CVPixelBuffer (%p, %d)", v106, 0x12u);
            }

            if ((v89 & 1) == 0)
            {
              goto LABEL_45;
            }

LABEL_37:
            v102 = v22;
            v41 = [firstObject createMaskForInstances:allInstances4 error:&v102];
            v55 = v102;

            if (v41)
            {
              [v101 reset];
            }

            else
            {
              v56 = [v55 copy];
              v57 = *error;
              *error = v56;

              v41 = 0;
            }

            v22 = v55;
            goto LABEL_46;
          }

          if (MediaAnalysisLogLevel() < 5 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
LABEL_79:
            allInstances4 = [MEMORY[0x1E696AC90] indexSetWithIndex:v73];
            v88 = v38;
            v89 = 1;
            goto LABEL_80;
          }

          *v106 = 67109632;
          *v107 = v73;
          *&v107[4] = 1024;
          *&v107[6] = v98;
          LOWORD(v108) = 1024;
          *(&v108 + 2) = v70;
          v74 = MEMORY[0x1E69E9C10];
          v75 = "[RMBG] Selecting instance %d near location (%d, %d)";
        }

        _os_log_impl(&dword_1C9B70000, v74, OS_LOG_TYPE_DEFAULT, v75, v106, 0x14u);
        goto LABEL_79;
      }
    }

    allInstances3 = [firstObject allInstances];
    v52 = [allInstances3 count];
    v53 = @"only instance";
    if (v52 > 1)
    {
      v53 = @"all instances";
    }

    v54 = v53;

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v112 = v54;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Selecting %@", buf, 0xCu);
    }

    allInstances4 = [firstObject allInstances];

    goto LABEL_37;
  }

  v40 = [v22 copy];
  v41 = 0;
  firstObject = *error;
  *error = v40;
LABEL_47:

  objc_autoreleasePoolPop(context);
  return v41;
}

- (CGRect)scaleNormalizedCropRect:(CGRect)rect forPixelBuffer:(__CVBuffer *)buffer
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = CVPixelBufferGetWidth(buffer);
  v10 = CVPixelBufferGetHeight(buffer);
  v11 = round(x * v9);
  v12 = round((1.0 - y - height) * v10);
  v13 = round(width * v9);
  v14 = round(height * v10);
  v15 = 0;
  v16 = 0;
  v17 = v9;

  return CGRectIntersection(*&v11, *&v15);
}

- (id)processPastSampleBuffers:(id)buffers orientation:(unsigned int)orientation maskPixelBuffer:(__CVBuffer *)buffer cropUnion:(CGRect *)union progress:(id)progress error:(id *)error
{
  v77[1] = *MEMORY[0x1E69E9840];
  buffersCopy = buffers;
  progressCopy = progress;
  context = objc_autoreleasePoolPush();
  v12 = +[MADVideoRemoveBackgroundResource sharedResource];
  session = [v12 session];

  *&buf[16] = 0;
  *buf = kMaskUpdateInterval;
  v68 = [objc_alloc(MEMORY[0x1E69846A8]) initWithFrameUpdateSpacing:buf mask:buffer completionHandler:0];
  [v68 setGenerateCropRect:1];
  array = [MEMORY[0x1E695DF70] array];
  v60 = objc_alloc_init(MADConfidenceTracker);
  v13 = MEMORY[0x1E69E9C10];
  v65 = *MEMORY[0x1E696A768];
  v66 = *MEMORY[0x1E696A578];
  do
  {
    if (![buffersCopy count])
    {
      goto LABEL_35;
    }

    v14 = objc_autoreleasePoolPush();
    if ([(MADVideoRemoveBackgroundCropTask *)self isCanceled])
    {
      v15 = MEMORY[0x1E696ABC0];
      v76 = v66;
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request canceled"];
      v77[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:&v76 count:1];
      v18 = [v15 errorWithDomain:v65 code:-128 userInfo:v17];
      v19 = *error;
      *error = v18;

      v20 = 1;
    }

    else
    {
      lastObject = [buffersCopy lastObject];

      memset(&v73, 0, sizeof(v73));
      CMSampleBufferGetPresentationTimeStamp(&v73, lastObject);
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        *&buf[4] = v73.value;
        *&buf[12] = 1024;
        *&buf[14] = v73.timescale;
        _os_log_impl(&dword_1C9B70000, v13, OS_LOG_TYPE_INFO, "[RMBG][BW] Tracking mask %lld/%d", buf, 0x12u);
      }

      v22 = objc_alloc(MEMORY[0x1E69845B8]);
      v23 = [v22 initWithCMSampleBuffer:lastObject orientation:orientation options:MEMORY[0x1E695E0F8] session:session];
      v24 = VCPSignPostLog();
      v25 = os_signpost_id_generate(v24);

      v26 = VCPSignPostLog();
      v27 = v26;
      if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "VNTrackMaskRequest_PerformRequest", "", buf, 2u);
      }

      v75 = v68;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
      v72 = 0;
      v29 = [v23 performRequests:v28 error:&v72];
      v30 = v72;

      if (v29)
      {
        v31 = VCPSignPostLog();
        v32 = v31;
        if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_END, v25, "VNTrackMaskRequest_PerformRequest", "", buf, 2u);
        }

        results = [v68 results];
        firstObject = [results firstObject];

        if (firstObject)
        {
          if (+[MADVideoRemoveBackgroundSettings visionTrimEnabled](MADVideoRemoveBackgroundSettings, "visionTrimEnabled") && ([firstObject confidence], -[MADConfidenceTracker updateConfidence:](v60, "updateConfidence:", v35), v37 = v36, +[MADVideoRemoveBackgroundSettings visionTrimThreshold](MADVideoRemoveBackgroundSettings, "visionTrimThreshold"), v37 < v38))
          {
            if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              *&buf[4] = v73.value;
              *&buf[12] = 1024;
              *&buf[14] = v73.timescale;
              _os_log_impl(&dword_1C9B70000, v13, OS_LOG_TYPE_DEFAULT, "[RMBG][BW] Confidence below threshold (%lld/%d), trimming", buf, 0x12u);
            }

            [buffersCopy removeAllObjects];
            v20 = 3;
          }

          else
          {
            x = union->origin.x;
            y = union->origin.y;
            width = union->size.width;
            height = union->size.height;
            [firstObject croppedBoundingBox];
            -[MADVideoRemoveBackgroundCropTask scaleNormalizedCropRect:forPixelBuffer:](self, "scaleNormalizedCropRect:forPixelBuffer:", [firstObject pixelBuffer], v43, v44, v45, v46);
            v80.origin.x = v47;
            v80.origin.y = v48;
            v80.size.width = v49;
            v80.size.height = v50;
            v79.origin.x = x;
            v79.origin.y = y;
            v79.size.width = width;
            v79.size.height = height;
            *union = CGRectUnion(v79, v80);
            v51 = [MADMattedFullFrame alloc];
            pixelBuffer = [firstObject pixelBuffer];
            [firstObject timeRange];
            v70 = *buf;
            v71 = *&buf[16];
            [firstObject confidence];
            v54 = [(MADMattedFullFrame *)v51 initWithPixelBuffer:pixelBuffer presentationTimestamp:&v70 confidence:v53];
            [array addObject:v54];

            [buffersCopy removeLastObject];
            [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "completedUnitCount") + 1}];
            v20 = 0;
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            *&buf[4] = v73.value;
            *&buf[12] = 1024;
            *&buf[14] = v73.timescale;
            _os_log_impl(&dword_1C9B70000, v13, OS_LOG_TYPE_DEFAULT, "[RMBG][BW] No observation at time %lld/%d", buf, 0x12u);
          }

          v20 = 2;
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v55 = [v30 description];
          *buf = 138412290;
          *&buf[4] = v55;
          _os_log_impl(&dword_1C9B70000, v13, OS_LOG_TYPE_ERROR, "[RMBG][BW] VNTrackMaskRequest failed (%@)", buf, 0xCu);
        }

        v56 = [v30 copy];
        firstObject = *error;
        *error = v56;
        v20 = 1;
      }
    }

    objc_autoreleasePoolPop(v14);
  }

  while (!v20 || v20 == 2);
  if (v20 == 3)
  {
LABEL_35:
    v57 = array;
    goto LABEL_37;
  }

  v57 = 0;
LABEL_37:

  objc_autoreleasePoolPop(context);

  return v57;
}

- (BOOL)exportPastSamples:(id)samples sequenceWriter:(id)writer progress:(id)progress error:(id *)error
{
  v54[1] = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  writerCopy = writer;
  progressCopy = progress;
  v41 = *MEMORY[0x1E696A768];
  v42 = *MEMORY[0x1E696A578];
  do
  {
    v11 = [samplesCopy count];
    if (!v11)
    {
      break;
    }

    v12 = objc_autoreleasePoolPush();
    if ([(MADVideoRemoveBackgroundCropTask *)self isCanceled])
    {
      v13 = MEMORY[0x1E696ABC0];
      v53 = v42;
      lastObject = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request canceled"];
      v54[0] = lastObject;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
      v16 = [v13 errorWithDomain:v41 code:-128 userInfo:v15];
      v17 = *error;
      *error = v16;
    }

    else
    {
      lastObject = [samplesCopy lastObject];
      if (MediaAnalysisLogLevel() >= 6)
      {
        v18 = MEMORY[0x1E69E9C10];
        v19 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          if (lastObject)
          {
            [lastObject presentationTimestamp];
            v20 = *v44;
            [lastObject presentationTimestamp];
            v21 = v43;
          }

          else
          {
            v21 = 0;
            v20 = 0;
            *v44 = 0;
            v45 = 0;
            v46 = 0;
            v43 = 0;
          }

          *buf = 134218240;
          v50 = v20;
          v51 = 1024;
          v52 = v21;
          v18 = MEMORY[0x1E69E9C10];
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG] Encoding %lld/%d", buf, 0x12u);
        }
      }

      v22 = VCPSignPostLog();
      v23 = os_signpost_id_generate(v22);

      v24 = VCPSignPostLog();
      v25 = v24;
      if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        *v44 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "MADVideoRemoveBackground_ExportFrame", "", v44, 2u);
      }

      pixelBuffer = [lastObject pixelBuffer];
      if (lastObject)
      {
        [lastObject presentationTimestamp];
      }

      else
      {
        *v44 = 0;
        v45 = 0;
        v46 = 0;
      }

      if (![writerCopy addPixelBuffer:pixelBuffer withTime:v44])
      {
        v31 = VCPSignPostLog();
        v32 = v31;
        if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
        {
          *v44 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_END, v23, "MADVideoRemoveBackground_ExportFrame", "", v44, 2u);
        }

        [samplesCopy removeLastObject];
        [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "completedUnitCount") + 1}];
        v33 = 1;
        goto LABEL_28;
      }

      v27 = MEMORY[0x1E696ABC0];
      v47 = v42;
      v28 = MEMORY[0x1E696AEC0];
      if (lastObject)
      {
        [lastObject presentationTimestamp];
        v29 = *v44;
        [lastObject presentationTimestamp];
        v30 = v43;
      }

      else
      {
        v30 = 0;
        v29 = 0;
        *v44 = 0;
        v45 = 0;
        v46 = 0;
        v43 = 0;
      }

      v34 = [v28 stringWithFormat:@"Failed to export matted frame (%lld/%d)", v29, v30];
      v48 = v34;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v36 = [v27 errorWithDomain:v41 code:-18 userInfo:v35];
      v37 = *error;
      *error = v36;
    }

    v33 = 0;
LABEL_28:

    objc_autoreleasePoolPop(v12);
  }

  while ((v33 & 1) != 0);

  return v11 == 0;
}

- (id)processFutureSamplesFromTrackOutput:(id)output baseTime:(id *)time orientation:(unsigned int)orientation maskSampleBuffer:(opaqueCMSampleBuffer *)buffer maskPixelBuffer:(__CVBuffer *)pixelBuffer cropUnion:(CGRect *)union endTime:(id *)endTime progress:(id)self0 error:(id *)self1
{
  v108[1] = *MEMORY[0x1E69E9840];
  outputCopy = output;
  progressCopy = progress;
  context = objc_autoreleasePoolPush();
  v14 = +[MADVideoRemoveBackgroundResource sharedResource];
  session = [v14 session];

  buf.duration.epoch = 0;
  *&buf.duration.value = kMaskUpdateInterval;
  v90 = [objc_alloc(MEMORY[0x1E69846A8]) initWithFrameUpdateSpacing:&buf mask:pixelBuffer completionHandler:0];
  [v90 setGenerateCropRect:1];
  v15 = objc_autoreleasePoolPush();
  v16 = objc_alloc(MEMORY[0x1E69845B8]);
  v17 = [v16 initWithCMSampleBuffer:buffer orientation:orientation options:MEMORY[0x1E695E0F8] session:session];
  v18 = VCPSignPostLog();
  v19 = os_signpost_id_generate(v18);

  v20 = VCPSignPostLog();
  v21 = v20;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    LOWORD(buf.duration.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "VNTrackMaskRequest_PerformRequest", "", &buf, 2u);
  }

  v108[0] = v90;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v108 count:1];
  v97 = 0;
  v23 = [v17 performRequests:v22 error:&v97];
  v24 = v97;

  if (v23)
  {
    v25 = VCPSignPostLog();
    v26 = v25;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      LOWORD(buf.duration.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v26, OS_SIGNPOST_INTERVAL_END, v19, "VNTrackMaskRequest_PerformRequest", "", &buf, 2u);
    }
  }

  else
  {
    v27 = [v24 copy];
    v26 = *error;
    *error = v27;
  }

  objc_autoreleasePoolPop(v15);
  v28 = v90;
  if (v23)
  {
    var0 = time->var0;
    array = [MEMORY[0x1E695DF70] array];
    v82 = objc_alloc_init(MADConfidenceTracker);
    v29 = *MEMORY[0x1E696A768];
    v92 = *MEMORY[0x1E696A578];
    while (1)
    {
      v30 = objc_autoreleasePoolPush();
      if ([(MADVideoRemoveBackgroundCropTask *)self isCanceled])
      {
        v31 = MEMORY[0x1E696ABC0];
        v106 = v92;
        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request canceled"];
        v107 = v32;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
        v34 = [v31 errorWithDomain:v29 code:-128 userInfo:v33];
        v35 = *error;
        *error = v34;

        v36 = 1;
        goto LABEL_57;
      }

      copyNextSampleBuffer = [outputCopy copyNextSampleBuffer];
      originalSBuf = copyNextSampleBuffer;
      if (copyNextSampleBuffer)
      {
        memset(&presentationTimeStamp, 0, sizeof(presentationTimeStamp));
        CMSampleBufferGetPresentationTimeStamp(&presentationTimeStamp, copyNextSampleBuffer);
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.duration.value) = 134218240;
          *(&buf.duration.value + 4) = presentationTimeStamp.value;
          LOWORD(buf.duration.flags) = 1024;
          *(&buf.duration.flags + 2) = presentationTimeStamp.timescale;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG][FW] Decoded %lld/%d", &buf, 0x12u);
        }

        [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "completedUnitCount") + 1}];
        if (!var0)
        {
          goto LABEL_32;
        }

        memset(&buf.presentationTimeStamp, 0, 48);
        v38 = MEMORY[0x1E6960C70];
        *&buf.duration.value = *MEMORY[0x1E6960C70];
        buf.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
        *lhs = presentationTimeStamp;
        rhs = *time;
        CMTimeSubtract(&buf.presentationTimeStamp, lhs, &rhs);
        buf.decodeTimeStamp = *v38;
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *lhs = 134218752;
          *&lhs[4] = presentationTimeStamp.value;
          *&lhs[12] = 1024;
          *&lhs[14] = presentationTimeStamp.timescale;
          *&lhs[18] = 2048;
          *&lhs[20] = buf.presentationTimeStamp.value;
          v103 = 1024;
          timescale = buf.presentationTimeStamp.timescale;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG][FW] Adjusting time %lld/%d --> %lld/%d", lhs, 0x22u);
        }

        rhs.value = 0;
        if (!CMSampleBufferCreateCopyWithNewTiming(0, originalSBuf, 1, &buf, &rhs))
        {
          value = rhs.value;
          if (rhs.value)
          {
            value = CFRetain(rhs.value);
          }

          *lhs = value;
          if (originalSBuf)
          {
            CFRelease(originalSBuf);
            value = *lhs;
          }

          originalSBuf = value;
          *lhs = 0;
          CF<__CVBuffer *>::~CF(lhs);
          presentationTimeStamp = buf.presentationTimeStamp;
          CF<__CVBuffer *>::~CF(&rhs);
LABEL_32:
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            LODWORD(buf.duration.value) = 134218240;
            *(&buf.duration.value + 4) = presentationTimeStamp.value;
            LOWORD(buf.duration.flags) = 1024;
            *(&buf.duration.flags + 2) = presentationTimeStamp.timescale;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG][FW] Tracking mask %lld/%d", &buf, 0x12u);
          }

          v45 = objc_alloc(MEMORY[0x1E69845B8]);
          v46 = [v45 initWithCMSampleBuffer:originalSBuf orientation:orientation options:MEMORY[0x1E695E0F8] session:session];
          v47 = VCPSignPostLog();
          v48 = os_signpost_id_generate(v47);

          v49 = VCPSignPostLog();
          v50 = v49;
          if (v48 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
          {
            LOWORD(buf.duration.value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v50, OS_SIGNPOST_INTERVAL_BEGIN, v48, "VNTrackMaskRequest_PerformRequest", "", &buf, 2u);
          }

          v99 = v90;
          v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v99 count:1];
          v94 = 0;
          v52 = [v46 performRequests:v51 error:&v94];
          v53 = v94;

          if (v52)
          {
            v54 = VCPSignPostLog();
            v55 = v54;
            if (v48 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
            {
              LOWORD(buf.duration.value) = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v55, OS_SIGNPOST_INTERVAL_END, v48, "VNTrackMaskRequest_PerformRequest", "", &buf, 2u);
            }

            results = [v90 results];
            firstObject = [results firstObject];

            if (firstObject)
            {
              [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "completedUnitCount") + 1}];
              if (+[MADVideoRemoveBackgroundSettings visionTrimEnabled](MADVideoRemoveBackgroundSettings, "visionTrimEnabled") && ([firstObject confidence], -[MADConfidenceTracker updateConfidence:](v82, "updateConfidence:", v58), v60 = v59, +[MADVideoRemoveBackgroundSettings visionTrimThreshold](MADVideoRemoveBackgroundSettings, "visionTrimThreshold"), v60 < v61))
              {
                if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf.duration.value) = 134218240;
                  *(&buf.duration.value + 4) = presentationTimeStamp.value;
                  LOWORD(buf.duration.flags) = 1024;
                  *(&buf.duration.flags + 2) = presentationTimeStamp.timescale;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG][FW] Confidence below threshold (%lld/%d), trimming", &buf, 0x12u);
                }

                *endTime = presentationTimeStamp;
                v36 = 5;
              }

              else
              {
                x = union->origin.x;
                y = union->origin.y;
                width = union->size.width;
                height = union->size.height;
                [firstObject croppedBoundingBox];
                -[MADVideoRemoveBackgroundCropTask scaleNormalizedCropRect:forPixelBuffer:](self, "scaleNormalizedCropRect:forPixelBuffer:", [firstObject pixelBuffer], v66, v67, v68, v69);
                v111.origin.x = v70;
                v111.origin.y = v71;
                v111.size.width = v72;
                v111.size.height = v73;
                v110.origin.x = x;
                v110.origin.y = y;
                v110.size.width = width;
                v110.size.height = height;
                *union = CGRectUnion(v110, v111);
                v74 = [MADMattedFullFrame alloc];
                pixelBuffer = [firstObject pixelBuffer];
                buf.duration = presentationTimeStamp;
                [firstObject confidence];
                v77 = [(MADMattedFullFrame *)v74 initWithPixelBuffer:pixelBuffer presentationTimestamp:&buf confidence:v76];
                [array addObject:v77];

                v36 = 0;
              }
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 4)
              {
                v79 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf.duration.value) = 134218240;
                  *(&buf.duration.value + 4) = presentationTimeStamp.value;
                  LOWORD(buf.duration.flags) = 1024;
                  *(&buf.duration.flags + 2) = presentationTimeStamp.timescale;
                  _os_log_impl(&dword_1C9B70000, v79, OS_LOG_TYPE_DEFAULT, "[RMBG][FW] No observation at time %lld/%d", &buf, 0x12u);
                }
              }

              v36 = 4;
            }
          }

          else
          {
            v78 = [v53 copy];
            firstObject = *error;
            *error = v78;
            v36 = 1;
          }

          goto LABEL_56;
        }

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *lhs = 134218240;
          *&lhs[4] = presentationTimeStamp.value;
          *&lhs[12] = 1024;
          *&lhs[14] = presentationTimeStamp.timescale;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RMBG][FW] Failed to adjust sample timing (%lld/%d)", lhs, 0x12u);
        }

        v39 = MEMORY[0x1E696ABC0];
        v100 = v92;
        v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to adjust sample timing (%lld/%d)", presentationTimeStamp.value, presentationTimeStamp.timescale];
        v101 = v40;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
        v42 = [v39 errorWithDomain:v29 code:-18 userInfo:v41];
        v43 = *error;
        *error = v42;

        CF<__CVBuffer *>::~CF(&rhs);
        v36 = 1;
      }

      else
      {
        v36 = 5;
      }

LABEL_56:
      CF<__CVBuffer *>::~CF(&originalSBuf);
LABEL_57:
      objc_autoreleasePoolPop(v30);
      if (v36 && v36 != 4)
      {
        if (v36 == 5)
        {
          v80 = array;
        }

        else
        {
          v80 = 0;
        }

        v28 = v90;
        goto LABEL_64;
      }
    }
  }

  v80 = 0;
LABEL_64:

  objc_autoreleasePoolPop(context);

  return v80;
}

- (BOOL)isAnimatedStickerPreferredWithPastSamples:(id)samples futureSamples:(id)futureSamples
{
  v40 = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  futureSamplesCopy = futureSamples;
  v7 = +[MADVideoRemoveBackgroundSettings visionTrimWindow];
  v8 = [samplesCopy count];
  if ([futureSamplesCopy count] + v8 <= 2 * v7)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    +[MADVideoRemoveBackgroundSettings visionPreferredVideoQualityThreshold];
    v10 = v9;
    +[MADVideoRemoveBackgroundSettings visionPreferredLowQualityProportionThreshold];
    v12 = v11;
    +[MADVideoRemoveBackgroundSettings visionPreferredWorstFrameScoreThreshold];
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = 1.0;
    while (v7 + v15 < [samplesCopy count])
    {
      v18 = [samplesCopy objectAtIndexedSubscript:v15];
      [v18 confidence];
      v20 = v19;

      if (v20 < v17)
      {
        v17 = v20;
      }

      if (v20 < v10)
      {
        ++v16;
      }

      ++v15;
    }

    for (i = 0; v7 + i < [futureSamplesCopy count]; ++i)
    {
      v23 = [futureSamplesCopy objectAtIndexedSubscript:i];
      [v23 confidence];
      v25 = v24;

      if (v25 < v17)
      {
        v17 = v25;
      }

      if (v25 < v10)
      {
        ++v16;
      }
    }

    v26 = [samplesCopy count];
    v27 = v16 / ([futureSamplesCopy count] + v26);
    v21 = v27 <= v12 && v17 >= v14;
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v29[0] = 67110400;
      v29[1] = v21;
      v30 = 2048;
      v31 = v27;
      v32 = 2048;
      v33 = v10;
      v34 = 2048;
      v35 = v12;
      v36 = 2048;
      v37 = v17;
      v38 = 2048;
      v39 = v14;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Vision Preferred: %d - low quality proportion: %0.3f (th_v: %0.3f, th_prop: %0.3f), worst frame score: %0.3f (th_wfs: %0.3f)", v29, 0x3Au);
    }
  }

  return v21;
}

- (BOOL)exportFutureSamples:(id)samples sequenceWriter:(id)writer progress:(id)progress error:(id *)error
{
  v54[1] = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  writerCopy = writer;
  progressCopy = progress;
  v41 = *MEMORY[0x1E696A768];
  v42 = *MEMORY[0x1E696A578];
  do
  {
    v11 = [samplesCopy count];
    if (!v11)
    {
      break;
    }

    v12 = objc_autoreleasePoolPush();
    if ([(MADVideoRemoveBackgroundCropTask *)self isCanceled])
    {
      v13 = MEMORY[0x1E696ABC0];
      v53 = v42;
      firstObject = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request canceled"];
      v54[0] = firstObject;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
      v16 = [v13 errorWithDomain:v41 code:-128 userInfo:v15];
      v17 = *error;
      *error = v16;
    }

    else
    {
      firstObject = [samplesCopy firstObject];
      if (MediaAnalysisLogLevel() >= 6)
      {
        v18 = MEMORY[0x1E69E9C10];
        v19 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          if (firstObject)
          {
            [firstObject presentationTimestamp];
            v20 = *v44;
            [firstObject presentationTimestamp];
            v21 = v43;
          }

          else
          {
            v21 = 0;
            v20 = 0;
            *v44 = 0;
            v45 = 0;
            v46 = 0;
            v43 = 0;
          }

          *buf = 134218240;
          v50 = v20;
          v51 = 1024;
          v52 = v21;
          v18 = MEMORY[0x1E69E9C10];
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG] Encoding %lld/%d", buf, 0x12u);
        }
      }

      v22 = VCPSignPostLog();
      v23 = os_signpost_id_generate(v22);

      v24 = VCPSignPostLog();
      v25 = v24;
      if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        *v44 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "MADVideoRemoveBackground_ExportFrame", "", v44, 2u);
      }

      pixelBuffer = [firstObject pixelBuffer];
      if (firstObject)
      {
        [firstObject presentationTimestamp];
      }

      else
      {
        *v44 = 0;
        v45 = 0;
        v46 = 0;
      }

      if (![writerCopy addPixelBuffer:pixelBuffer withTime:v44])
      {
        v31 = VCPSignPostLog();
        v32 = v31;
        if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
        {
          *v44 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_END, v23, "MADVideoRemoveBackground_ExportFrame", "", v44, 2u);
        }

        [samplesCopy removeObjectAtIndex:0];
        [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "completedUnitCount") + 1}];
        v33 = 1;
        goto LABEL_28;
      }

      v27 = MEMORY[0x1E696ABC0];
      v47 = v42;
      v28 = MEMORY[0x1E696AEC0];
      if (firstObject)
      {
        [firstObject presentationTimestamp];
        v29 = *v44;
        [firstObject presentationTimestamp];
        v30 = v43;
      }

      else
      {
        v30 = 0;
        v29 = 0;
        *v44 = 0;
        v45 = 0;
        v46 = 0;
        v43 = 0;
      }

      v34 = [v28 stringWithFormat:@"Failed to export matted frame (%lld/%d)", v29, v30];
      v48 = v34;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v36 = [v27 errorWithDomain:v41 code:-18 userInfo:v35];
      v37 = *error;
      *error = v36;
    }

    v33 = 0;
LABEL_28:

    objc_autoreleasePoolPop(v12);
  }

  while ((v33 & 1) != 0);

  return v11 == 0;
}

- (id)compressSequenceData:(id)data sequenceWriter:(id)writer outputWidth:(unint64_t *)width outputHeight:(unint64_t *)height
{
  v49 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  writerCopy = writer;
  maxFileSize = [(MADVideoRemoveBackgroundRequest *)self->_request maxFileSize];
  unsignedIntegerValue = [maxFileSize unsignedIntegerValue];

  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v46 = [dataCopy length];
    v47 = 1024;
    v48 = unsignedIntegerValue;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Output exceeds max file size (%d > %d); compressing...", buf, 0xEu);
  }

  minDimension = [(MADVideoRemoveBackgroundRequest *)self->_request minDimension];
  if (minDimension)
  {
    minDimension2 = [(MADVideoRemoveBackgroundRequest *)self->_request minDimension];
    unsignedIntegerValue2 = [minDimension2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 300;
  }

  v12 = MEMORY[0x1E695DF70];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue2];
  v33 = [v12 arrayWithObject:v13];

  v14 = *width;
  if (*width <= *height)
  {
    v14 = *height;
  }

  if (v14 >= 0x259 && unsignedIntegerValue2 <= 0x257)
  {
    [v33 insertObject:&unk_1F49BBDA0 atIndex:0];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v33;
  v15 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (!v15)
  {
    goto LABEL_37;
  }

  v16 = *v41;
  v17 = MEMORY[0x1E69E9C10];
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v41 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v40 + 1) + 8 * i);
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        intValue = [v19 intValue];
        *buf = 67109120;
        v46 = intValue;
        _os_log_impl(&dword_1C9B70000, v17, OS_LOG_TYPE_DEFAULT, "[RMBG] Transcoding to max dimension %d", buf, 8u);
      }

      v21 = VCPSignPostLog();
      v22 = os_signpost_id_generate(v21);

      v23 = VCPSignPostLog();
      v24 = v23;
      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "MADVideoRemoveBackground_ReEncode", "", buf, 2u);
      }

      v25 = [objc_opt_class() transcodeSequenceData:dataCopy maxDimension:objc_msgSend(v19 outputWidth:"unsignedIntegerValue") outputHeight:{width, height}];
      v26 = VCPSignPostLog();
      v27 = v26;
      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_END, v22, "MADVideoRemoveBackground_ReEncode", "", buf, 2u);
      }

      if (v25)
      {
        if ([v25 length] <= unsignedIntegerValue)
        {
          goto LABEL_38;
        }

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v28 = [v25 length];
          *buf = 67109376;
          v46 = v28;
          v47 = 1024;
          v48 = unsignedIntegerValue;
          v29 = v17;
          v30 = "[RMBG] Transcoded output exceeds max file size (%d vs %d)";
          v31 = 14;
LABEL_34:
          _os_log_impl(&dword_1C9B70000, v29, OS_LOG_TYPE_ERROR, v30, buf, v31);
        }
      }

      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v29 = v17;
        v30 = "[RMBG] Failed to transcode sequence";
        v31 = 2;
        goto LABEL_34;
      }
    }

    v15 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  }

  while (v15);
LABEL_37:
  v25 = 0;
LABEL_38:

  return v25;
}

- (void)publishPreviewResultsTimeRange:(id *)range pastSamples:(id)samples futureSamples:(id)futureSamples cropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v62 = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  futureSamplesCopy = futureSamples;
  v47 = samplesCopy;
  array = [MEMORY[0x1E695DF70] array];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  reverseObjectEnumerator = [samplesCopy reverseObjectEnumerator];
  v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v14)
  {
    v15 = *v56;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v56 != v15)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v17 = *(*(&v55 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = CVPixelBufferGetIOSurface([v17 pixelBuffer]);
        v20 = objc_alloc(MEMORY[0x1E69AE4C0]);
        if (v17)
        {
          [v17 presentationTimestamp];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
          *&v49 = 0;
        }

        v21 = [v20 initWithPresentationTimeStamp:buf surface:{v19, selfCopy}];
        [array addObject:v21];

        objc_autoreleasePoolPop(v18);
      }

      v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v14);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v22 = futureSamplesCopy;
  v23 = [v22 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v23)
  {
    v24 = *v52;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v52 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v51 + 1) + 8 * j);
        v27 = objc_autoreleasePoolPush();
        v28 = CVPixelBufferGetIOSurface([v26 pixelBuffer]);
        v29 = objc_alloc(MEMORY[0x1E69AE4C0]);
        if (v26)
        {
          [v26 presentationTimestamp];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
          *&v49 = 0;
        }

        v30 = [v29 initWithPresentationTimeStamp:buf surface:{v28, selfCopy}];
        [array addObject:v30];

        objc_autoreleasePoolPop(v27);
      }

      v23 = [v22 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v23);
  }

  if ([v47 count])
  {
    [v47 lastObject];
  }

  else
  {
    [v22 firstObject];
  }
  v31 = ;
  pixelBuffer = [v31 pixelBuffer];

  if (pixelBuffer)
  {
    v33 = CVPixelBufferGetWidth(pixelBuffer);
    v34 = CVPixelBufferGetHeight(pixelBuffer);
    v63.origin.x = x / v33;
    v63.origin.y = 1.0 - (y + height) / v34;
    v63.size.width = width / v33;
    v63.size.height = height / v34;
    v65.origin.x = 0.0;
    v65.origin.y = 0.0;
    v65.size.width = 1.0;
    v65.size.height = 1.0;
    v64 = CGRectIntersection(v63, v65);
    v35 = v64.origin.x;
    v36 = v64.origin.y;
    v37 = v64.size.width;
    v38 = v64.size.height;
  }

  else
  {
    v37 = 1.0;
    v35 = 0.0;
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Failed to normalize crop rect", buf, 2u);
    }

    v36 = 0.0;
    v38 = 1.0;
  }

  v39 = objc_alloc_init(MEMORY[0x1E69AE4E8]);
  v40 = objc_alloc(MEMORY[0x1E69AE4D0]);
  v41 = *&range->var0.var3;
  *buf = *&range->var0.var0;
  v49 = v41;
  v50 = *&range->var1.var1;
  v42 = [v40 initWithTimeRange:buf frames:array normalizedCropRect:{v35, v36, v37, v38}];
  v59 = v42;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
  [v39 setResults:v43];

  (*(selfCopy->_resultHandler + 2))();
}

- (void)publishPayloadWidth:(unint64_t)width height:(unint64_t)height data:(id)data
{
  v14[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v9 = objc_alloc_init(MEMORY[0x1E69AE4E8]);
  v10 = objc_alloc(MEMORY[0x1E69AE4E0]);
  outputType = [(MADVideoRemoveBackgroundRequest *)self->_request outputType];
  v12 = [v10 initWithUniformTypeIdentifier:outputType width:width height:height data:dataCopy];
  v14[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v9 setResults:v13];

  (*(self->_resultHandler + 2))();
}

- (BOOL)run:(id *)run
{
  v262[1] = *MEMORY[0x1E69E9840];
  if ([(MADVideoRemoveBackgroundCropTask *)self validateRequest:?])
  {
    v5 = [MEMORY[0x1E695DF00] now];
    [v5 timeIntervalSince1970];
    v7 = v6;

    v8 = MEMORY[0x1E6987E28];
    v9 = [(MADServiceVideoAsset *)self->_asset url];
    v10 = [v8 assetWithURL:v9];

    if (v10)
    {
      v236 = 0;
      v11 = [MEMORY[0x1E6987E78] assetReaderWithAsset:v10 error:&v236];
      v12 = v236;
      v204 = v12;
      if (v11)
      {
        v13 = [v10 vcp_firstEnabledTrackWithMediaType:*MEMORY[0x1E6987608]];
        v203 = v13;
        if (!v13)
        {
          if (run)
          {
            v23 = MEMORY[0x1E696ABC0];
            v259 = *MEMORY[0x1E696A578];
            v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Asset contains no video tracks"];
            v260 = v24;
            v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v260 forKeys:&v259 count:1];
            v26 = [v23 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v25];
            v27 = *run;
            *run = v26;
          }

          goto LABEL_50;
        }

        memset(&buf[1], 0, sizeof(CMTimeRange));
        [v13 timeRange];
        if (+[MADVideoRemoveBackgroundSettings autoplayTrimEnabled])
        {
          memset(&range, 0, sizeof(range));
          asset = self->_asset;
          if (asset && ([(MADServiceVideoAsset *)asset trimTimeRange], (range.start.flags & 1) != 0) && (range.duration.flags & 1) != 0 && !range.duration.epoch && (range.duration.value & 0x8000000000000000) == 0 && (buf[0].start = range.duration, *&time2.start.value = *MEMORY[0x1E6960CC0], time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&buf[0].start, &time2.start)))
          {
            if (MediaAnalysisLogLevel() >= 6)
            {
              v56 = MEMORY[0x1E69E9C10];
              v57 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
              {
                *&buf[0].start.value = *&range.start.value;
                buf[0].start.epoch = range.start.epoch;
                Seconds = CMTimeGetSeconds(&buf[0].start);
                buf[0] = range;
                CMTimeRangeGetEnd(&time2.start, buf);
                v59 = CMTimeGetSeconds(&time2.start);
                LODWORD(v258.start.value) = 134218240;
                *(&v258.start.value + 4) = Seconds;
                LOWORD(v258.start.flags) = 2048;
                *(&v258.start.flags + 2) = v59;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG] Applying autoplay trim (%0.3fs-%0.3fs)", &v258, 0x16u);
              }
            }

            time2 = buf[1];
            v258 = range;
            CMTimeRangeGetIntersection(buf, &time2, &v258);
            buf[1] = buf[0];
          }

          else if (MediaAnalysisLogLevel() >= 4)
          {
            v15 = MEMORY[0x1E69E9C10];
            v16 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf[0].start.value) = 0;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Autoplay trim range not available for asset", buf, 2u);
            }
          }
        }

        v232 = 0uLL;
        v233 = 0;
        request = self->_request;
        if (request)
        {
          [(MADVideoRemoveBackgroundRequest *)request maskTime];
          if (range.start.flags)
          {
            v18 = self->_request;
            if (v18)
            {
              [(MADVideoRemoveBackgroundRequest *)v18 maskTime];
LABEL_28:
              range = buf[1];
              *&buf[0].start.value = v232;
              buf[0].start.epoch = v233;
              if (CMTimeRangeContainsTime(&range, &buf[0].start))
              {
                v202 = [(MADVideoRemoveBackgroundCropTask *)self decodeSettingsForTrack:v203];
                v29 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v203 outputSettings:?];
                if (v29)
                {
                  [v11 addOutput:v29];
                  range = buf[1];
                  [v11 setTimeRange:&range];
                  if ([v11 startReading])
                  {
                    v201 = v29;
                    vcp_imageOrientation = [v203 vcp_imageOrientation];
                    range = buf[1];
                    v197 = [v203 vcp_sampleCountForTimeRange:&range];
                    if (MediaAnalysisLogLevel() >= 6)
                    {
                      v30 = MEMORY[0x1E69E9C10];
                      v31 = MEMORY[0x1E69E9C10];
                      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                      {
                        LODWORD(range.start.value) = 67109120;
                        HIDWORD(range.start.value) = v197;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG] Sample Count: %d", &range, 8u);
                      }
                    }

                    progressHandler = self->_progressHandler;
                    if (progressHandler)
                    {
                      progressHandler[2](0.0);
                    }

                    v197 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:3 * v197];
                    v229[0] = MEMORY[0x1E69E9820];
                    v229[1] = 3221225472;
                    v229[2] = __40__MADVideoRemoveBackgroundCropTask_run___block_invoke;
                    v229[3] = &unk_1E834D238;
                    v200 = v197;
                    v230 = v200;
                    selfCopy = self;
                    v196 = [VCPTimer timerWithInterval:250 unit:2 oneShot:0 andBlock:v229];
                    if (MediaAnalysisLogLevel() >= 7)
                    {
                      v34 = MEMORY[0x1E69E9C10];
                      v35 = MEMORY[0x1E69E9C10];
                      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                      {
                        LOWORD(range.start.value) = 0;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[RMBG] Resetting cached mask state", &range, 2u);
                      }
                    }

                    v36 = +[MADImageRemoveBackgroundResource sharedResource];
                    [v36 setCachedMaskState:0];

                    v37 = VCPSignPostLog();
                    v38 = os_signpost_id_generate(v37);

                    v39 = VCPSignPostLog();
                    v40 = v39;
                    if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
                    {
                      LOWORD(range.start.value) = 0;
                      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v40, OS_SIGNPOST_INTERVAL_BEGIN, v38, "MADVideoRemoveBackground_DecodePastFrames", "", &range, 2u);
                    }

                    *&range.start.value = v232;
                    range.start.epoch = v233;
                    *&buf[0].start.value = *&buf[1].start.value;
                    buf[0].start.epoch = buf[1].start.epoch;
                    v199 = [(MADVideoRemoveBackgroundCropTask *)self decodeSamplesUntilTime:&range trackOutput:v201 baseTime:buf progress:v200 error:run];
                    if (!v199)
                    {
                      goto LABEL_47;
                    }

                    if ([v11 status] == 3)
                    {
                      error = [v11 error];
                      v42 = *run;
                      *run = error;

LABEL_47:
                      v19 = 0;
LABEL_176:

                      v50 = v230;
                      goto LABEL_177;
                    }

                    v60 = VCPSignPostLog();
                    v61 = v60;
                    if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
                    {
                      LOWORD(range.start.value) = 0;
                      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v61, OS_SIGNPOST_INTERVAL_END, v38, "MADVideoRemoveBackground_DecodePastFrames", "", &range, 2u);
                    }

                    lastObject = [v199 lastObject];
                    v228 = CFRetain(lastObject);

                    v63 = VCPSignPostLog();
                    v64 = os_signpost_id_generate(v63);

                    v65 = VCPSignPostLog();
                    v66 = v65;
                    if (v64 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
                    {
                      LOWORD(range.start.value) = 0;
                      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v66, OS_SIGNPOST_INTERVAL_BEGIN, v64, "MADVideoRemoveBackground_GenerateMask", "", &range, 2u);
                    }

                    cf = [(MADVideoRemoveBackgroundCropTask *)self generateMaskForSampleBuffer:v228 orientation:vcp_imageOrientation error:run];
                    if (!cf)
                    {
                      v19 = 0;
LABEL_175:
                      CF<__CVBuffer *>::~CF(&cf);
                      CF<__CVBuffer *>::~CF(&v228);
                      goto LABEL_176;
                    }

                    v67 = VCPSignPostLog();
                    v68 = v67;
                    if (v64 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v67))
                    {
                      LOWORD(range.start.value) = 0;
                      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v68, OS_SIGNPOST_INTERVAL_END, v64, "MADVideoRemoveBackground_GenerateMask", "", &range, 2u);
                    }

                    v187 = +[MADVideoRemoveBackgroundResource sharedResource];
                    v69 = +[VCPMADResourceManager sharedManager];
                    v190 = [v69 activateResource:v187];

                    range.start.value = 0;
                    *&range.start.timescale = &range;
                    range.start.epoch = 0x5012000000;
                    range.duration.value = __Block_byref_object_copy__16;
                    *&range.duration.timescale = __Block_byref_object_dispose__16;
                    range.duration.epoch = &unk_1CA01F5A2;
                    v70 = MEMORY[0x1E695F050];
                    v71 = *(MEMORY[0x1E695F050] + 16);
                    v250 = *MEMORY[0x1E695F050];
                    v251 = v71;
                    buf[0].start.value = 0;
                    *&buf[0].start.timescale = buf;
                    buf[0].start.epoch = 0x3032000000;
                    buf[0].duration.value = __Block_byref_object_copy__520;
                    *&buf[0].duration.timescale = __Block_byref_object_dispose__521;
                    buf[0].duration.epoch = 0;
                    time2.start.value = 0;
                    *&time2.start.timescale = &time2;
                    time2.start.epoch = 0x3032000000;
                    time2.duration.value = __Block_byref_object_copy__520;
                    *&time2.duration.timescale = __Block_byref_object_dispose__521;
                    time2.duration.epoch = 0;
                    group = dispatch_group_create();
                    v72 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
                    v191 = dispatch_queue_create("trackMaskPastFrames", v72);

                    block[0] = MEMORY[0x1E69E9820];
                    block[1] = 3321888768;
                    block[2] = __40__MADVideoRemoveBackgroundCropTask_run___block_invoke_523;
                    block[3] = &unk_1F4968E50;
                    p_time2 = &time2;
                    block[4] = self;
                    v226 = vcp_imageOrientation;
                    v220 = v199;
                    v225 = cf;
                    CFRetain(cf);
                    p_range = &range;
                    v188 = v200;
                    v221 = v188;
                    v224 = buf;
                    dispatch_group_async(group, v191, block);
                    v73 = *(v70 + 16);
                    v218.origin = *v70;
                    v218.size = v73;
                    memset(&v217, 0, sizeof(v217));
                    v258 = buf[1];
                    CMTimeRangeGetEnd(&v217, &v258);
                    v74 = VCPSignPostLog();
                    v75 = os_signpost_id_generate(v74);

                    v76 = VCPSignPostLog();
                    v77 = v76;
                    if (v75 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v76))
                    {
                      LOWORD(v258.start.value) = 0;
                      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v77, OS_SIGNPOST_INTERVAL_BEGIN, v75, "MADVideoRemoveBackground_ProcessFutureFrames", "", &v258, 2u);
                    }

                    *&v258.start.value = *&buf[1].start.value;
                    v258.start.epoch = buf[1].start.epoch;
                    v195 = [(MADVideoRemoveBackgroundCropTask *)self processFutureSamplesFromTrackOutput:v201 baseTime:&v258 orientation:vcp_imageOrientation maskSampleBuffer:v228 maskPixelBuffer:cf cropUnion:&v218 endTime:&v217 progress:v188 error:run];
                    v78 = VCPSignPostLog();
                    v79 = v78;
                    if (v75 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v78))
                    {
                      LOWORD(v258.start.value) = 0;
                      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v79, OS_SIGNPOST_INTERVAL_END, v75, "MADVideoRemoveBackground_ProcessFutureFrames", "", &v258, 2u);
                    }

                    dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
                    v80 = v195;
                    if (!v195)
                    {
                      v19 = 0;
LABEL_174:

                      CF<__CVBuffer *>::~CF(&v225);
                      _Block_object_dispose(&time2, 8);

                      _Block_object_dispose(buf, 8);
                      _Block_object_dispose(&range, 8);

                      goto LABEL_175;
                    }

                    if (*(*&time2.start.timescale + 40))
                    {
                      [v190 reset];
                      v186 = [v195 count];
                      v185 = [*(*&time2.start.timescale + 40) count];
                      if (!+[MADVideoRemoveBackgroundSettings visionTrimEnabled])
                      {
                        goto LABEL_119;
                      }

                      memset(&v216, 0, sizeof(v216));
                      lastObject2 = [*(*&time2.start.timescale + 40) lastObject];
                      v82 = lastObject2;
                      if (lastObject2)
                      {
                        [lastObject2 presentationTimestamp];
                      }

                      else
                      {
                        memset(&v216, 0, sizeof(v216));
                      }

                      *lhs = *&buf[1].start.value;
                      *&lhs[16] = buf[1].start.epoch;
                      rhs = v216;
                      CMTimeAdd(&v258.start, lhs, &rhs);
                      *&buf[1].start.value = *&v258.start.value;
                      v85 = *&v258.start.value;
                      buf[1].start.epoch = v258.start.epoch;
                      epoch = v258.start.epoch;
                      v258.start = v217;
                      *lhs = v85;
                      *&lhs[16] = epoch;
                      CMTimeSubtract(&rhs, &v258.start, lhs);
                      buf[1].duration = rhs;
                      if (MediaAnalysisLogLevel() >= 5)
                      {
                        v87 = MEMORY[0x1E69E9C10];
                        v88 = MEMORY[0x1E69E9C10];
                        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
                        {
                          *&v258.start.value = *&buf[1].start.value;
                          v258.start.epoch = buf[1].start.epoch;
                          v89 = CMTimeGetSeconds(&v258.start);
                          v258.start = v217;
                          v90 = CMTimeGetSeconds(&v258.start);
                          *lhs = 134218240;
                          *&lhs[4] = v89;
                          *&lhs[12] = 2048;
                          *&lhs[14] = v90;
                          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Tracking based trim (%0.3fs-%0.3fs)", lhs, 0x16u);
                        }
                      }

                      +[MADVideoRemoveBackgroundSettings visionTrimMininumDuration];
                      v92 = v91;
                      v258.start = buf[1].duration;
                      v93 = CMTimeGetSeconds(&v258.start);
                      if (v93 >= v92)
                      {
                        v214 = 0u;
                        v215 = 0u;
                        v212 = 0u;
                        v213 = 0u;
                        v94 = *(*&time2.start.timescale + 40);
                        v95 = [v94 countByEnumeratingWithState:&v212 objects:v246 count:16];
                        if (v95)
                        {
                          v96 = *v213;
                          do
                          {
                            for (i = 0; i != v95; ++i)
                            {
                              if (*v213 != v96)
                              {
                                objc_enumerationMutation(v94);
                              }

                              v98 = *(*(&v212 + 1) + 8 * i);
                              if (v98)
                              {
                                [*(*(&v212 + 1) + 8 * i) presentationTimestamp];
                              }

                              else
                              {
                                memset(&rhs, 0, sizeof(rhs));
                              }

                              v258.start = rhs;
                              *lhs = v216;
                              CMTimeSubtract(&v211, &v258.start, lhs);
                              v258.start = v211;
                              [v98 setPresentationTimestamp:&v258];
                            }

                            v95 = [v94 countByEnumeratingWithState:&v212 objects:v246 count:16];
                          }

                          while (v95);
                        }

                        v209 = 0u;
                        v210 = 0u;
                        v207 = 0u;
                        v208 = 0u;
                        v99 = v195;
                        v100 = [v99 countByEnumeratingWithState:&v207 objects:v245 count:16];
                        if (v100)
                        {
                          v101 = *v208;
                          do
                          {
                            for (j = 0; j != v100; ++j)
                            {
                              if (*v208 != v101)
                              {
                                objc_enumerationMutation(v99);
                              }

                              v103 = *(*(&v207 + 1) + 8 * j);
                              if (v103)
                              {
                                [*(*(&v207 + 1) + 8 * j) presentationTimestamp];
                              }

                              else
                              {
                                memset(&rhs, 0, sizeof(rhs));
                              }

                              v258.start = rhs;
                              *lhs = v216;
                              CMTimeSubtract(&v206, &v258.start, lhs);
                              v258.start = v206;
                              [v103 setPresentationTimestamp:&v258];
                            }

                            v100 = [v99 countByEnumeratingWithState:&v207 objects:v245 count:16];
                          }

                          while (v100);
                        }

                        v80 = v195;
LABEL_119:
                        memset(lhs, 0, sizeof(lhs));
                        v263 = CGRectUnion(*(*&range.start.timescale + 48), v218);
                        y = v263.origin.y;
                        *&v263.origin.y = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
                        height = v263.size.height;
                        *lhs = vcvtq_f64_u64(vandq_s8(vcvtq_u64_f64(v263.origin), *&v263.origin.y));
                        *&lhs[16] = vcvtq_f64_u64(vandq_s8(vcvtq_u64_f64(v263.size), *&v263.origin.y));
                        if (MediaAnalysisLogLevel() >= 6)
                        {
                          v106 = MEMORY[0x1E69E9C10];
                          v107 = MEMORY[0x1E69E9C10];
                          if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
                          {
                            LODWORD(v258.start.value) = 67109888;
                            HIDWORD(v258.start.value) = *lhs;
                            LOWORD(v258.start.timescale) = 1024;
                            *(&v258.start.timescale + 2) = *&lhs[8];
                            HIWORD(v258.start.flags) = 1024;
                            LODWORD(v258.start.epoch) = (*lhs + *&lhs[16]);
                            WORD2(v258.start.epoch) = 1024;
                            *(&v258.start.epoch + 6) = (*&lhs[8] + *&lhs[24]);
                            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG] Crop (%d, %d) to (%d, %d)", &v258, 0x1Au);
                          }

                          v80 = v195;
                        }

                        if (self->_previewRequest)
                        {
                          v258 = buf[1];
                          [(MADVideoRemoveBackgroundCropTask *)self publishPreviewResultsTimeRange:&v258 pastSamples:*(*&time2.start.timescale + 40) futureSamples:v80 cropRect:*lhs, *&lhs[8], *&lhs[16], *&lhs[24]];
                          if (!self->_request)
                          {
                            (*(self->_completionHandler + 2))();
                            v19 = 1;
                            goto LABEL_174;
                          }
                        }

                        v184 = [(MADVideoRemoveBackgroundCropTask *)self isAnimatedStickerPreferredWithPastSamples:*(*&time2.start.timescale + 40) futureSamples:v80];
                        outputType = [(MADVideoRemoveBackgroundRequest *)self->_request outputType];
                        v109 = [MADAlphaSequenceWriter writerWithUniformTypeIdentifier:outputType frameCount:v197 crop:lhs];

                        if (v109)
                        {
                          v110 = VCPSignPostLog();
                          v111 = os_signpost_id_generate(v110);

                          v112 = VCPSignPostLog();
                          v113 = v112;
                          if (v111 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v112))
                          {
                            LOWORD(v258.start.value) = 0;
                            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v113, OS_SIGNPOST_INTERVAL_BEGIN, v111, "MADVideoRemoveBackground_EncodePastFrames", "", &v258, 2u);
                          }

                          if (![(MADVideoRemoveBackgroundCropTask *)self exportPastSamples:*(*&time2.start.timescale + 40) sequenceWriter:v109 progress:v188 error:run])
                          {
                            goto LABEL_159;
                          }

                          v114 = VCPSignPostLog();
                          v115 = v114;
                          if (v111 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v114))
                          {
                            LOWORD(v258.start.value) = 0;
                            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v115, OS_SIGNPOST_INTERVAL_END, v111, "MADVideoRemoveBackground_EncodePastFrames", "", &v258, 2u);
                          }

                          v116 = VCPSignPostLog();
                          v117 = os_signpost_id_generate(v116);

                          v118 = VCPSignPostLog();
                          v119 = v118;
                          if (v117 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v118))
                          {
                            LOWORD(v258.start.value) = 0;
                            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v119, OS_SIGNPOST_INTERVAL_BEGIN, v117, "MADVideoRemoveBackground_EncodeFutureFrames", "", &v258, 2u);
                          }

                          if (![(MADVideoRemoveBackgroundCropTask *)self exportFutureSamples:v195 sequenceWriter:v109 progress:v188 error:run])
                          {
LABEL_159:
                            v19 = 0;
LABEL_172:

                            goto LABEL_173;
                          }

                          v120 = VCPSignPostLog();
                          v121 = v120;
                          if (v117 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v120))
                          {
                            LOWORD(v258.start.value) = 0;
                            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v121, OS_SIGNPOST_INTERVAL_END, v117, "MADVideoRemoveBackground_EncodeFutureFrames", "", &v258, 2u);
                          }

                          if (MediaAnalysisLogLevel() >= 6)
                          {
                            v122 = MEMORY[0x1E69E9C10];
                            v123 = MEMORY[0x1E69E9C10];
                            if (os_log_type_enabled(v122, OS_LOG_TYPE_INFO))
                            {
                              LOWORD(v258.start.value) = 0;
                              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG] Finalizing output", &v258, 2u);
                            }
                          }

                          v258 = buf[1];
                          CMTimeRangeGetEnd(&rhs, &v258);
                          outputType4 = [v109 finishWithEndTime:&rhs];
                          if (outputType4)
                          {
                            rhs.value = *&lhs[16];
                            v216.value = *&lhs[24];
                            maxFileSize = [(MADVideoRemoveBackgroundRequest *)self->_request maxFileSize];
                            if (maxFileSize && (v125 = [outputType4 length], -[MADVideoRemoveBackgroundRequest maxFileSize](self->_request, "maxFileSize"), v126 = objc_claimAutoreleasedReturnValue(), v127 = v125 > objc_msgSend(v126, "unsignedIntegerValue"), v126, maxFileSize, v127) && (-[MADVideoRemoveBackgroundCropTask compressSequenceData:sequenceWriter:outputWidth:outputHeight:](self, "compressSequenceData:sequenceWriter:outputWidth:outputHeight:", outputType4, v109, &rhs, &v216), v128 = objc_claimAutoreleasedReturnValue(), outputType4, (outputType4 = v128) == 0))
                            {
                              if (MediaAnalysisLogLevel() >= 3)
                              {
                                v179 = MEMORY[0x1E69E9C10];
                                v180 = MEMORY[0x1E69E9C10];
                                if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
                                {
                                  LOWORD(v258.start.value) = 0;
                                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RMBG] Failed to meet target filesize requirement", &v258, 2u);
                                }
                              }

                              v181 = MEMORY[0x1E696ABC0];
                              v238 = *MEMORY[0x1E696A578];
                              v138 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to meet target filesize requirement"];
                              v239 = v138;
                              v189 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v239 forKeys:&v238 count:1];
                              v182 = [v181 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v189];
                              outputType4 = 0;
                              v193 = *run;
                              *run = v182;
                            }

                            else
                            {
                              if (MediaAnalysisLogLevel() >= 5)
                              {
                                v129 = MEMORY[0x1E69E9C10];
                                v130 = MEMORY[0x1E69E9C10];
                                if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
                                {
                                  value = rhs.value;
                                  v132 = v216.value;
                                  v133 = [outputType4 length];
                                  LODWORD(v258.start.value) = 67109632;
                                  HIDWORD(v258.start.value) = value;
                                  LOWORD(v258.start.timescale) = 1024;
                                  *(&v258.start.timescale + 2) = v132;
                                  HIWORD(v258.start.flags) = 1024;
                                  LODWORD(v258.start.epoch) = v133;
                                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Output - Resolution: %dx%d  Size: %d", &v258, 0x14u);
                                }
                              }

                              [v196 destroy];
                              v134 = self->_progressHandler;
                              if (v134)
                              {
                                v134[2](1.0);
                              }

                              stickerIdentifiers = [(MADVideoRemoveBackgroundRequest *)self->_request stickerIdentifiers];
                              v136 = [stickerIdentifiers count] == 0;

                              if (v136)
                              {
                                goto LABEL_197;
                              }

                              animatedStickerScore = [(MADServiceVideoAsset *)self->_asset animatedStickerScore];
                              v138 = animatedStickerScore;
                              if (animatedStickerScore)
                              {
                                [animatedStickerScore doubleValue];
                                v140 = v139;
                                +[MADVideoRemoveBackgroundSettings photosPreferredThreshold];
                                v142 = v141;
                                v143 = v184;
                                if (v140 < v141)
                                {
                                  v143 = 0;
                                }

                                v183 = v143;
                                v144 = MEMORY[0x1E696AEC0];
                                [v138 doubleValue];
                                [v144 stringWithFormat:@"%0.3f", v145];
                                v189 = v146 = v140 >= v142;
                              }

                              else
                              {
                                v146 = 1;
                                v189 = @"-";
                                v183 = v184;
                              }

                              if (MediaAnalysisLogLevel() >= 5)
                              {
                                v168 = MEMORY[0x1E69E9C10];
                                v169 = MEMORY[0x1E69E9C10];
                                if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
                                {
                                  LODWORD(v258.start.value) = 67109890;
                                  HIDWORD(v258.start.value) = v183;
                                  LOWORD(v258.start.timescale) = 1024;
                                  *(&v258.start.timescale + 2) = v184;
                                  HIWORD(v258.start.flags) = 1024;
                                  LODWORD(v258.start.epoch) = v146;
                                  WORD2(v258.start.epoch) = 2112;
                                  *(&v258.start.epoch + 6) = v189;
                                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Preferred: %d (Vision: %d, Photos: %d - Score: %@)", &v258, 0x1Eu);
                                }
                              }

                              v170 = objc_alloc_init(_MADObjCStickerStoreFacade);
                              stickerIdentifiers2 = [(MADVideoRemoveBackgroundRequest *)self->_request stickerIdentifiers];
                              outputType2 = [(MADVideoRemoveBackgroundRequest *)self->_request outputType];
                              v205 = 0;
                              v173 = [(_MADObjCStickerStoreFacade *)v170 addAnimatedRepresentationWithIdentifiers:stickerIdentifiers2 data:outputType4 uti:outputType2 size:v183 isPreferred:&v205 error:rhs.value, v216.value];
                              v193 = v205;

                              if (v173)
                              {

LABEL_197:
                                [(MADVideoRemoveBackgroundCropTask *)self publishPayloadWidth:rhs.value height:v216.value data:outputType4];
                                (*(self->_completionHandler + 2))();
                                MADPLLogAnimatedStickerCreation(v185 + v186, v7);
                                v19 = 1;
                                goto LABEL_171;
                              }

                              if (MediaAnalysisLogLevel() >= 3)
                              {
                                v174 = MEMORY[0x1E69E9C10];
                                v175 = MEMORY[0x1E69E9C10];
                                if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
                                {
                                  v176 = [v193 description];
                                  LODWORD(v258.start.value) = 138412290;
                                  *(&v258.start.value + 4) = v176;
                                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RMBG] Failed to update sticker (%@)", &v258, 0xCu);
                                }
                              }

                              v177 = [v193 copy];
                              v178 = *run;
                              *run = v177;
                            }
                          }

                          else
                          {
                            if (MediaAnalysisLogLevel() >= 3)
                            {
                              v162 = MEMORY[0x1E69E9C10];
                              v163 = MEMORY[0x1E69E9C10];
                              if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
                              {
                                LOWORD(v258.start.value) = 0;
                                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to finalize output sequence", &v258, 2u);
                              }
                            }

                            v164 = MEMORY[0x1E696ABC0];
                            v240 = *MEMORY[0x1E696A578];
                            outputType4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to finalize output sequence"];
                            v241 = outputType4;
                            v165 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v241 forKeys:&v240 count:1];
                            v166 = [v164 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v165];
                            v167 = *run;
                            *run = v166;
                          }
                        }

                        else
                        {
                          if (MediaAnalysisLogLevel() >= 3)
                          {
                            v152 = MEMORY[0x1E69E9C10];
                            v153 = MEMORY[0x1E69E9C10];
                            if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
                            {
                              outputType3 = [(MADVideoRemoveBackgroundRequest *)self->_request outputType];
                              LODWORD(v258.start.value) = 138412290;
                              *(&v258.start.value + 4) = outputType3;
                              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RMBG] Invalid output type specified (%@)", &v258, 0xCu);
                            }
                          }

                          v155 = MEMORY[0x1E696ABC0];
                          v242 = *MEMORY[0x1E696A578];
                          v156 = MEMORY[0x1E696AEC0];
                          outputType4 = [(MADVideoRemoveBackgroundRequest *)self->_request outputType];
                          v198 = [v156 stringWithFormat:@"Invalid output type specified (%@)", outputType4];
                          v243 = v198;
                          v158 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v243 forKeys:&v242 count:1];
                          v159 = [v155 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v158];
                          v160 = *run;
                          *run = v159;
                        }

                        v19 = 0;
LABEL_171:

                        goto LABEL_172;
                      }

                      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                      {
                        LODWORD(v258.start.value) = 134218240;
                        *(&v258.start.value + 4) = v93;
                        LOWORD(v258.start.flags) = 2048;
                        *(&v258.start.flags + 2) = v92;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RMBG] Trimmed duration is too short (%0.3fs < %0.3fs)", &v258, 0x16u);
                      }

                      v147 = MEMORY[0x1E696ABC0];
                      v247 = *MEMORY[0x1E696A578];
                      v148 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Trimmed duration is too short (%0.3fs < %0.3fs)", *&v93, *&v92];
                      v248 = v148;
                      v149 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v248 forKeys:&v247 count:1];
                      v150 = [v147 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v149];
                      v151 = *run;
                      *run = v150;
                    }

                    else
                    {
                      v83 = [*(*&buf[0].start.timescale + 40) copy];
                      v84 = *run;
                      *run = v83;
                    }

                    v19 = 0;
LABEL_173:
                    v80 = v195;
                    goto LABEL_174;
                  }

                  if (run)
                  {
                    v53 = MEMORY[0x1E696ABC0];
                    v252 = *MEMORY[0x1E696A578];
                    v253 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to start decoding video track"];
                    v200 = v253;
                    v201 = v29;
                    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v253 forKeys:&v252 count:1];
                    v54 = [v53 errorWithDomain:*MEMORY[0x1E696A768] code:-19 userInfo:v50];
                    v55 = *run;
                    *run = v54;

                    goto LABEL_55;
                  }
                }

                else if (run)
                {
                  v49 = MEMORY[0x1E696ABC0];
                  v254 = *MEMORY[0x1E696A578];
                  v255 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create video track output"];
                  v200 = v255;
                  v201 = 0;
                  v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v255 forKeys:&v254 count:1];
                  v51 = [v49 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v50];
                  v52 = *run;
                  *run = v51;

LABEL_55:
                  v19 = 0;
LABEL_177:

                  v48 = v200;
                  goto LABEL_178;
                }

                v19 = 0;
LABEL_179:

                goto LABEL_180;
              }

              if (run)
              {
                v43 = MEMORY[0x1E696ABC0];
                v256 = *MEMORY[0x1E696A578];
                v44 = MEMORY[0x1E696AEC0];
                *&range.start.value = v232;
                range.start.epoch = v233;
                v45 = CMTimeGetSeconds(&range.start);
                *&range.start.value = *&buf[1].start.value;
                range.start.epoch = buf[1].start.epoch;
                v46 = CMTimeGetSeconds(&range.start);
                range = buf[1];
                CMTimeRangeGetEnd(&buf[0].start, &range);
                v202 = [v44 stringWithFormat:@"Mask time (%0.3fs) falls outside video time range (%0.3fs-%0.3fs)", *&v45, *&v46, CMTimeGetSeconds(&buf[0].start)];
                v257 = v202;
                v201 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v257 forKeys:&v256 count:1];
                v47 = [v43 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:?];
                v19 = 0;
                v48 = *run;
                *run = v47;
LABEL_178:

                v29 = v201;
                goto LABEL_179;
              }

LABEL_50:
              v19 = 0;
LABEL_180:
              v22 = v203;
              goto LABEL_181;
            }

            goto LABEL_27;
          }
        }

        else
        {
          memset(&range, 0, 24);
        }

        v28 = self->_asset;
        if (v28)
        {
          [(MADServiceVideoAsset *)v28 stillTime];
          goto LABEL_28;
        }

LABEL_27:
        v232 = 0uLL;
        v233 = 0;
        goto LABEL_28;
      }

      v21 = [v12 copy];
    }

    else
    {
      if (!run)
      {
        v19 = 0;
LABEL_182:

        return v19;
      }

      v20 = MEMORY[0x1E696ABC0];
      v261 = *MEMORY[0x1E696A578];
      v204 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load asset"];
      v262[0] = v204;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v262 forKeys:&v261 count:1];
      v21 = [v20 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v11];
    }

    v19 = 0;
    v22 = *run;
    *run = v21;
LABEL_181:

    goto LABEL_182;
  }

  return 0;
}

void __40__MADVideoRemoveBackgroundCropTask_run___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [*(a1 + 32) fractionCompleted];
    v4 = 134217984;
    v5 = v2 * 100.0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[RMBG] Progress: %0.2f%%", &v4, 0xCu);
  }

  v3 = *(*(a1 + 40) + 72);
  if (v3)
  {
    [*(a1 + 32) fractionCompleted];
    (*(v3 + 16))(v3);
  }
}

void __40__MADVideoRemoveBackgroundCropTask_run___block_invoke_523(uint64_t a1)
{
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "MADVideoRemoveBackground_TrackMaskPastFrames", "", buf, 2u);
  }

  v6 = [*(a1 + 32) processPastSampleBuffers:*(a1 + 40) orientation:*(a1 + 88) maskPixelBuffer:*(a1 + 80) cropUnion:*(*(a1 + 64) + 8) + 48 progress:*(a1 + 48) error:*(*(a1 + 72) + 8) + 40];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = VCPSignPostLog();
  v10 = v9;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_END, v3, "MADVideoRemoveBackground_TrackMaskPastFrames", "", v11, 2u);
  }
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

- (void)generateMaskForSampleBuffer:(uint64_t)a1 orientation:(int)a2 error:.cold.1(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 134218240;
  v3 = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &v2, 0x12u);
}

@end