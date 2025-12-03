@interface MADMovieBlastDoorAnalyzer
- ($AFC8CF76A46F37F9FB23C20884F4FD99)timeRange;
- (MADMovieBlastDoorAnalyzer)initWithMovieURL:(id)l analysisTypes:(unint64_t)types cancelBlock:(id)block;
- (id)analyzeAsset:(id *)asset;
- (int)configureAnalyzers;
- (int)createPixelBufferPool:(__CVPixelBufferPool *)pool;
- (int)finalizeAnalyzers:(id)analyzers timeRange:(id *)range;
- (int)processFrame:(__CVBuffer *)frame timestamp:(id *)timestamp duration:(id *)duration;
- (int)processVideo:(id)video;
- (int)queryVideoProperties:(id)properties;
@end

@implementation MADMovieBlastDoorAnalyzer

- (MADMovieBlastDoorAnalyzer)initWithMovieURL:(id)l analysisTypes:(unint64_t)types cancelBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = MADMovieBlastDoorAnalyzer;
  v11 = [(MADMovieBlastDoorAnalyzer *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_movieURL, l);
    v12->_analysisTypes = types;
    v13 = MEMORY[0x1E6960C70];
    *(&v12->_orientation + 1) = *MEMORY[0x1E6960C70];
    *&v12->_timeRange.start.flags = *(v13 + 16);
    v14 = _Block_copy(blockCopy);
    cancelBlock = v12->_cancelBlock;
    v12->_cancelBlock = v14;
  }

  return v12;
}

- (int)configureAnalyzers
{
  if ((self->_analysisTypes & 0xFFFFF3FFBFFFBFFFLL) != 0)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unsupported analysis type requested", buf, 2u);
    }

    return -50;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    privateResults = self->_privateResults;
    self->_privateResults = dictionary;

    v6 = [(NSMutableDictionary *)self->_privateResults objectForKey:@"OrientationResults"];
    analysisTypes = self->_analysisTypes;
    if ((analysisTypes & 0x4000) != 0)
    {
      v8 = objc_alloc_init(VCPVideoSceneClassifier);
      sceneClassifier = self->_sceneClassifier;
      self->_sceneClassifier = v8;

      analysisTypes = self->_analysisTypes;
    }

    if ((analysisTypes & 0x40000000000) != 0)
    {
      v10 = objc_alloc_init(MADVideoSafetyClassifier);
      safetyClassifier = self->_safetyClassifier;
      self->_safetyClassifier = v10;

      v12 = self->_safetyClassifier;
      *buf = *(&self->_timeRange.start.epoch + 4);
      *&v32 = *&self->_timeRange.duration.flags;
      [(MADVideoSafetyClassifier *)v12 configureProcessTimeIntervalFrom:buf];
      analysisTypes = self->_analysisTypes;
    }

    if ((analysisTypes & 0x80040000000) != 0)
    {
      v13 = [VCPVideoEmbeddings alloc];
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[VCPVideoTransformerBackbone embeddingVersion](VCPVideoTransformerBackbone, "embeddingVersion")}];
      v15 = [(VCPVideoEmbeddings *)v13 initWithEmbeddingType:2 version:v14];
      videoEmbeddings = self->_videoEmbeddings;
      self->_videoEmbeddings = v15;

      v17 = [VCPFullVideoAnalyzer alloc];
      orientation = self->_orientation;
      v19 = *(MEMORY[0x1E695EFD0] + 16);
      *buf = *MEMORY[0x1E695EFD0];
      v32 = v19;
      v33 = *(MEMORY[0x1E695EFD0] + 32);
      LOWORD(v30) = 0;
      LODWORD(v20) = 1.0;
      v21 = [(VCPFullVideoAnalyzer *)v17 initWithVideoOrientation:orientation preferredTransform:buf metaOrientation:v6 privateResults:self->_privateResults embeddings:self->_videoEmbeddings isTimelapse:0 isIris:0.0 irisPhotoOffsetSec:0.0 irisPhotoExposureSec:v20 slowMoRate:v30 faceDominated:?];
      videoAnalysis = self->_videoAnalysis;
      self->_videoAnalysis = v21;

      v23 = [[VCPVideoHumanActionAnalyzer alloc] initWithTimeOfInterest:0 phFaces:0];
      humanActionAnalyzer = self->_humanActionAnalyzer;
      self->_humanActionAnalyzer = v23;

      v25 = [VCPVideoCNNAnalyzer alloc];
      frameRate = self->_frameRate;
      *&frameRate = frameRate;
      v27 = *&self->_timeRange.start.flags;
      *buf = *(&self->_orientation + 1);
      v32 = v27;
      v33 = *(&self->_timeRange.duration.value + 4);
      v28 = [(VCPVideoCNNAnalyzer *)v25 initWithTimeOfInteret:0 frameRate:0 isLivePhoto:0 phFaces:buf timeRange:self->_videoEmbeddings withEmbeddings:self->_analysisTypes requestedAnalyses:frameRate photoOffset:0.0];
      videoCNNAnalyzer = self->_videoCNNAnalyzer;
      self->_videoCNNAnalyzer = v28;
    }

    return 0;
  }
}

- (int)queryVideoProperties:(id)properties
{
  v45 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__1;
  v39 = __Block_byref_object_dispose__1;
  v40 = 0;
  v5 = dispatch_semaphore_create(0);
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __50__MADMovieBlastDoorAnalyzer_queryVideoProperties___block_invoke;
  v32 = &unk_1E834C0C8;
  v34 = &v35;
  v6 = v5;
  v33 = v6;
  v7 = _Block_copy(&v29);
  [propertiesCopy generateMetadataforAttachmentWithfileURL:self->_movieURL resultHandler:{v7, v29, v30, v31, v32}];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v8 = v36[5];
  if (!v8)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "Failed to query movie metadata";
    goto LABEL_16;
  }

  if (![v8 has_rawPixelWidth] || !objc_msgSend(v36[5], "has_rawPixelHeight") || (objc_msgSend(v36[5], "has_rawOrientation") & 1) == 0)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "Movie metadata missing dimensions";
    goto LABEL_16;
  }

  if (![v36[5] has_videoDurationValue] || (objc_msgSend(v36[5], "has_videoDurationTimescale") & 1) == 0)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "Movie metadata missing duration";
    goto LABEL_16;
  }

  if (([v36[5] has_avFPS] & 1) == 0)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "Movie metadata missing frame rate";
LABEL_16:
    _os_log_impl(&dword_1C9B70000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
LABEL_17:
    v15 = -18;
    goto LABEL_18;
  }

  rawOrientation = [v36[5] rawOrientation];
  v10 = v36[5];
  if (rawOrientation > 4)
  {
    self->_height = [v10 rawPixelWidth];
    width = [v36[5] rawPixelHeight];
    self->_width = width;
    height = self->_height;
  }

  else
  {
    self->_width = [v10 rawPixelWidth];
    height = [v36[5] rawPixelHeight];
    self->_height = height;
    width = self->_width;
  }

  if (width < height)
  {
    v17 = 1;
  }

  else
  {
    v17 = 3;
  }

  self->_orientation = v17;
  [v36[5] videoDurationValue];
  v19 = v18;
  [v36[5] videoDurationTimescale];
  CMTimeMake(buf, v19, v20);
  *(&self->_timeRange.start.epoch + 4) = *buf;
  *&self->_timeRange.duration.flags = *v42;
  [v36[5] avFPS];
  self->_frameRate = v21;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    rawPixelWidth = [v36[5] rawPixelWidth];
    rawPixelHeight = [v36[5] rawPixelHeight];
    orientation = self->_orientation;
    [v36[5] videoDurationValue];
    v26 = v25;
    [v36[5] videoDurationTimescale];
    *buf = 67110144;
    frameRate = self->_frameRate;
    *&buf[4] = rawPixelWidth;
    *&buf[8] = 1024;
    *&buf[10] = rawPixelHeight;
    *&buf[14] = 1024;
    *v42 = orientation;
    *&v42[4] = 2048;
    *&v42[6] = v26 / v28;
    v43 = 2048;
    v44 = frameRate;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Source Dimensions: %dx%d  Orientation: %d  Duration: %0.3fs, Frame Rate: %f", buf, 0x28u);
  }

  v15 = 0;
LABEL_18:

  _Block_object_dispose(&v35, 8);
  return v15;
}

void __50__MADMovieBlastDoorAnalyzer_queryVideoProperties___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [v6 description];
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@", &v11, 0xCu);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (int)processFrame:(__CVBuffer *)frame timestamp:(id *)timestamp duration:(id *)duration
{
  v41 = *MEMORY[0x1E69E9840];
  cancelBlock = self->_cancelBlock;
  if (cancelBlock && (cancelBlock[2](cancelBlock, a2) & 1) != 0)
  {
    return -128;
  }

  if ((timestamp->var2 & 0x1D) == 1 && (duration->var2 & 0x1D) == 1)
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      var1 = timestamp->var1;
      *&time.duration.value = *&timestamp->var0;
      value = time.duration.value;
      time.duration.epoch = timestamp->var3;
      Seconds = CMTimeGetSeconds(&time.duration);
      v15 = duration->var1;
      *&time.duration.value = *&duration->var0;
      v14 = time.duration.value;
      time.duration.epoch = duration->var3;
      v16 = CMTimeGetSeconds(&time.duration);
      LODWORD(time.duration.value) = 134219264;
      *(&time.duration.value + 4) = value;
      LOWORD(time.duration.flags) = 1024;
      *(&time.duration.flags + 2) = var1;
      WORD1(time.duration.epoch) = 2048;
      *(&time.duration.epoch + 4) = Seconds;
      WORD2(time.presentationTimeStamp.value) = 2048;
      *(&time.presentationTimeStamp.value + 6) = v14;
      HIWORD(time.presentationTimeStamp.flags) = 1024;
      LODWORD(time.presentationTimeStamp.epoch) = v15;
      WORD2(time.presentationTimeStamp.epoch) = 2048;
      *(&time.presentationTimeStamp.epoch + 6) = v16;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "  Processing Frame - PTS: %lld/%d (%0.3fs) Duration: %lld/%d (%0.3fs)", &time, 0x36u);
    }

    if ((self->_timeRange.start.timescale & 1) != 0 || (v17 = *&timestamp->var0, *&self->_timeRange.start.flags = timestamp->var3, *(&self->_orientation + 1) = v17, (v10 = [(MADMovieBlastDoorAnalyzer *)self configureAnalyzers]) == 0))
    {
      v18 = objc_alloc_init(VCPFrameAnalysisStats);
      v37 = 0;
      sceneClassifier = self->_sceneClassifier;
      if (!sceneClassifier || (*&time.duration.value = *&timestamp->var0, time.duration.epoch = timestamp->var3, v36 = *duration, (v10 = [(VCPVideoSceneClassifier *)sceneClassifier analyzeFrame:frame withTimestamp:&time andDuration:&v36 flags:&v37]) == 0))
      {
        if (!self->_safetyClassifier)
        {
          goto LABEL_32;
        }

        sampleBufferOut = 0;
        v36 = *timestamp;
        formatDescriptionOut = 0;
        if (CMVideoFormatDescriptionCreateForImageBuffer(0, frame, &formatDescriptionOut))
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LOWORD(time.duration.value) = 0;
            v20 = MEMORY[0x1E69E9C10];
            v21 = "[CVPixelBuffer->CMSampleBuffer] Failed to create format description";
            p_time = &time;
LABEL_27:
            _os_log_impl(&dword_1C9B70000, v20, OS_LOG_TYPE_ERROR, v21, p_time, 2u);
            goto LABEL_28;
          }

          goto LABEL_28;
        }

        *&time.duration.value = *MEMORY[0x1E6960C70];
        time.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
        time.presentationTimeStamp = v36;
        time.decodeTimeStamp = time.duration;
        if (CMSampleBufferCreateReadyWithImageBuffer(*MEMORY[0x1E695E480], frame, formatDescriptionOut, &time, &sampleBufferOut))
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v20 = MEMORY[0x1E69E9C10];
            v21 = "[CVPixelBuffer->CMSampleBuffer] Failed to create CMSampleBuffer";
            p_time = buf;
            goto LABEL_27;
          }

LABEL_28:
          CF<__CVBuffer *>::~CF(&formatDescriptionOut);
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            LOWORD(time.duration.value) = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to convert CVPixelBuffer to CMSampleBuffer", &time, 2u);
          }

          goto LABEL_31;
        }

        CF<__CVBuffer *>::~CF(&formatDescriptionOut);
        safetyClassifier = self->_safetyClassifier;
        *&time.duration.value = *&timestamp->var0;
        time.duration.epoch = timestamp->var3;
        v36 = *duration;
        v10 = [(MADVideoSafetyClassifier *)safetyClassifier analyzeFrameWithSampleBuffer:sampleBufferOut timestamp:&time duration:&v36 andFlags:&v37];
        if (!v10)
        {
LABEL_31:
          CF<__CVBuffer *>::~CF(&sampleBufferOut);
LABEL_32:
          humanActionAnalyzer = self->_humanActionAnalyzer;
          if (!humanActionAnalyzer || (*&time.duration.value = *&timestamp->var0, time.duration.epoch = timestamp->var3, v36 = *duration, (v10 = [(VCPVideoHumanActionAnalyzer *)humanActionAnalyzer analyzeFrame:frame timestamp:&time duration:&v36 frameStats:v18 flags:&v37]) == 0))
          {
            if (!self->_videoAnalysis)
            {
              goto LABEL_39;
            }

            if (SocType() >= 247)
            {
              v25 = self->_sceneClassifier;
              if (v25)
              {
                videoAnalysis = self->_videoAnalysis;
                frameScenes = [(VCPVideoSceneClassifier *)v25 frameScenes];
                [(VCPFullVideoAnalyzer *)videoAnalysis prepareVideoAnalysisByScenes:frameScenes];
              }
            }

            v28 = [VCPSaliencyRegion salientRegionsFromPixelBuffer:frame];
            [VCPSaliencyRegion attachSalientRegions:v28 toPixelBuffer:frame];

            v29 = self->_videoAnalysis;
            *&time.duration.value = *&timestamp->var0;
            time.duration.epoch = timestamp->var3;
            v36 = *duration;
            v10 = [(VCPFullVideoAnalyzer *)v29 analyzeFrame:frame timestamp:&time duration:&v36 frameStats:v18 flags:&v37 cancel:self->_cancelBlock];
            if (!v10)
            {
LABEL_39:
              videoCNNAnalyzer = self->_videoCNNAnalyzer;
              if (!videoCNNAnalyzer || (v31 = self->_videoAnalysis, v32 = self->_humanActionAnalyzer, *&time.duration.value = *&timestamp->var0, time.duration.epoch = timestamp->var3, (v10 = [(VCPVideoCNNAnalyzer *)videoCNNAnalyzer loadAnalysisResultsFrom:v31 actionAnalyzer:v32 atTime:&time]) == 0) && (v33 = self->_videoCNNAnalyzer, *&time.duration.value = *&timestamp->var0, time.duration.epoch = timestamp->var3, v36 = *duration, (v10 = [(VCPVideoCNNAnalyzer *)v33 analyzeFrame:frame withTimestamp:&time andDuration:&v36 flags:&v37]) == 0))
              {
                v10 = 0;
              }
            }
          }

          goto LABEL_45;
        }

        CF<__CVBuffer *>::~CF(&sampleBufferOut);
      }

LABEL_45:
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(time.duration.value) = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Frame timing invalid", &time, 2u);
    }

    return -18;
  }

  return v10;
}

- (int)createPixelBufferPool:(__CVPixelBufferPool *)pool
{
  v12[4] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E6966130];
  v12[0] = &unk_1F49BB8C0;
  v6 = *MEMORY[0x1E6966208];
  v11[0] = v5;
  v11[1] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_width];
  v12[1] = v7;
  v11[2] = *MEMORY[0x1E69660B8];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_height];
  v11[3] = *MEMORY[0x1E69660D8];
  v12[2] = v8;
  v12[3] = MEMORY[0x1E695E0F8];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  LODWORD(pool) = CVPixelBufferPoolCreate(0, 0, v9, pool);
  return pool;
}

- (int)processVideo:(id)video
{
  v46 = *MEMORY[0x1E69E9840];
  videoCopy = video;
  width = self->_width;
  height = self->_height;
  if (width >= height)
  {
    v7 = self->_height;
  }

  else
  {
    v7 = self->_width;
  }

  if (v7 >= 0x169)
  {
    width = (360 * width / v7 + 1) & 0xFFFFFFFFFFFFFFFELL;
    height = (360 * height / v7 + 1) & 0xFFFFFFFFFFFFFFFELL;
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    *&buf[4] = width;
    LOWORD(v41) = 1024;
    *(&v41 + 2) = height;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Target Dimensions: %dx%d", buf, 0xEu);
  }

  v39 = 0;
  v8 = [(MADMovieBlastDoorAnalyzer *)self createPixelBufferPool:&v39];
  if (!v8)
  {
    pixelTransferSessionOut = 0;
    v8 = VTPixelTransferSessionCreate(0, &pixelTransferSessionOut);
    if (!v8)
    {
      *buf = 0;
      v41 = buf;
      v42 = 0x4812000000;
      v43 = __Block_byref_object_copy__350;
      v44 = __Block_byref_object_dispose__351;
      v45 = &unk_1CA01F5A2;
      v31 = 0;
      v32 = &v31;
      v33 = 0x3812000000;
      v34 = __Block_byref_object_copy__352;
      v35 = __Block_byref_object_dispose__353;
      v36 = &unk_1CA01F5A2;
      v37 = 0;
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0;
      v9 = dispatch_semaphore_create(0);
      aBlock = MEMORY[0x1E69E9820];
      v17 = 3321888768;
      v18 = __42__MADMovieBlastDoorAnalyzer_processVideo___block_invoke;
      v19 = &unk_1F4969D88;
      v22 = &v27;
      v10 = v9;
      v20 = v10;
      v25 = v39;
      if (v39)
      {
        CFRetain(v39);
      }

      v26 = pixelTransferSessionOut;
      if (pixelTransferSessionOut)
      {
        CFRetain(pixelTransferSessionOut);
      }

      selfCopy = self;
      v23 = &v31;
      v24 = buf;
      v11 = _Block_copy(&aBlock);
      LOBYTE(v15) = 1;
      [videoCopy generateMovieFramesForAttachmentWithFileURL:self->_movieURL targetPixelWidth:width targetPixelHeight:height frameLimit:-1 uniformSampling:0 framesPerSync:0 appliesPreferredTrackTransform:v15 resultHandler:{v11, aBlock, v17, v18, v19}];
      dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
      v12 = v32;
      v13 = v32[6];
      if (v13)
      {
        CFRelease(v13);
        v12[6] = 0;
      }

      v8 = *(v28 + 6);

      CF<__CVBuffer *>::~CF(&v26);
      CF<__CVBuffer *>::~CF(&v25);

      _Block_object_dispose(&v27, 8);
      _Block_object_dispose(&v31, 8);
      CF<__CVBuffer *>::~CF(&v37);
      _Block_object_dispose(buf, 8);
    }

    CF<__CVBuffer *>::~CF(&pixelTransferSessionOut);
  }

  CF<__CVBuffer *>::~CF(&v39);

  return v8;
}

void __42__MADMovieBlastDoorAnalyzer_processVideo___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (!*(*(*(a1 + 48) + 8) + 24))
  {
    if (!v7)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(range.start.value) = 138412290;
        *(&range.start.value + 4) = v8;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to obtain decoded frame from Blastdoor (%@)", &range, 0xCu);
      }

      *(*(*(a1 + 48) + 8) + 24) = -18;
      if (a4)
      {
        goto LABEL_18;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(range.start.value) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to obtain decoded frame from Blastdoor but decoding not finished yet", &range, 2u);
      }

      goto LABEL_19;
    }

    v13 = v7;
    v14 = [v13 image];
    v15 = [v14 pixelBuffer];

    if (!v15)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(range.start.value) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "CVPixelBuffer is missing from Blastdoor result", &range, 2u);
      }

      *(*(*(a1 + 48) + 8) + 24) = -18;

      goto LABEL_19;
    }

    pixelBufferOut = 0;
    if (CVPixelBufferPoolCreatePixelBuffer(0, *(a1 + 72), &pixelBufferOut) || VTPixelTransferSessionTransferImage(*(a1 + 80), v15, pixelBufferOut))
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LOWORD(range.start.value) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to convert pixel buffer to 420v", &range, 2u);
      }

      *(*(*(a1 + 48) + 8) + 24) = -18;
      CF<__CVBuffer *>::~CF(&pixelBufferOut);

      goto LABEL_19;
    }

    memset(&v23, 0, sizeof(v23));
    [v13 timestamp];
    CMTimeMakeWithSeconds(&v23, v16, *(*(a1 + 40) + 84));
    v17 = *(*(*(a1 + 56) + 8) + 48);
    if (v17)
    {
      v18 = *(a1 + 40);
      v19 = *(*(a1 + 64) + 8);
      v22 = v19[2];
      range.start = v23;
      rhs = v19[2];
      CMTimeSubtract(&v21, &range.start, &rhs);
      *(*(*(a1 + 48) + 8) + 24) = [v18 processFrame:v17 timestamp:&v22 duration:&v21];
    }

    v20 = pixelBufferOut;
    if (pixelBufferOut)
    {
      v20 = CFRetain(pixelBufferOut);
    }

    range.start.value = v20;
    CF<__CVBuffer *>::operator=((*(*(a1 + 56) + 8) + 48), &range);
    CF<__CVBuffer *>::~CF(&range);
    *(*(*(a1 + 64) + 8) + 48) = v23;
    CF<__CVBuffer *>::~CF(&pixelBufferOut);
  }

  if (a4)
  {
    if (!*(*(*(a1 + 48) + 8) + 24))
    {
      v9 = *(*(*(a1 + 56) + 8) + 48);
      if (v9)
      {
        v10 = *(a1 + 40);
        v23 = *(*(*(a1 + 64) + 8) + 48);
        *&range.start.value = *(v10 + 52);
        v11 = *(v10 + 84);
        *&range.start.epoch = *(v10 + 68);
        *&range.duration.timescale = v11;
        CMTimeRangeGetEnd(&v21, &range);
        v12 = *(*(a1 + 64) + 8);
        range.start = v21;
        rhs = v12[2];
        CMTimeSubtract(&v22, &range.start, &rhs);
        *(*(*(a1 + 48) + 8) + 24) = [v10 processFrame:v9 timestamp:&v23 duration:&v22];
      }
    }

LABEL_18:
    dispatch_semaphore_signal(*(a1 + 32));
  }

LABEL_19:
}

- (int)finalizeAnalyzers:(id)analyzers timeRange:(id *)range
{
  analyzersCopy = analyzers;
  sceneClassifier = self->_sceneClassifier;
  if (sceneClassifier)
  {
    v8 = *&range->var0.var3;
    v24 = *&range->var0.var0;
    v25 = v8;
    v26 = *&range->var1.var1;
    v9 = [(VCPVideoSceneClassifier *)sceneClassifier finishAnalysisPass:&v24];
    if (v9)
    {
      goto LABEL_17;
    }

    results = [(VCPVideoSceneClassifier *)self->_sceneClassifier results];
    [analyzersCopy addEntriesFromDictionary:results];
  }

  safetyClassifier = self->_safetyClassifier;
  if (safetyClassifier)
  {
    v12 = *&range->var0.var3;
    v24 = *&range->var0.var0;
    v25 = v12;
    v26 = *&range->var1.var1;
    v9 = [(MADVideoSafetyClassifier *)safetyClassifier finishAnalysisPass:&v24];
    if (v9)
    {
      goto LABEL_17;
    }

    results2 = [(MADVideoSafetyClassifier *)self->_safetyClassifier results];
    [analyzersCopy addEntriesFromDictionary:results2];
  }

  humanActionAnalyzer = self->_humanActionAnalyzer;
  if (humanActionAnalyzer)
  {
    v15 = *&range->var0.var3;
    v24 = *&range->var0.var0;
    v25 = v15;
    v26 = *&range->var1.var1;
    v9 = [(VCPVideoHumanActionAnalyzer *)humanActionAnalyzer finishAnalysisPass:&v24];
    if (v9)
    {
      goto LABEL_17;
    }

    results3 = [(VCPVideoHumanActionAnalyzer *)self->_humanActionAnalyzer results];
    [analyzersCopy addEntriesFromDictionary:results3];
  }

  videoAnalysis = self->_videoAnalysis;
  if (videoAnalysis)
  {
    v18 = *&range->var0.var3;
    v24 = *&range->var0.var0;
    v25 = v18;
    v26 = *&range->var1.var1;
    v9 = [(VCPFullVideoAnalyzer *)videoAnalysis finishAnalysisPass:&v24];
    if (v9)
    {
      goto LABEL_17;
    }

    results4 = [(VCPFullVideoAnalyzer *)self->_videoAnalysis results];
    [analyzersCopy addEntriesFromDictionary:results4];
  }

  videoCNNAnalyzer = self->_videoCNNAnalyzer;
  if (!videoCNNAnalyzer)
  {
LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  v21 = *&range->var0.var3;
  v24 = *&range->var0.var0;
  v25 = v21;
  v26 = *&range->var1.var1;
  v9 = [(VCPVideoCNNAnalyzer *)videoCNNAnalyzer finishAnalysisPass:&v24];
  if (!v9)
  {
    results5 = [(VCPVideoCNNAnalyzer *)self->_videoCNNAnalyzer results];
    [analyzersCopy addEntriesFromDictionary:results5];

    goto LABEL_16;
  }

LABEL_17:

  return v9;
}

- (id)analyzeAsset:(id *)asset
{
  v39[1] = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v6 = getIMMediaAnalysisBlastDoorInterfaceClass(void)::softClass;
  v31 = getIMMediaAnalysisBlastDoorInterfaceClass(void)::softClass;
  if (!getIMMediaAnalysisBlastDoorInterfaceClass(void)::softClass)
  {
    *&v25 = MEMORY[0x1E69E9820];
    *(&v25 + 1) = 3221225472;
    *&v26 = ___ZL41getIMMediaAnalysisBlastDoorInterfaceClassv_block_invoke;
    *(&v26 + 1) = &unk_1E834C0F0;
    *&v27 = &v28;
    ___ZL41getIMMediaAnalysisBlastDoorInterfaceClassv_block_invoke(&v25);
    v6 = v29[3];
  }

  v7 = v6;
  _Block_object_dispose(&v28, 8);
  v8 = objc_alloc_init(v6);
  if ([(MADMovieBlastDoorAnalyzer *)self queryVideoProperties:v8])
  {
    if (!asset)
    {
      goto LABEL_8;
    }

    v9 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A578];
    dictionary = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to query movie properties"];
    v39[0] = dictionary;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    *asset = [v9 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v11];

    goto LABEL_6;
  }

  v13 = [(MADMovieBlastDoorAnalyzer *)self processVideo:v8];
  v14 = v13;
  if (!v13)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v19 = *&self->_timeRange.start.flags;
    v25 = *(&self->_orientation + 1);
    v26 = v19;
    v27 = *(&self->_timeRange.duration.value + 4);
    if (![(MADMovieBlastDoorAnalyzer *)self finalizeAnalyzers:dictionary timeRange:&v25])
    {
      dictionary = dictionary;
      asset = dictionary;
      goto LABEL_7;
    }

    if (!asset)
    {
LABEL_7:

      goto LABEL_8;
    }

    v20 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to finalize video processing"];
    v33 = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    *asset = [v20 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v22];

LABEL_6:
    asset = 0;
    goto LABEL_7;
  }

  if (asset)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A768];
    if (v13 == -128)
    {
      v36 = *MEMORY[0x1E696A578];
      dictionary = [MEMORY[0x1E696AEC0] stringWithFormat:@"Video processing canceled"];
      v37 = dictionary;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v18 = [v15 errorWithDomain:v16 code:-128 userInfo:v17];
      *asset = v18;
    }

    else
    {
      v34 = *MEMORY[0x1E696A578];
      dictionary = [MEMORY[0x1E696AEC0] stringWithFormat:@"Video processing failed"];
      v35 = dictionary;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v24 = [v15 errorWithDomain:v16 code:v14 userInfo:v23];
      *asset = v24;
    }

    goto LABEL_6;
  }

LABEL_8:

  objc_autoreleasePoolPop(v5);

  return asset;
}

- ($AFC8CF76A46F37F9FB23C20884F4FD99)timeRange
{
  v3 = *(&self[1].var0.var3 + 4);
  *&retstr->var0.var0 = *(&self[1].var0.var0 + 4);
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var2;
  return self;
}

@end