@interface FRCFrameSynthesizer
- (BOOL)checkForwardFlow:(__CVBuffer *)a3 backwardFlow:(__CVBuffer *)a4;
- (BOOL)configureSynthesisWithMode:(int64_t)a3;
- (FRCFrameSynthesizer)initWithUsage:(int64_t)a3 qualityMode:(int64_t)a4 useLegacyNormalization:(BOOL)a5;
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

@implementation FRCFrameSynthesizer

- (FRCFrameSynthesizer)initWithUsage:(int64_t)a3 qualityMode:(int64_t)a4 useLegacyNormalization:(BOOL)a5
{
  v5 = a5;
  v38 = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = FRCFrameSynthesizer;
  v8 = [(FRCFrameSynthesizer *)&v31 init];
  if (!v8)
  {
LABEL_11:
    v22 = v8;
    goto LABEL_15;
  }

  v9 = os_log_create("com.apple.FRC", "FRCFrameSynthesizer");
  logger = v8->_logger;
  v8->_logger = v9;

  if ((a3 & 0x1000) != 0)
  {
    v11 = a3 & 0xFFF;
  }

  else
  {
    v11 = a3;
  }

  v8->_usage = v11;
  v8->_inputRotation = (a3 & 0x1000) >> 11;
  FRCGetInputFrameSizeForUsage(v11, &v8->_width, &v8->_height);
  v12 = [FRCImageProcessor alloc];
  usage = v8->_usage;
  if (v5)
  {
    v14 = [(FRCImageProcessor *)v12 initLegacyModeWithUsage:usage];
  }

  else
  {
    v14 = [(FRCImageProcessor *)v12 initWithUsage:usage];
  }

  processor = v8->_processor;
  v8->_processor = v14;

  if ([(FRCFrameSynthesizer *)v8 configureSynthesisWithMode:a4])
  {
    [(FRCFrameSynthesizer *)v8 updateFlowSize];
    [(FRCFrameSynthesizer *)v8 allocateResources];
    v16 = v8->_logger;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      width = v8->_width;
      height = v8->_height;
      synthesis = v8->_synthesis;
      v20 = v16;
      LODWORD(synthesis) = [(Synthesis *)synthesis synthesisMode];
      v21 = [(Synthesis *)v8->_synthesis temporalFiltering];
      *buf = 134219520;
      v33 = v8;
      v34 = 1024;
      *v35 = a3;
      *&v35[4] = 2048;
      *&v35[6] = width;
      *&v35[14] = 2048;
      *&v35[16] = height;
      *&v35[24] = 1024;
      *&v35[26] = a4;
      LOWORD(v36) = 1024;
      *(&v36 + 2) = synthesis;
      HIWORD(v36) = 1024;
      v37 = v21;
      _os_log_impl(&dword_24A8C8000, v20, OS_LOG_TYPE_DEFAULT, "Initialized successfully (%p) [usage:%d (%ldx%ld), mode:%d, synthesis mode:%d, temporal filtering:%d].", buf, 0x38u);
    }

    goto LABEL_11;
  }

  v23 = v8->_logger;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v26 = v8->_width;
    v27 = v8->_height;
    v28 = v8->_synthesis;
    v29 = v23;
    v30 = [(Synthesis *)v28 synthesisMode];
    *buf = 134219008;
    v33 = a3;
    v34 = 2048;
    *v35 = v26;
    *&v35[8] = 2048;
    *&v35[10] = v27;
    *&v35[18] = 2048;
    *&v35[20] = a4;
    *&v35[28] = 2048;
    v36 = v30;
    _os_log_error_impl(&dword_24A8C8000, v29, OS_LOG_TYPE_ERROR, "Initialization failed [usage:%ld (%ldx%ld), mode:%ld, synthesis mode:%ld].", buf, 0x34u);
  }

  v22 = 0;
LABEL_15:

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)configureSynthesisWithMode:(int64_t)a3
{
  v5 = objc_alloc_init(Synthesis);
  synthesis = self->_synthesis;
  self->_synthesis = v5;

  if (FRCGetNumberOfPixelsForUsage(self->_usage) > 0x7E8FFF && a3 == 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = a3;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v9 = self->_synthesis;
      v10 = 2;
    }

    else
    {
      if (v8 != 3)
      {
        if (v8 == 4)
        {
          [(Synthesis *)self->_synthesis setSynthesisMode:3];
          [(Synthesis *)self->_synthesis setTwoLayerFlowSplatting:1];
          [(Synthesis *)self->_synthesis setUseFlowConsistencyMap:1];
        }

        goto LABEL_19;
      }

      v9 = self->_synthesis;
      v10 = 3;
    }

LABEL_18:
    [(Synthesis *)v9 setSynthesisMode:v10];
    goto LABEL_19;
  }

  if (!v8)
  {
    v9 = self->_synthesis;
    v10 = 0;
    goto LABEL_18;
  }

  if (v8 == 1)
  {
    [(Synthesis *)self->_synthesis setSynthesisMode:FRCGetNumberOfPixelsForUsage(self->_usage) > 0xE0FFF];
    [(Synthesis *)self->_synthesis setTemporalFiltering:1];
  }

LABEL_19:
  [(Synthesis *)self->_synthesis setFramePipeline:1];
  usage = self->_usage;
  v11 = self->_synthesis;

  return [(Synthesis *)v11 switchUsageTo:usage];
}

- (void)allocateResources
{
  if (!self->_resourcePreAllocated)
  {
    [(Synthesis *)self->_synthesis allocateResources];
    self->_resourcePreAllocated = 1;
  }
}

- (void)releaseResources
{
  [(Synthesis *)self->_synthesis releaseResources];
  [(FRCFrameSynthesizer *)self releaseScaledFlow];
  self->_resourcePreAllocated = 0;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_featureCreated)
  {
    [(Synthesis *)self->_synthesis releaseFeatures];
  }

  [(FRCFrameSynthesizer *)self releaseResources];
  synthesis = self->_synthesis;
  self->_synthesis = 0;

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    usage = self->_usage;
    *buf = 134218240;
    v9 = self;
    v10 = 2048;
    v11 = usage;
    _os_log_impl(&dword_24A8C8000, logger, OS_LOG_TYPE_DEFAULT, "Released (%p) [usage:%ld]", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = FRCFrameSynthesizer;
  [(FRCFrameSynthesizer *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)synthesizeFrameFromFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6 timeScale:(float)a7 destination:(__CVBuffer *)a8
{
  scaledBackwardFlow = a6;
  scaledForwardFlow = a5;
  if ([(FRCFrameSynthesizer *)self checkForwardFlow:a5 backwardFlow:a6])
  {
    if (!self->_resourcePreAllocated)
    {
      [(Synthesis *)self->_synthesis allocateResources];
    }

    [(FRCImageProcessor *)self->_processor preProcessFirstInput:a3 secondInput:a4 waitForCompletion:0];
    if (self->_inputFlowScaling)
    {
      [(Synthesis *)self->_synthesis upscaleForwardFlow:scaledForwardFlow backwardFlow:scaledBackwardFlow upscaledForwardFlow:self->_scaledForwardFlow upscaledBackwardFlow:self->_scaledBackwardFlow];
      scaledForwardFlow = self->_scaledForwardFlow;
      scaledBackwardFlow = self->_scaledBackwardFlow;
    }

    [(Synthesis *)self->_synthesis createFeaturesFromFirstImage:[(FRCImageProcessor *)self->_processor normalizedFirst] secondImage:[(FRCImageProcessor *)self->_processor normalizedSecond] flowForward:scaledForwardFlow flowBackward:scaledBackwardFlow];
    *&v15 = a7;
    v16 = [(Synthesis *)self->_synthesis synthesizeFrameForTimeScale:0 frameIndex:v15];
    *&v17 = a7;
    [(FRCImageProcessor *)self->_processor postProcessNormalizedFrame:v16 output:a8 timeScale:1 waitForCompletion:v17];
    CVPixelBufferRelease(v16);
    [(Synthesis *)self->_synthesis releaseFeatures];
    if (!self->_resourcePreAllocated)
    {
      synthesis = self->_synthesis;

      [(Synthesis *)synthesis releaseResources];
    }
  }
}

- (void)setFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6
{
  v22 = *MEMORY[0x277D85DE8];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v12 = logger;
    v14 = 134218752;
    Width = CVPixelBufferGetWidth(a3);
    v16 = 2048;
    Height = CVPixelBufferGetHeight(a3);
    v18 = 2048;
    v19 = CVPixelBufferGetWidth(a5);
    v20 = 2048;
    v21 = CVPixelBufferGetHeight(a5);
    _os_log_impl(&dword_24A8C8000, v12, OS_LOG_TYPE_DEFAULT, "New frame pair set: [frame size: %ldx %ld, flow Size : %ld x %ld]", &v14, 0x2Au);
  }

  if (self->_featureCreated)
  {
    [(Synthesis *)self->_synthesis releaseFeatures];
  }

  if (!self->_resourcePreAllocated)
  {
    [(Synthesis *)self->_synthesis allocateResources];
  }

  [(FRCImageProcessor *)self->_processor setInputRotation:self->_inputRotation];
  [(FRCImageProcessor *)self->_processor preProcessFirstInput:a3 secondInput:a4 waitForCompletion:0];
  [(Synthesis *)self->_synthesis createFeaturesFromFirstImage:[(FRCImageProcessor *)self->_processor normalizedFirst] secondImage:[(FRCImageProcessor *)self->_processor normalizedSecond] flowForward:a5 flowBackward:a6];
  self->_featureCreated = 1;
  v13 = *MEMORY[0x277D85DE8];
}

- (void)synthesizeFrameForTimeScale:(float)a3 destination:(__CVBuffer *)a4
{
  v14 = *MEMORY[0x277D85DE8];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = a3;
    _os_log_impl(&dword_24A8C8000, logger, OS_LOG_TYPE_DEFAULT, "Synthesize frame [Time Scale: %.2f]", &v12, 0xCu);
  }

  if (self->_featureCreated)
  {
    *&v8 = a3;
    v9 = [(Synthesis *)self->_synthesis synthesizeFrameForTimeScale:0 frameIndex:v8];
    *&v10 = a3;
    [(FRCImageProcessor *)self->_processor postProcessNormalizedFrame:v9 output:a4 timeScale:1 waitForCompletion:v10];
    CVPixelBufferRelease(v9);
  }

  else
  {
    NSLog(&cfstr_ErrorNeedToSet.isa);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)synthesizeFramesFromFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6 numberOfFrames:(unint64_t)a7 withError:(id *)a8
{
  v14 = uniformTimeScales(a7);
  v15 = [(FRCFrameSynthesizer *)self synthesizeFramesFromFirstFrame:a3 secondFrame:a4 forwardFlow:a5 backwardFlow:a6 timeScales:v14 withError:a8];

  return v15;
}

- (id)synthesizeFramesFromFirstFrame:(__CVBuffer *)a3 secondFrame:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)scaledForwardFlow backwardFlow:(__CVBuffer *)scaledBackwardFlow timeScales:(id)a7 withError:(id *)a8
{
  v14 = a7;
  if ([(FRCFrameSynthesizer *)self checkForwardFlow:scaledForwardFlow backwardFlow:scaledBackwardFlow])
  {
    if (!self->_resourcePreAllocated)
    {
      [(Synthesis *)self->_synthesis allocateResources];
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    if (self->_inputFlowScaling)
    {
      [(Synthesis *)self->_synthesis upscaleForwardFlow:scaledForwardFlow backwardFlow:scaledBackwardFlow upscaledForwardFlow:self->_scaledForwardFlow upscaledBackwardFlow:self->_scaledBackwardFlow];
      scaledForwardFlow = self->_scaledForwardFlow;
      scaledBackwardFlow = self->_scaledBackwardFlow;
    }

    [(FRCImageProcessor *)self->_processor preProcessFirstInput:a3 secondInput:a4 waitForCompletion:0];
    [(Synthesis *)self->_synthesis createFeaturesFromFirstImage:[(FRCImageProcessor *)self->_processor normalizedFirst] secondImage:[(FRCImageProcessor *)self->_processor normalizedSecond] flowForward:scaledForwardFlow flowBackward:scaledBackwardFlow];
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
        v26 = [(Synthesis *)self->_synthesis synthesizeFrameForTimeScale:v19 frameIndex:v24];
        v27 = PixelFormatType;
        PixelBuffer = createPixelBuffer(self->_width, self->_height, PixelFormatType, 0);
        LODWORD(v29) = v23;
        [(FRCImageProcessor *)self->_processor postProcessNormalizedFrame:v26 output:PixelBuffer timeScale:v36 == v19 waitForCompletion:v29];
        v30 = v26;
        v14 = v25;
        CVPixelBufferRelease(v30);
        v31 = [FRCFrame alloc];
        v37 = v35;
        v38 = v20;
        v32 = [(FRCFrame *)v31 initWithBuffer:PixelBuffer presentationTimeStamp:&v37];
        v33 = PixelBuffer;
        PixelFormatType = v27;
        CVPixelBufferRelease(v33);
        [v17 addObject:v32];

        ++v19;
      }

      while (v18 != v19);
    }

    [(Synthesis *)self->_synthesis releaseFeatures];
    if (!self->_resourcePreAllocated)
    {
      [(Synthesis *)self->_synthesis releaseResources];
    }
  }

  else if (a8)
  {
    [(FRCFrameSynthesizer *)self errorWithErrorCode:-22008];
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
  if (PixelFormatType == 1278226536 && v8 == 1278226536)
  {
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    if (Width == self->_flowWidth >> 1 && Height == self->_flowHeight)
    {
      result = 1;
      self->_inputFlowScaling = 1;
      if (self->_scaledFlowBufferAllocated)
      {
        return result;
      }

      [(FRCFrameSynthesizer *)self allocateScaledFlow];
      return 1;
    }

    v13 = self->_width;
    v12 = self->_height;
    if (Width == v13 >> 1 && Height == v12)
    {
      v14 = CVPixelBufferGetWidth(a4);
      v15 = CVPixelBufferGetHeight(a4);
      v17 = self->_width;
      v16 = self->_height;
      if (v14 == v17 >> 1 && v15 == v16)
      {
        return 1;
      }

      NSLog(&cfstr_FrcInvalidBack.isa, v17 >> 1, v16);
    }

    else
    {
      NSLog(&cfstr_FrcInvalidForw.isa, v13 >> 1, v12);
    }
  }

  else
  {
    NSLog(&cfstr_FrcInvalidPixe.isa);
  }

  return 0;
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
  if (FRCGetNumberOfPixelsForUsage(usage) >> 10 <= 0x7E8)
  {
    p_flowWidth = &self->_flowWidth;
    p_flowHeight = &self->_flowHeight;
    FRCGetInputFrameSizeForUsage(usage, p_flowWidth->i64, p_flowHeight);
    goto LABEL_6;
  }

  QuarterSizeUsage = getQuarterSizeUsage(self->_usage);
  if ([OpticalFlow use4xDownScale:self->_usage])
  {
    v5 = getQuarterSizeUsage(QuarterSizeUsage);
    p_flowWidth = &self->_flowWidth;
    p_flowHeight = &self->_flowHeight;
    FRCGetInputFrameSizeForUsage(v5, p_flowWidth->i64, p_flowHeight);
    if (v5 != usage)
    {
      *p_flowWidth = vaddq_s64(*p_flowWidth, *p_flowWidth);
      return;
    }

    goto LABEL_6;
  }

  p_flowWidth = &self->_flowWidth;
  p_flowHeight = &self->_flowHeight;
  FRCGetInputFrameSizeForUsage(QuarterSizeUsage, p_flowWidth->i64, p_flowHeight);
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
    self->_scaledForwardFlow = createPixelBuffer(self->_flowWidth, 2 * self->_flowHeight, 0x4C303068u, 0);
  }

  if (!self->_scaledBackwardFlow)
  {
    self->_scaledBackwardFlow = createPixelBuffer(self->_flowWidth, 2 * self->_flowHeight, 0x4C303068u, 0);
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