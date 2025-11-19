@interface VEFrameSynthesizer
- (BOOL)checkForwardFlow:(__CVBuffer *)a3 backwardFlow:(__CVBuffer *)a4;
- (BOOL)configureSynthesisWithMode:(int64_t)a3;
- (VEFrameSynthesizer)initWithUsage:(int64_t)a3 qualityMode:(int64_t)a4 useLegacyNormalization:(BOOL)a5;
- (id)errorWithErrorCode:(int64_t)a3;
- (id)synthesizeFramesFromFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6 numberOfFrames:(unint64_t)a7 withError:(id *)a8;
- (id)synthesizeFramesFromFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)scaledForwardFlow backwardFlow:(__CVBuffer *)scaledBackwardFlow timeScales:(id)a7 withError:(id *)a8;
- (void)allocateResources;
- (void)allocateScaledFlow;
- (void)dealloc;
- (void)releaseResources;
- (void)releaseScaledFlow;
- (void)setFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6;
- (void)synthesizeFrameForTimeScale:(float)a3 destination:(__CVBuffer *)a4;
- (void)synthesizeFrameFromFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6 timeScale:(float)a7 destination:(__CVBuffer *)a8;
- (void)updateFlowSize;
@end

@implementation VEFrameSynthesizer

- (VEFrameSynthesizer)initWithUsage:(int64_t)a3 qualityMode:(int64_t)a4 useLegacyNormalization:(BOOL)a5
{
  v5 = a5;
  v35 = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = VEFrameSynthesizer;
  v8 = [(VEFrameSynthesizer *)&v28 init];
  if (!v8)
  {
LABEL_12:
    v20 = v8;
    goto LABEL_17;
  }

  if ((a3 & 0x1000) != 0)
  {
    v9 = a3 & 0xFFF;
  }

  else
  {
    v9 = a3;
  }

  v8->_usage = v9;
  v8->_inputRotation = (a3 & 0x1000) >> 11;
  getInputFrameSizeForUsage(v9, &v8->_width, &v8->_height);
  v10 = [ImageProcessor alloc];
  usage = v8->_usage;
  if (v5)
  {
    v12 = [(ImageProcessor *)v10 initLegacyModeWithUsage:usage];
  }

  else
  {
    v12 = [(ImageProcessor *)v10 initWithUsage:usage];
  }

  processor = v8->_processor;
  v8->_processor = v12;

  if ([(VEFrameSynthesizer *)v8 configureSynthesisWithMode:a4])
  {
    [(VEFrameSynthesizer *)v8 updateFlowSize];
    [(VEFrameSynthesizer *)v8 allocateResources];
    v8->_featureCreated = 0;
    *&v8->_streamingMode = 256;
    if ((global_logLevel & 4) != 0)
    {
      v14 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
      {
        width = v8->_width;
        height = v8->_height;
        synthesis = v8->_synthesis;
        v18 = v14;
        LODWORD(synthesis) = [(FrameSynthesis *)synthesis synthesisMode];
        v19 = [(FrameSynthesis *)v8->_synthesis temporalFiltering];
        *buf = 134219520;
        v30 = v8;
        v31 = 1024;
        *v32 = a3;
        *&v32[4] = 2048;
        *&v32[6] = width;
        *&v32[14] = 2048;
        *&v32[16] = height;
        *&v32[24] = 1024;
        *&v32[26] = a4;
        LOWORD(v33) = 1024;
        *(&v33 + 2) = synthesis;
        HIWORD(v33) = 1024;
        v34 = v19;
        _os_log_impl(&dword_24874B000, v18, OS_LOG_TYPE_INFO, "Initialized successfully (%p) [usage:%d (%ldx%ld), mode:%d, synthesis mode:%d, temporal filtering:%d].", buf, 0x38u);
      }
    }

    goto LABEL_12;
  }

  if ((global_logLevel & 0x10) != 0)
  {
    v21 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      v23 = v8->_width;
      v24 = v8->_height;
      v25 = v8->_synthesis;
      v26 = v21;
      v27 = [(FrameSynthesis *)v25 synthesisMode];
      *buf = 134219008;
      v30 = a3;
      v31 = 2048;
      *v32 = v23;
      *&v32[8] = 2048;
      *&v32[10] = v24;
      *&v32[18] = 2048;
      *&v32[20] = a4;
      *&v32[28] = 2048;
      v33 = v27;
      _os_log_error_impl(&dword_24874B000, v26, OS_LOG_TYPE_ERROR, "Initialization failed [usage:%ld (%ldx%ld), mode:%ld, synthesis mode:%ld].", buf, 0x34u);
    }
  }

  v20 = 0;
LABEL_17:

  return v20;
}

- (BOOL)configureSynthesisWithMode:(int64_t)a3
{
  v5 = objc_alloc_init(FrameSynthesis);
  synthesis = self->_synthesis;
  self->_synthesis = v5;

  if (a3 == 4)
  {
    [(FrameSynthesis *)self->_synthesis setSynthesisMode:3];
    [(FrameSynthesis *)self->_synthesis setTwoLayerFlowSplatting:1];
    [(FrameSynthesis *)self->_synthesis setUseFlowConsistencyMap:1];
  }

  else
  {
    if (a3 == 3)
    {
      v7 = self->_synthesis;
      v8 = 3;
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_8;
      }

      v7 = self->_synthesis;
      v8 = 2;
    }

    [(FrameSynthesis *)v7 setSynthesisMode:v8];
  }

LABEL_8:
  [(FrameSynthesis *)self->_synthesis setFramePipeline:1];
  usage = self->_usage;
  v9 = self->_synthesis;

  return [(FrameSynthesis *)v9 switchUsageTo:usage];
}

- (void)allocateResources
{
  if (!self->_resourcePreAllocated)
  {
    [(FrameSynthesis *)self->_synthesis allocateResources];
    self->_resourcePreAllocated = 1;
  }
}

- (void)releaseResources
{
  [(FrameSynthesis *)self->_synthesis releaseResources];
  [(VEFrameSynthesizer *)self releaseScaledFlow];
  self->_resourcePreAllocated = 0;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_featureCreated)
  {
    [(FrameSynthesis *)self->_synthesis releaseFeatures];
  }

  [(VEFrameSynthesizer *)self releaseResources];
  synthesis = self->_synthesis;
  self->_synthesis = 0;

  if ((global_logLevel & 4) != 0)
  {
    v4 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      usage = self->_usage;
      *buf = 134218240;
      v8 = self;
      v9 = 2048;
      v10 = usage;
      _os_log_impl(&dword_24874B000, v4, OS_LOG_TYPE_INFO, "Released (%p) [usage:%ld]", buf, 0x16u);
    }
  }

  v6.receiver = self;
  v6.super_class = VEFrameSynthesizer;
  [(VEFrameSynthesizer *)&v6 dealloc];
}

- (void)synthesizeFrameFromFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6 timeScale:(float)a7 destination:(__CVBuffer *)a8
{
  scaledBackwardFlow = a6;
  scaledForwardFlow = a5;
  if ([(VEFrameSynthesizer *)self checkForwardFlow:a5 backwardFlow:a6])
  {
    if (!self->_resourcePreAllocated)
    {
      [(FrameSynthesis *)self->_synthesis allocateResources];
    }

    [(ImageProcessor *)self->_processor preProcessFirstInput:a3 secondInput:a4 waitForCompletion:0];
    if (self->_inputFlowScaling)
    {
      [(FrameSynthesis *)self->_synthesis upscaleForwardFlow:scaledForwardFlow backwardFlow:scaledBackwardFlow upscaledForwardFlow:self->_scaledForwardFlow upscaledBackwardFlow:self->_scaledBackwardFlow];
      scaledForwardFlow = self->_scaledForwardFlow;
      scaledBackwardFlow = self->_scaledBackwardFlow;
    }

    [(FrameSynthesis *)self->_synthesis createFeaturesFromFirstImage:[(ImageProcessor *)self->_processor normalizedFirst] secondImage:[(ImageProcessor *)self->_processor normalizedSecond] flowForward:scaledForwardFlow flowBackward:scaledBackwardFlow];
    *&v15 = a7;
    v16 = [(FrameSynthesis *)self->_synthesis synthesizeFrameForTimeScale:0 frameIndex:v15];
    *&v17 = a7;
    [(ImageProcessor *)self->_processor postProcessNormalizedFrame:v16 output:a8 timeScale:1 waitForCompletion:v17];
    CVPixelBufferRelease(v16);
    [(FrameSynthesis *)self->_synthesis releaseFeatures];
    if (!self->_resourcePreAllocated)
    {
      [(FrameSynthesis *)self->_synthesis releaseResources];
    }

    self->_isFirstFrameInStream = 0;
  }
}

- (void)setFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6
{
  v23 = *MEMORY[0x277D85DE8];
  if ((global_logLevel & 4) != 0)
  {
    v11 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      v15 = 134218752;
      Width = CVPixelBufferGetWidth(a3);
      v17 = 2048;
      Height = CVPixelBufferGetHeight(a3);
      v19 = 2048;
      v20 = CVPixelBufferGetWidth(a5);
      v21 = 2048;
      v22 = CVPixelBufferGetHeight(a5);
      _os_log_impl(&dword_24874B000, v12, OS_LOG_TYPE_INFO, "New frame pair set: [frame size: %ldx %ld, flow Size : %ld x %ld]", &v15, 0x2Au);
    }
  }

  if (self->_featureCreated)
  {
    [(FrameSynthesis *)self->_synthesis releaseFeatures];
  }

  if (!self->_resourcePreAllocated)
  {
    [(FrameSynthesis *)self->_synthesis allocateResources];
  }

  [(ImageProcessor *)self->_processor setInputRotation:self->_inputRotation];
  processor = self->_processor;
  if ([(VEFrameSynthesizer *)self skipFirstFramePreProcessing])
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  [(ImageProcessor *)processor preProcessFirstInput:v14 secondInput:a4 waitForCompletion:0];
  [(FrameSynthesis *)self->_synthesis createFeaturesFromFirstImage:[(ImageProcessor *)self->_processor normalizedFirst] secondImage:[(ImageProcessor *)self->_processor normalizedSecond] flowForward:a5 flowBackward:a6 skipFirstFramePreProcessing:[(VEFrameSynthesizer *)self skipFirstFramePreProcessing]];
  self->_featureCreated = 1;
}

- (void)synthesizeFrameForTimeScale:(float)a3 destination:(__CVBuffer *)a4
{
  v14 = *MEMORY[0x277D85DE8];
  if ((global_logLevel & 4) != 0)
  {
    v7 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      v12 = 134217984;
      v13 = a3;
      _os_log_impl(&dword_24874B000, v7, OS_LOG_TYPE_INFO, "Synthesize frame [Time Scale: %.2f]", &v12, 0xCu);
    }
  }

  if (self->_featureCreated)
  {
    *&v8 = a3;
    v9 = [(FrameSynthesis *)self->_synthesis synthesizeFrameForTimeScale:0 frameIndex:v8];
    *&v10 = a3;
    [(ImageProcessor *)self->_processor postProcessNormalizedFrame:v9 output:a4 timeScale:1 waitForCompletion:v10];
    CVPixelBufferRelease(v9);
    self->_isFirstFrameInStream = 0;
  }

  else if ((global_logLevel & 0x10) != 0)
  {
    v11 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [VEFrameSynthesizer synthesizeFrameForTimeScale:v11 destination:?];
    }
  }
}

- (id)synthesizeFramesFromFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6 numberOfFrames:(unint64_t)a7 withError:(id *)a8
{
  v14 = uniformTimeScales(a7);
  v15 = [(VEFrameSynthesizer *)self synthesizeFramesFromFirstFrame:a3 secondFrame:a4 forwardFlow:a5 backwardFlow:a6 timeScales:v14 withError:a8];

  return v15;
}

- (id)synthesizeFramesFromFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)scaledForwardFlow backwardFlow:(__CVBuffer *)scaledBackwardFlow timeScales:(id)a7 withError:(id *)a8
{
  v14 = a7;
  if ([(VEFrameSynthesizer *)self checkForwardFlow:scaledForwardFlow backwardFlow:scaledBackwardFlow])
  {
    if (!self->_resourcePreAllocated)
    {
      [(FrameSynthesis *)self->_synthesis allocateResources];
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    if (self->_inputFlowScaling)
    {
      [(FrameSynthesis *)self->_synthesis upscaleForwardFlow:scaledForwardFlow backwardFlow:scaledBackwardFlow upscaledForwardFlow:self->_scaledForwardFlow upscaledBackwardFlow:self->_scaledBackwardFlow];
      scaledForwardFlow = self->_scaledForwardFlow;
      scaledBackwardFlow = self->_scaledBackwardFlow;
    }

    [(ImageProcessor *)self->_processor preProcessFirstInput:a3 secondInput:a4 waitForCompletion:0];
    [(FrameSynthesis *)self->_synthesis createFeaturesFromFirstImage:[(ImageProcessor *)self->_processor normalizedFirst] secondImage:[(ImageProcessor *)self->_processor normalizedSecond] flowForward:scaledForwardFlow flowBackward:scaledBackwardFlow];
    v16 = [v14 count];
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v16)
    {
      v18 = v16;
      v19 = 0;
      v36 = v16 - 1;
      v35 = *MEMORY[0x277CC08F0];
      v20 = *(MEMORY[0x277CC08F0] + 16);
      do
      {
        v21 = [v14 objectAtIndexedSubscript:{v19, v35}];
        [v21 floatValue];
        v23 = v22;

        LODWORD(v24) = v23;
        v25 = v14;
        v26 = [(FrameSynthesis *)self->_synthesis synthesizeFrameForTimeScale:v19 frameIndex:v24];
        v27 = PixelFormatType;
        PixelBuffer = CreatePixelBuffer(self->_width, self->_height, PixelFormatType);
        LODWORD(v29) = v23;
        [(ImageProcessor *)self->_processor postProcessNormalizedFrame:v26 output:PixelBuffer timeScale:v36 == v19 waitForCompletion:v29];
        v30 = v26;
        v14 = v25;
        CVPixelBufferRelease(v30);
        v31 = [OFFrame alloc];
        v37 = v35;
        v38 = v20;
        v32 = [(OFFrame *)v31 initWithBuffer:PixelBuffer presentationTimeStamp:&v37];
        v33 = PixelBuffer;
        PixelFormatType = v27;
        CVPixelBufferRelease(v33);
        [v17 addObject:v32];

        ++v19;
      }

      while (v18 != v19);
    }

    [(FrameSynthesis *)self->_synthesis releaseFeatures];
    if (!self->_resourcePreAllocated)
    {
      [(FrameSynthesis *)self->_synthesis releaseResources];
    }

    self->_isFirstFrameInStream = 0;
  }

  else if (a8)
  {
    [(VEFrameSynthesizer *)self errorWithErrorCode:-22008];
    *a8 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)checkForwardFlow:(__CVBuffer *)a3 backwardFlow:(__CVBuffer *)a4
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v8 = CVPixelBufferGetPixelFormatType(a4);
  if ((PixelFormatType != 1278226536 || v8 != 1278226536) && (PixelFormatType != 843264104 || v8 != 843264104))
  {
    if ((global_logLevel & 0x10) != 0)
    {
      v19 = global_logger;
      v12 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
      if (!v12)
      {
        return v12;
      }

      [VEFrameSynthesizer checkForwardFlow:v19 backwardFlow:?];
    }

    goto LABEL_30;
  }

  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  if (Width != self->_flowWidth >> 1 || ((flowHeight = self->_flowHeight, PixelFormatType != 1278226536) || Height != flowHeight) && (Height != flowHeight >> 1 || PixelFormatType != 843264104))
  {
    p_width = &self->_width;
    if (Width == self->_width >> 1 && ((p_height = &self->_height, v14 = self->_height, PixelFormatType == 1278226536) && Height == v14 || Height == v14 >> 1 && PixelFormatType == 843264104))
    {
      v16 = CVPixelBufferGetWidth(a4);
      v17 = CVPixelBufferGetHeight(a4);
      if (v16 == *p_width >> 1)
      {
        v18 = *p_height;
        if (PixelFormatType == 1278226536 && v17 == v18)
        {
          goto LABEL_22;
        }

        if (v17 == v18 >> 1 && PixelFormatType == 843264104)
        {
          goto LABEL_22;
        }
      }

      if ((global_logLevel & 0x10) != 0)
      {
        v12 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
        if (!v12)
        {
          return v12;
        }

        [VEFrameSynthesizer checkForwardFlow:backwardFlow:];
      }
    }

    else if ((global_logLevel & 0x10) != 0)
    {
      v12 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
      if (!v12)
      {
        return v12;
      }

      [VEFrameSynthesizer checkForwardFlow:backwardFlow:];
    }

LABEL_30:
    LOBYTE(v12) = 0;
    return v12;
  }

  LOBYTE(v12) = 1;
  self->_inputFlowScaling = 1;
  if (self->_scaledFlowBufferAllocated)
  {
    return v12;
  }

  [(VEFrameSynthesizer *)self allocateScaledFlow];
LABEL_22:
  LOBYTE(v12) = 1;
  return v12;
}

- (id)errorWithErrorCode:(int64_t)a3
{
  if (a3 == -22008)
  {
    v4 = @"Incorrect optical flow buffers.";
  }

  else
  {
    v4 = @"Unknown error.";
  }

  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v4 forKey:*MEMORY[0x277CCA450]];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.FRC" code:a3 userInfo:v5];

  return v6;
}

- (void)updateFlowSize
{
  usage = self->_usage;
  if (getNumberOfPixelsForUsage(usage) >> 10 <= 0x7E8)
  {
    p_flowWidth = &self->_flowWidth;
    p_flowHeight = &self->_flowHeight;
    getInputFrameSizeForUsage(usage, p_flowWidth->i64, p_flowHeight);
    goto LABEL_6;
  }

  QuarterSizeUsage = getQuarterSizeUsage(self->_usage);
  if ([VEOpticalFlow use4xDownScale:self->_usage])
  {
    v5 = getQuarterSizeUsage(QuarterSizeUsage);
    p_flowWidth = &self->_flowWidth;
    p_flowHeight = &self->_flowHeight;
    getInputFrameSizeForUsage(v5, p_flowWidth->i64, p_flowHeight);
    if (v5 != usage)
    {
      *p_flowWidth = vaddq_s64(*p_flowWidth, *p_flowWidth);
      return;
    }

    goto LABEL_6;
  }

  p_flowWidth = &self->_flowWidth;
  p_flowHeight = &self->_flowHeight;
  getInputFrameSizeForUsage(QuarterSizeUsage, p_flowWidth->i64, p_flowHeight);
  if (QuarterSizeUsage == usage)
  {
LABEL_6:
    p_flowWidth->i64[0] = p_flowWidth->i64[0] >> 1;
    *p_flowHeight = *p_flowHeight >> 1;
  }
}

- (void)allocateScaledFlow
{
  if (!self->_scaledForwardFlow)
  {
    self->_scaledForwardFlow = CreatePixelBuffer(self->_flowWidth, self->_flowHeight, 843264104);
  }

  if (!self->_scaledBackwardFlow)
  {
    self->_scaledBackwardFlow = CreatePixelBuffer(self->_flowWidth, self->_flowHeight, 843264104);
  }

  self->_scaledFlowBufferAllocated = 1;
}

- (void)releaseScaledFlow
{
  scaledForwardFlow = self->_scaledForwardFlow;
  if (scaledForwardFlow)
  {
    CVPixelBufferRelease(scaledForwardFlow);
    self->_scaledForwardFlow = 0;
  }

  scaledBackwardFlow = self->_scaledBackwardFlow;
  if (scaledBackwardFlow)
  {
    CVPixelBufferRelease(scaledBackwardFlow);
    self->_scaledBackwardFlow = 0;
  }

  self->_scaledFlowBufferAllocated = 0;
}

@end