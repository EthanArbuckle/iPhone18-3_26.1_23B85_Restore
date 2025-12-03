@interface VEFrameSynthesizer
- (BOOL)checkForwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow;
- (BOOL)configureSynthesisWithMode:(int64_t)mode;
- (VEFrameSynthesizer)initWithUsage:(int64_t)usage qualityMode:(int64_t)mode useLegacyNormalization:(BOOL)normalization;
- (id)errorWithErrorCode:(int64_t)code;
- (id)synthesizeFramesFromFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow numberOfFrames:(unint64_t)frames withError:(id *)error;
- (id)synthesizeFramesFromFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame forwardFlow:(__CVBuffer *)scaledForwardFlow backwardFlow:(__CVBuffer *)scaledBackwardFlow timeScales:(id)scales withError:(id *)error;
- (void)allocateResources;
- (void)allocateScaledFlow;
- (void)dealloc;
- (void)releaseResources;
- (void)releaseScaledFlow;
- (void)setFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow;
- (void)synthesizeFrameForTimeScale:(float)scale destination:(__CVBuffer *)destination;
- (void)synthesizeFrameFromFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow timeScale:(float)scale destination:(__CVBuffer *)destination;
- (void)updateFlowSize;
@end

@implementation VEFrameSynthesizer

- (VEFrameSynthesizer)initWithUsage:(int64_t)usage qualityMode:(int64_t)mode useLegacyNormalization:(BOOL)normalization
{
  normalizationCopy = normalization;
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

  if ((usage & 0x1000) != 0)
  {
    usageCopy = usage & 0xFFF;
  }

  else
  {
    usageCopy = usage;
  }

  v8->_usage = usageCopy;
  v8->_inputRotation = (usage & 0x1000) >> 11;
  getInputFrameSizeForUsage(usageCopy, &v8->_width, &v8->_height);
  v10 = [ImageProcessor alloc];
  usage = v8->_usage;
  if (normalizationCopy)
  {
    v12 = [(ImageProcessor *)v10 initLegacyModeWithUsage:usage];
  }

  else
  {
    v12 = [(ImageProcessor *)v10 initWithUsage:usage];
  }

  processor = v8->_processor;
  v8->_processor = v12;

  if ([(VEFrameSynthesizer *)v8 configureSynthesisWithMode:mode])
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
        temporalFiltering = [(FrameSynthesis *)v8->_synthesis temporalFiltering];
        *buf = 134219520;
        usageCopy2 = v8;
        v31 = 1024;
        *v32 = usage;
        *&v32[4] = 2048;
        *&v32[6] = width;
        *&v32[14] = 2048;
        *&v32[16] = height;
        *&v32[24] = 1024;
        *&v32[26] = mode;
        LOWORD(v33) = 1024;
        *(&v33 + 2) = synthesis;
        HIWORD(v33) = 1024;
        v34 = temporalFiltering;
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
      synthesisMode = [(FrameSynthesis *)v25 synthesisMode];
      *buf = 134219008;
      usageCopy2 = usage;
      v31 = 2048;
      *v32 = v23;
      *&v32[8] = 2048;
      *&v32[10] = v24;
      *&v32[18] = 2048;
      *&v32[20] = mode;
      *&v32[28] = 2048;
      v33 = synthesisMode;
      _os_log_error_impl(&dword_24874B000, v26, OS_LOG_TYPE_ERROR, "Initialization failed [usage:%ld (%ldx%ld), mode:%ld, synthesis mode:%ld].", buf, 0x34u);
    }
  }

  v20 = 0;
LABEL_17:

  return v20;
}

- (BOOL)configureSynthesisWithMode:(int64_t)mode
{
  v5 = objc_alloc_init(FrameSynthesis);
  synthesis = self->_synthesis;
  self->_synthesis = v5;

  if (mode == 4)
  {
    [(FrameSynthesis *)self->_synthesis setSynthesisMode:3];
    [(FrameSynthesis *)self->_synthesis setTwoLayerFlowSplatting:1];
    [(FrameSynthesis *)self->_synthesis setUseFlowConsistencyMap:1];
  }

  else
  {
    if (mode == 3)
    {
      v7 = self->_synthesis;
      v8 = 3;
    }

    else
    {
      if (mode != 2)
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
      selfCopy = self;
      v9 = 2048;
      v10 = usage;
      _os_log_impl(&dword_24874B000, v4, OS_LOG_TYPE_INFO, "Released (%p) [usage:%ld]", buf, 0x16u);
    }
  }

  v6.receiver = self;
  v6.super_class = VEFrameSynthesizer;
  [(VEFrameSynthesizer *)&v6 dealloc];
}

- (void)synthesizeFrameFromFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow timeScale:(float)scale destination:(__CVBuffer *)destination
{
  scaledBackwardFlow = backwardFlow;
  scaledForwardFlow = flow;
  if ([(VEFrameSynthesizer *)self checkForwardFlow:flow backwardFlow:backwardFlow])
  {
    if (!self->_resourcePreAllocated)
    {
      [(FrameSynthesis *)self->_synthesis allocateResources];
    }

    [(ImageProcessor *)self->_processor preProcessFirstInput:frame secondInput:secondFrame waitForCompletion:0];
    if (self->_inputFlowScaling)
    {
      [(FrameSynthesis *)self->_synthesis upscaleForwardFlow:scaledForwardFlow backwardFlow:scaledBackwardFlow upscaledForwardFlow:self->_scaledForwardFlow upscaledBackwardFlow:self->_scaledBackwardFlow];
      scaledForwardFlow = self->_scaledForwardFlow;
      scaledBackwardFlow = self->_scaledBackwardFlow;
    }

    [(FrameSynthesis *)self->_synthesis createFeaturesFromFirstImage:[(ImageProcessor *)self->_processor normalizedFirst] secondImage:[(ImageProcessor *)self->_processor normalizedSecond] flowForward:scaledForwardFlow flowBackward:scaledBackwardFlow];
    *&v15 = scale;
    v16 = [(FrameSynthesis *)self->_synthesis synthesizeFrameForTimeScale:0 frameIndex:v15];
    *&v17 = scale;
    [(ImageProcessor *)self->_processor postProcessNormalizedFrame:v16 output:destination timeScale:1 waitForCompletion:v17];
    CVPixelBufferRelease(v16);
    [(FrameSynthesis *)self->_synthesis releaseFeatures];
    if (!self->_resourcePreAllocated)
    {
      [(FrameSynthesis *)self->_synthesis releaseResources];
    }

    self->_isFirstFrameInStream = 0;
  }
}

- (void)setFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow
{
  v23 = *MEMORY[0x277D85DE8];
  if ((global_logLevel & 4) != 0)
  {
    v11 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      v15 = 134218752;
      Width = CVPixelBufferGetWidth(frame);
      v17 = 2048;
      Height = CVPixelBufferGetHeight(frame);
      v19 = 2048;
      v20 = CVPixelBufferGetWidth(flow);
      v21 = 2048;
      v22 = CVPixelBufferGetHeight(flow);
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
    frameCopy = 0;
  }

  else
  {
    frameCopy = frame;
  }

  [(ImageProcessor *)processor preProcessFirstInput:frameCopy secondInput:secondFrame waitForCompletion:0];
  [(FrameSynthesis *)self->_synthesis createFeaturesFromFirstImage:[(ImageProcessor *)self->_processor normalizedFirst] secondImage:[(ImageProcessor *)self->_processor normalizedSecond] flowForward:flow flowBackward:backwardFlow skipFirstFramePreProcessing:[(VEFrameSynthesizer *)self skipFirstFramePreProcessing]];
  self->_featureCreated = 1;
}

- (void)synthesizeFrameForTimeScale:(float)scale destination:(__CVBuffer *)destination
{
  v14 = *MEMORY[0x277D85DE8];
  if ((global_logLevel & 4) != 0)
  {
    v7 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      v12 = 134217984;
      scaleCopy = scale;
      _os_log_impl(&dword_24874B000, v7, OS_LOG_TYPE_INFO, "Synthesize frame [Time Scale: %.2f]", &v12, 0xCu);
    }
  }

  if (self->_featureCreated)
  {
    *&v8 = scale;
    v9 = [(FrameSynthesis *)self->_synthesis synthesizeFrameForTimeScale:0 frameIndex:v8];
    *&v10 = scale;
    [(ImageProcessor *)self->_processor postProcessNormalizedFrame:v9 output:destination timeScale:1 waitForCompletion:v10];
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

- (id)synthesizeFramesFromFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow numberOfFrames:(unint64_t)frames withError:(id *)error
{
  v14 = uniformTimeScales(frames);
  v15 = [(VEFrameSynthesizer *)self synthesizeFramesFromFirstFrame:frame secondFrame:secondFrame forwardFlow:flow backwardFlow:backwardFlow timeScales:v14 withError:error];

  return v15;
}

- (id)synthesizeFramesFromFirstFrame:(__CVBuffer *)frame secondFrame:(__CVBuffer *)secondFrame forwardFlow:(__CVBuffer *)scaledForwardFlow backwardFlow:(__CVBuffer *)scaledBackwardFlow timeScales:(id)scales withError:(id *)error
{
  scalesCopy = scales;
  if ([(VEFrameSynthesizer *)self checkForwardFlow:scaledForwardFlow backwardFlow:scaledBackwardFlow])
  {
    if (!self->_resourcePreAllocated)
    {
      [(FrameSynthesis *)self->_synthesis allocateResources];
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(frame);
    if (self->_inputFlowScaling)
    {
      [(FrameSynthesis *)self->_synthesis upscaleForwardFlow:scaledForwardFlow backwardFlow:scaledBackwardFlow upscaledForwardFlow:self->_scaledForwardFlow upscaledBackwardFlow:self->_scaledBackwardFlow];
      scaledForwardFlow = self->_scaledForwardFlow;
      scaledBackwardFlow = self->_scaledBackwardFlow;
    }

    [(ImageProcessor *)self->_processor preProcessFirstInput:frame secondInput:secondFrame waitForCompletion:0];
    [(FrameSynthesis *)self->_synthesis createFeaturesFromFirstImage:[(ImageProcessor *)self->_processor normalizedFirst] secondImage:[(ImageProcessor *)self->_processor normalizedSecond] flowForward:scaledForwardFlow flowBackward:scaledBackwardFlow];
    v16 = [scalesCopy count];
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
        v21 = [scalesCopy objectAtIndexedSubscript:{v19, v35}];
        [v21 floatValue];
        v23 = v22;

        LODWORD(v24) = v23;
        v25 = scalesCopy;
        v26 = [(FrameSynthesis *)self->_synthesis synthesizeFrameForTimeScale:v19 frameIndex:v24];
        v27 = PixelFormatType;
        PixelBuffer = CreatePixelBuffer(self->_width, self->_height, PixelFormatType);
        LODWORD(v29) = v23;
        [(ImageProcessor *)self->_processor postProcessNormalizedFrame:v26 output:PixelBuffer timeScale:v36 == v19 waitForCompletion:v29];
        v30 = v26;
        scalesCopy = v25;
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

  else if (error)
  {
    [(VEFrameSynthesizer *)self errorWithErrorCode:-22008];
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)checkForwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(flow);
  v8 = CVPixelBufferGetPixelFormatType(backwardFlow);
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

  Width = CVPixelBufferGetWidth(flow);
  Height = CVPixelBufferGetHeight(flow);
  if (Width != self->_flowWidth >> 1 || ((flowHeight = self->_flowHeight, PixelFormatType != 1278226536) || Height != flowHeight) && (Height != flowHeight >> 1 || PixelFormatType != 843264104))
  {
    p_width = &self->_width;
    if (Width == self->_width >> 1 && ((p_height = &self->_height, v14 = self->_height, PixelFormatType == 1278226536) && Height == v14 || Height == v14 >> 1 && PixelFormatType == 843264104))
    {
      v16 = CVPixelBufferGetWidth(backwardFlow);
      v17 = CVPixelBufferGetHeight(backwardFlow);
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

- (id)errorWithErrorCode:(int64_t)code
{
  if (code == -22008)
  {
    v4 = @"Incorrect optical flow buffers.";
  }

  else
  {
    v4 = @"Unknown error.";
  }

  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v4 forKey:*MEMORY[0x277CCA450]];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.FRC" code:code userInfo:v5];

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