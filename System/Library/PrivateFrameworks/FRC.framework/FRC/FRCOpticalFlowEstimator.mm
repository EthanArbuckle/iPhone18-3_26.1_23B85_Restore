@interface FRCOpticalFlowEstimator
- (FRCOpticalFlowEstimator)initWithUsage:(int64_t)usage;
- (FRCOpticalFlowEstimator)initWithWidth:(int64_t)width height:(int64_t)height configuration:(id)configuration;
- (__CVBuffer)allocateFlowBufferFullSize:(BOOL)size;
- (__CVBuffer)matchFlow:(__CVBuffer *)flow;
- (__CVBuffer)opticalFlowFrom:(__CVBuffer *)from to:(__CVBuffer *)to;
- (id)opticalFlowsFrom:(__CVBuffer *)from to:(__CVBuffer *)to;
- (int64_t)flowAdaptationFrom:(__CVBuffer *)from to:(__CVBuffer *)to inputFlow:(__CVBuffer *)flow outputFlow:(__CVBuffer *)outputFlow;
- (int64_t)flowAdaptationFrom:(__CVBuffer *)from to:(__CVBuffer *)to inputForwardFlow:(__CVBuffer *)flow inputBackwardFlow:(__CVBuffer *)backwardFlow outputForwardFlow:(__CVBuffer *)forwardFlow outputBackwardFlow:(__CVBuffer *)outputBackwardFlow;
- (int64_t)opticalFlowFrom:(__CVBuffer *)from to:(__CVBuffer *)to flow:(__CVBuffer *)flow;
- (int64_t)opticalFlowsFrom:(__CVBuffer *)from to:(__CVBuffer *)to forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow;
- (unint64_t)flowHeight;
- (unint64_t)flowWidth;
- (void)dealloc;
- (void)matchFlow:(__CVBuffer *)flow toFullSizeFlow:(__CVBuffer *)sizeFlow;
@end

@implementation FRCOpticalFlowEstimator

- (unint64_t)flowWidth
{
  if (self->_matchFlowDimensions)
  {
    return self->_inputWidth;
  }

  else
  {
    return [(OpticalFlow *)self->_opticalFlow flowWidth];
  }
}

- (unint64_t)flowHeight
{
  if (self->_matchFlowDimensions)
  {
    return self->_inputHeight;
  }

  else
  {
    return [(OpticalFlow *)self->_opticalFlow flowHeight];
  }
}

- (FRCOpticalFlowEstimator)initWithUsage:(int64_t)usage
{
  usageCopy = usage;
  v9 = 0;
  v10 = 0;
  FRCGetInputFrameSizeForUsage(usage, &v10, &v9);
  v5 = objc_alloc_init(FRCOpticalFlowEstimatorConfiguration);
  v6 = [(FRCOpticalFlowEstimator *)self initWithWidth:v10 height:v9 configuration:v5];
  v7 = v6;
  if ((usageCopy & 0x1000) != 0)
  {
    v6->_inputRotation = 2;
  }

  return v7;
}

- (FRCOpticalFlowEstimator)initWithWidth:(int64_t)width height:(int64_t)height configuration:(id)configuration
{
  v75 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v58.receiver = self;
  v58.super_class = FRCOpticalFlowEstimator;
  v9 = [(FRCOpticalFlowEstimator *)&v58 init];
  v10 = v9;
  if (v9)
  {
    v9->_inputWidth = width;
    v9->_inputHeight = height;
    v9->_matchFlowDimensions = [configurationCopy matchOutputDimensions] != 0;
    v10->_useE5RT = [configurationCopy useE5RT];
    v10->_bypassInputNormalization = [configurationCopy bypassInputNormalization];
    v11 = FRCGetUsageFromSize(width, height);
    useE5RT = v10->_useE5RT;
    v13 = width == 1024 && height == 768;
    v14 = v13;
    v13 = (v14 & useE5RT) == 0;
    v15 = 30;
    if (v13)
    {
      v15 = v11;
    }

    v17 = width == 512 && height == 288;
    if (v17 && useE5RT)
    {
      v18 = 31;
    }

    else
    {
      v18 = v15;
    }

    v19 = os_log_create("com.apple.FRC", "FRCOpticalFlowEstimator");
    logger = v10->_logger;
    v10->_logger = v19;

    if ((v18 & 0x1000) != 0)
    {
      v21 = v18 & 0xFFF;
    }

    else
    {
      v21 = v18;
    }

    v10->_usage = v21;
    v10->_inputRotation = (v18 & 0x1000) >> 11;
    FRCGetInputFrameSizeForUsage(v21, &v10->_width, &v10->_height);
    legacyNormalization = [configurationCopy legacyNormalization];
    v23 = [FRCImageProcessor alloc];
    usage = v10->_usage;
    if (legacyNormalization)
    {
      v25 = [(FRCImageProcessor *)v23 initLegacyModeWithUsage:usage];
    }

    else
    {
      v25 = [(FRCImageProcessor *)v23 initWithUsage:usage];
    }

    processor = v10->_processor;
    v10->_processor = v25;

    if (v10->_useE5RT)
    {
      v27 = [OpticalFlowE5 alloc];
      e5Model = [configurationCopy e5Model];
      v29 = [(OpticalFlowE5 *)v27 initWithModel:e5Model usage:v10->_usage];
      opticalFlow = v10->_opticalFlow;
      v10->_opticalFlow = v29;

      [(OpticalFlow *)v10->_opticalFlow setBypassInputNormalization:v10->_bypassInputNormalization];
    }

    else
    {
      v31 = objc_alloc_init(OpticalFlow);
      v32 = v10->_opticalFlow;
      v10->_opticalFlow = v31;
    }

    if ([configurationCopy outputPixelFormat] == 1278226536 || objc_msgSend(configurationCopy, "outputPixelFormat") == 843264104)
    {
      v10->_outputPixelFormat = [configurationCopy outputPixelFormat];
      v33 = v10->_opticalFlow;
      if (v33)
      {
        if (configurationCopy)
        {
          if ([configurationCopy mode] == 1 || objc_msgSend(configurationCopy, "adaptationLayerOnly"))
          {
            [(OpticalFlow *)v10->_opticalFlow setUseAdaptationLayer:1];
          }

          v10->_streamingMode = [configurationCopy streamingMode];
          -[OpticalFlow setDisableOutputFlowScaling:](v10->_opticalFlow, "setDisableOutputFlowScaling:", [configurationCopy disableOutputFlowScaling]);
          -[OpticalFlow setRevision:](v10->_opticalFlow, "setRevision:", [configurationCopy revision]);
          -[OpticalFlow setSkipLastLevel:](v10->_opticalFlow, "setSkipLastLevel:", [configurationCopy skipLastLevel]);
          -[OpticalFlow setAdaptationLayerOnly:](v10->_opticalFlow, "setAdaptationLayerOnly:", [configurationCopy adaptationLayerOnly]);
          v33 = v10->_opticalFlow;
        }

        v10->_firstPair = 1;
        [(OpticalFlow *)v33 setConcurrentDualFlowProcessing:1];
        v34 = v10->_usage;
        if (!v34)
        {
          [(OpticalFlow *)v10->_opticalFlow setTwoStageFlow:1];
          v34 = v10->_usage;
        }

        if (FRCGetNumberOfPixelsForUsage(v34) >> 10 >= 0x7E9)
        {
          [(OpticalFlow *)v10->_opticalFlow setDownsampling:1];
        }

        if (FRCGetNumberOfPixelsForUsage(v10->_usage) >= 0x7E9000)
        {
          [(OpticalFlow *)v10->_opticalFlow setTwoStageFlow:1];
        }

        if ([(OpticalFlow *)v10->_opticalFlow switchUsageTo:v10->_usage])
        {
          backwarp = [(OpticalFlow *)v10->_opticalFlow backwarp];
          backwarp = v10->_backwarp;
          v10->_backwarp = backwarp;

          if (v10->_matchFlowDimensions)
          {
            v10->_intermediateFlow = [(FRCOpticalFlowEstimator *)v10 allocateFlowBufferFullSize:0];
            if ([(OpticalFlow *)v10->_opticalFlow useAdaptationLayer]|| v10->_outputPixelFormat == 1278226536)
            {
              [(OpticalFlow *)v10->_opticalFlow setWaitForCompletion:0];
            }
          }

          v37 = v10->_logger;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = v10->_opticalFlow;
            v39 = v37;
            LODWORD(v38) = [(OpticalFlow *)v38 downsampling];
            useAdaptationLayer = [(OpticalFlow *)v10->_opticalFlow useAdaptationLayer];
            twoStageFlow = [(OpticalFlow *)v10->_opticalFlow twoStageFlow];
            revision = [(OpticalFlow *)v10->_opticalFlow revision];
            flowWidth = [(FRCOpticalFlowEstimator *)v10 flowWidth];
            flowHeight = [(FRCOpticalFlowEstimator *)v10 flowHeight];
            *buf = 134219776;
            v60 = v10;
            v61 = 1024;
            v62 = v18;
            v63 = 1024;
            v64 = v38;
            v65 = 1024;
            v66 = useAdaptationLayer;
            v67 = 1024;
            v68 = twoStageFlow;
            v69 = 1024;
            v70 = revision;
            v71 = 2048;
            v72 = flowWidth;
            v73 = 2048;
            v74 = flowHeight;
            _os_log_impl(&dword_24A8C8000, v39, OS_LOG_TYPE_DEFAULT, "Initialized successfully (%p) [usage:%d, 1/4 flow:%d, adaptation layer:%d, twoStage:%d, revision:%d, flow size (%ldx%ld)].", buf, 0x3Eu);
          }

          goto LABEL_50;
        }

        v47 = v10->_logger;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = v10->_opticalFlow;
          v49 = v47;
          LODWORD(v48) = [(OpticalFlow *)v48 downsampling];
          useAdaptationLayer2 = [(OpticalFlow *)v10->_opticalFlow useAdaptationLayer];
          twoStageFlow2 = [(OpticalFlow *)v10->_opticalFlow twoStageFlow];
          revision2 = [(OpticalFlow *)v10->_opticalFlow revision];
          flowWidth2 = [(FRCOpticalFlowEstimator *)v10 flowWidth];
          flowHeight2 = [(FRCOpticalFlowEstimator *)v10 flowHeight];
          *buf = 134219776;
          v60 = v10;
          v61 = 1024;
          v62 = v18;
          v63 = 1024;
          v64 = v48;
          v65 = 1024;
          v66 = useAdaptationLayer2;
          v67 = 1024;
          v68 = twoStageFlow2;
          v69 = 1024;
          v70 = revision2;
          v71 = 2048;
          v72 = flowWidth2;
          v73 = 2048;
          v74 = flowHeight2;
          _os_log_impl(&dword_24A8C8000, v49, OS_LOG_TYPE_DEFAULT, "Failed to switch (%p) [usage:%d, 1/4 flow:%d, adaptation layer:%d, twoStage:%d, revision:%d, flow size (%ldx%ld)].", buf, 0x3Eu);
        }

        v55 = v10->_processor;
        v10->_processor = 0;

        v46 = v10->_opticalFlow;
        v10->_opticalFlow = 0;
LABEL_57:

        v45 = 0;
        goto LABEL_58;
      }

      NSLog(&cfstr_FailedToCreate_0.isa);
    }

    else
    {
      NSLog(&cfstr_ErrorOutputpix.isa);
    }

    v46 = v10->_processor;
    v10->_processor = 0;
    goto LABEL_57;
  }

LABEL_50:
  v45 = v10;
LABEL_58:

  v56 = *MEMORY[0x277D85DE8];
  return v45;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  intermediateFlow = self->_intermediateFlow;
  if (intermediateFlow)
  {
    CVPixelBufferRelease(intermediateFlow);
  }

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    usage = self->_usage;
    *buf = 134218240;
    selfCopy = self;
    v10 = 2048;
    v11 = usage;
    _os_log_impl(&dword_24A8C8000, logger, OS_LOG_TYPE_DEFAULT, "Released (%p) [usage:%ld]", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = FRCOpticalFlowEstimator;
  [(FRCOpticalFlowEstimator *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (__CVBuffer)allocateFlowBufferFullSize:(BOOL)size
{
  if (size)
  {
    inputWidth = self->_inputWidth;
    inputHeight = self->_inputHeight;
  }

  else
  {
    inputWidth = [(OpticalFlow *)self->_opticalFlow flowWidth];
    inputHeight = [(OpticalFlow *)self->_opticalFlow flowHeight];
  }

  outputPixelFormat = self->_outputPixelFormat;

  return createPixelBuffer(inputWidth, inputHeight << (outputPixelFormat == 1278226536), outputPixelFormat, 0);
}

- (int64_t)opticalFlowFrom:(__CVBuffer *)from to:(__CVBuffer *)to flow:(__CVBuffer *)flow
{
  v22 = *MEMORY[0x277D85DE8];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v10 = logger;
    v18 = 134218240;
    Width = CVPixelBufferGetWidth(flow);
    v20 = 2048;
    Height = CVPixelBufferGetHeight(flow);
    _os_log_impl(&dword_24A8C8000, v10, OS_LOG_TYPE_DEFAULT, "opticalFlowFrom:to:outputFlow [Flow Size %ld x %ld]\n", &v18, 0x16u);
  }

  intermediateFlow = flow;
  if (self->_matchFlowDimensions)
  {
    intermediateFlow = self->_intermediateFlow;
  }

  if (!self->_resourcePreAllocated)
  {
    [(OpticalFlow *)self->_opticalFlow allocateResources];
  }

  if (self->_bypassInputNormalization)
  {
    [(OpticalFlow *)self->_opticalFlow setOriginalFirst:from];
    [(OpticalFlow *)self->_opticalFlow setOriginalSecond:to];
  }

  [(FRCImageProcessor *)self->_processor setInputRotation:self->_inputRotation];
  processor = self->_processor;
  if ([(FRCOpticalFlowEstimator *)self skipFirstFramePreProcessing])
  {
    fromCopy = 0;
  }

  else
  {
    fromCopy = from;
  }

  [(FRCImageProcessor *)processor preProcessFirstInput:fromCopy secondInput:to waitForCompletion:0];
  opticalFlow = self->_opticalFlow;
  normalizedFirst = 0;
  if (![(FRCOpticalFlowEstimator *)self skipFirstFramePreProcessing])
  {
    normalizedFirst = [(FRCImageProcessor *)self->_processor normalizedFirst];
  }

  [(OpticalFlow *)opticalFlow opticalFlowFirstFrame:normalizedFirst secondFrame:[(FRCImageProcessor *)self->_processor normalizedSecond] flow:intermediateFlow];
  if (self->_matchFlowDimensions)
  {
    [(FRCOpticalFlowEstimator *)self matchFlow:self->_intermediateFlow toFullSizeFlow:flow];
  }

  if (!self->_resourcePreAllocated)
  {
    [(OpticalFlow *)self->_opticalFlow releaseResources];
  }

  self->_firstPair = 0;
  v16 = *MEMORY[0x277D85DE8];
  return -22000;
}

- (int64_t)opticalFlowsFrom:(__CVBuffer *)from to:(__CVBuffer *)to forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow
{
  v23 = *MEMORY[0x277D85DE8];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v12 = logger;
    v19 = 134218240;
    Width = CVPixelBufferGetWidth(flow);
    v21 = 2048;
    Height = CVPixelBufferGetHeight(flow);
    _os_log_impl(&dword_24A8C8000, v12, OS_LOG_TYPE_DEFAULT, "opticalFlowsFrom:to:forwardFlow:backwardFlow [Flow Size %ld x %ld]\n", &v19, 0x16u);
  }

  if (!self->_resourcePreAllocated)
  {
    [(OpticalFlow *)self->_opticalFlow allocateResources];
  }

  [(FRCImageProcessor *)self->_processor setInputRotation:self->_inputRotation];
  processor = self->_processor;
  if ([(FRCOpticalFlowEstimator *)self skipFirstFramePreProcessing])
  {
    fromCopy = 0;
  }

  else
  {
    fromCopy = from;
  }

  [(FRCImageProcessor *)processor preProcessFirstInput:fromCopy secondInput:to waitForCompletion:0];
  opticalFlow = self->_opticalFlow;
  normalizedFirst = 0;
  if (![(FRCOpticalFlowEstimator *)self skipFirstFramePreProcessing])
  {
    normalizedFirst = [(FRCImageProcessor *)self->_processor normalizedFirst];
  }

  [(OpticalFlow *)opticalFlow opticalFlowFirstFrame:normalizedFirst secondFrame:[(FRCImageProcessor *)self->_processor normalizedSecond] flowForward:flow flowBackward:backwardFlow];
  if (!self->_resourcePreAllocated)
  {
    [(OpticalFlow *)self->_opticalFlow releaseResources];
  }

  self->_firstPair = 0;
  v17 = *MEMORY[0x277D85DE8];
  return -22000;
}

- (__CVBuffer)opticalFlowFrom:(__CVBuffer *)from to:(__CVBuffer *)to
{
  v19 = *MEMORY[0x277D85DE8];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    opticalFlow = self->_opticalFlow;
    v9 = logger;
    flowWidth = [(OpticalFlow *)opticalFlow flowWidth];
    flowHeight = [(OpticalFlow *)self->_opticalFlow flowHeight];
    v15 = 134218240;
    v16 = flowWidth;
    v17 = 2048;
    v18 = flowHeight;
    _os_log_impl(&dword_24A8C8000, v9, OS_LOG_TYPE_DEFAULT, "opticalFlowFrom:to: [Flow Size %ld x %ld]\n", &v15, 0x16u);
  }

  v12 = [(FRCOpticalFlowEstimator *)self allocateFlowBufferFullSize:self->_matchFlowDimensions];
  if ([(FRCOpticalFlowEstimator *)self opticalFlowFrom:from to:to flow:v12]!= -22000)
  {
    CVPixelBufferRelease(v12);
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (__CVBuffer)matchFlow:(__CVBuffer *)flow
{
  v5 = [(FRCOpticalFlowEstimator *)self allocateFlowBufferFullSize:1];
  [(FRCOpticalFlowEstimator *)self matchFlow:flow toFullSizeFlow:v5];
  return v5;
}

- (void)matchFlow:(__CVBuffer *)flow toFullSizeFlow:(__CVBuffer *)sizeFlow
{
  v20 = *MEMORY[0x277D85DE8];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v8 = logger;
    v16 = 134218240;
    flowWidth = [(FRCOpticalFlowEstimator *)self flowWidth];
    v18 = 2048;
    flowHeight = [(FRCOpticalFlowEstimator *)self flowHeight];
    _os_log_impl(&dword_24A8C8000, v8, OS_LOG_TYPE_DEFAULT, "Output Flow %ld, %ld", &v16, 0x16u);
  }

  if (self->_outputPixelFormat == 1278226536)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  if (self->_outputPixelFormat == 1278226536)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  device = [(OpticalFlow *)self->_opticalFlow device];
  v12 = createTexturesFromCVPixelBuffer(flow, device, v10, v9);

  device2 = [(OpticalFlow *)self->_opticalFlow device];
  v14 = createTexturesFromCVPixelBuffer(sizeFlow, device2, v10, v9);

  [(Backwarp *)self->_backwarp upscaleFlow:v12 destination:v14];
  v15 = *MEMORY[0x277D85DE8];
}

- (id)opticalFlowsFrom:(__CVBuffer *)from to:(__CVBuffer *)to
{
  v25 = *MEMORY[0x277D85DE8];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    opticalFlow = self->_opticalFlow;
    v9 = logger;
    flowWidth = [(OpticalFlow *)opticalFlow flowWidth];
    flowHeight = [(OpticalFlow *)self->_opticalFlow flowHeight];
    *buf = 134218240;
    *&buf[4] = flowWidth;
    *&buf[12] = 2048;
    *&buf[14] = flowHeight;
    _os_log_impl(&dword_24A8C8000, v9, OS_LOG_TYPE_DEFAULT, "opticalFlowsFrom:to: [Flow Size %ld x %ld]\n", buf, 0x16u);
  }

  v12 = [(FRCOpticalFlowEstimator *)self flowHeight]<< (self->_outputPixelFormat == 1278226536);
  PixelBuffer = createPixelBuffer([(FRCOpticalFlowEstimator *)self flowWidth], v12, self->_outputPixelFormat, 0);
  v14 = createPixelBuffer([(FRCOpticalFlowEstimator *)self flowWidth], v12, self->_outputPixelFormat, 0);
  if ([(FRCOpticalFlowEstimator *)self opticalFlowsFrom:from to:to forwardFlow:PixelBuffer backwardFlow:v14]== -22000)
  {
    v15 = [FRCFrame alloc];
    *buf = *MEMORY[0x277CC0898];
    v23 = *buf;
    *&buf[16] = *(MEMORY[0x277CC0898] + 16);
    v16 = *&buf[16];
    v17 = [(FRCFrame *)v15 initWithBuffer:PixelBuffer presentationTimeStamp:buf];
    v18 = [FRCFrame alloc];
    *buf = v23;
    *&buf[16] = v16;
    v19 = [(FRCFrame *)v18 initWithBuffer:v14 presentationTimeStamp:buf];
    CVPixelBufferRelease(PixelBuffer);
    CVPixelBufferRelease(v14);
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:{v17, v19, 0}];
  }

  else
  {
    CVPixelBufferRelease(PixelBuffer);
    CVPixelBufferRelease(v14);
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (int64_t)flowAdaptationFrom:(__CVBuffer *)from to:(__CVBuffer *)to inputForwardFlow:(__CVBuffer *)flow inputBackwardFlow:(__CVBuffer *)backwardFlow outputForwardFlow:(__CVBuffer *)forwardFlow outputBackwardFlow:(__CVBuffer *)outputBackwardFlow
{
  v31 = *MEMORY[0x277D85DE8];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    log = logger;
    *buf = 134218752;
    Width = CVPixelBufferGetWidth(flow);
    v25 = 2048;
    Height = CVPixelBufferGetHeight(backwardFlow);
    v27 = 2048;
    v28 = CVPixelBufferGetWidth(forwardFlow);
    v29 = 2048;
    v30 = CVPixelBufferGetHeight(outputBackwardFlow);
    _os_log_impl(&dword_24A8C8000, log, OS_LOG_TYPE_DEFAULT, "flowAdaptationFrom:to:inputForwardFlow:inputBackwardFlow:outputForwardFlow:outputBackwardFlow [inputFlow Size %ld x %ld] [outputFlow Size %ld x %ld]\n", buf, 0x2Au);
  }

  if (!self->_resourcePreAllocated)
  {
    [(OpticalFlow *)self->_opticalFlow allocateResources];
  }

  [(FRCImageProcessor *)self->_processor setInputRotation:self->_inputRotation];
  processor = self->_processor;
  if ([(FRCOpticalFlowEstimator *)self skipFirstFramePreProcessing])
  {
    fromCopy = 0;
  }

  else
  {
    fromCopy = from;
  }

  [(FRCImageProcessor *)processor preProcessFirstInput:fromCopy secondInput:to waitForCompletion:0];
  opticalFlow = self->_opticalFlow;
  normalizedFirst = 0;
  if (![(FRCOpticalFlowEstimator *)self skipFirstFramePreProcessing])
  {
    normalizedFirst = [(FRCImageProcessor *)self->_processor normalizedFirst];
  }

  [(OpticalFlow *)opticalFlow flowAdaptationFirstFrame:normalizedFirst secondFrame:[(FRCImageProcessor *)self->_processor normalizedSecond] inputFlowForward:flow inputFlowBackward:backwardFlow outputFlowForward:forwardFlow outputFlowBackward:outputBackwardFlow];
  if (!self->_resourcePreAllocated)
  {
    [(OpticalFlow *)self->_opticalFlow releaseResources];
  }

  self->_firstPair = 0;
  v20 = *MEMORY[0x277D85DE8];
  return -22000;
}

- (int64_t)flowAdaptationFrom:(__CVBuffer *)from to:(__CVBuffer *)to inputFlow:(__CVBuffer *)flow outputFlow:(__CVBuffer *)outputFlow
{
  if (!self->_resourcePreAllocated)
  {
    [(OpticalFlow *)self->_opticalFlow allocateResources];
  }

  [(FRCImageProcessor *)self->_processor setInputRotation:self->_inputRotation];
  [(FRCImageProcessor *)self->_processor preProcessFirstInput:from secondInput:to waitForCompletion:1];
  [(OpticalFlow *)self->_opticalFlow flowAdaptationFirstFrame:[(FRCImageProcessor *)self->_processor normalizedFirst] secondFrame:[(FRCImageProcessor *)self->_processor normalizedSecond] inputFlow:flow outputFlow:outputFlow];
  if (!self->_resourcePreAllocated)
  {
    [(OpticalFlow *)self->_opticalFlow releaseResources];
  }

  return -22000;
}

@end