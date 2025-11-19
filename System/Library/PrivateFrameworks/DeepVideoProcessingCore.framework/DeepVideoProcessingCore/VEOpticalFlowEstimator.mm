@interface VEOpticalFlowEstimator
- (VEOpticalFlowEstimator)initWithUsage:(int64_t)a3;
- (VEOpticalFlowEstimator)initWithWidth:(int64_t)a3 height:(int64_t)a4 configuration:(id)a5;
- (__CVBuffer)allocateFlowBufferFullSize:(BOOL)a3;
- (__CVBuffer)matchFlow:(__CVBuffer *)a3;
- (__CVBuffer)opticalFlowFrom:(__CVBuffer *)a3 to:(__CVBuffer *)a4;
- (id)opticalFlowsFrom:(__CVBuffer *)a3 to:(__CVBuffer *)a4;
- (int64_t)flowAdaptationFrom:(__CVBuffer *)a3 to:(__CVBuffer *)a4 inputForwardFlow:(__CVBuffer *)a5 inputBackwardFlow:(__CVBuffer *)a6 outputForwardFlow:(__CVBuffer *)a7 outputBackwardFlow:(__CVBuffer *)a8;
- (int64_t)opticalFlowFrom:(__CVBuffer *)a3 to:(__CVBuffer *)a4 flow:(__CVBuffer *)a5;
- (int64_t)opticalFlowsFrom:(__CVBuffer *)a3 to:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6;
- (unint64_t)flowHeight;
- (unint64_t)flowWidth;
- (void)dealloc;
- (void)matchFlow:(__CVBuffer *)a3 toFullSizeFlow:(__CVBuffer *)a4;
- (void)updateFlowOnlyMode:(BOOL)a3;
@end

@implementation VEOpticalFlowEstimator

- (unint64_t)flowWidth
{
  if (self->_matchFlowDimensions)
  {
    return self->_inputWidth;
  }

  else
  {
    return [(VEOpticalFlow *)self->_opticalFlow flowWidth];
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
    return [(VEOpticalFlow *)self->_opticalFlow flowHeight];
  }
}

- (VEOpticalFlowEstimator)initWithUsage:(int64_t)a3
{
  v3 = a3;
  v9 = 0;
  v10 = 0;
  getInputFrameSizeForUsage(a3, &v10, &v9);
  v5 = objc_alloc_init(VEOpticalFlowEstimatorConfiguration);
  v6 = [(VEOpticalFlowEstimator *)self initWithWidth:v10 height:v9 configuration:v5];
  v7 = v6;
  if ((v3 & 0x1000) != 0)
  {
    v6->_inputRotation = 2;
  }

  return v7;
}

- (VEOpticalFlowEstimator)initWithWidth:(int64_t)a3 height:(int64_t)a4 configuration:(id)a5
{
  v66 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v49.receiver = self;
  v49.super_class = VEOpticalFlowEstimator;
  v9 = [(VEOpticalFlowEstimator *)&v49 init];
  v10 = v9;
  if (v9)
  {
    v9->_inputWidth = a3;
    v9->_inputHeight = a4;
    v9->_matchFlowDimensions = [v8 matchOutputDimensions] != 0;
    UsageFromSize = getUsageFromSize(a3, a4);
    v12 = UsageFromSize;
    v13 = UsageFromSize & 0x1000;
    if ((UsageFromSize & 0x1000) != 0)
    {
      UsageFromSize &= 0xFFFu;
    }

    v10->_usage = UsageFromSize;
    v10->_inputRotation = v13 >> 11;
    getInputFrameSizeForUsage(UsageFromSize, &v10->_width, &v10->_height);
    v14 = [[ImageProcessor alloc] initWithUsage:v10->_usage];
    processor = v10->_processor;
    v10->_processor = v14;

    v16 = [v8 legacyNormalization];
    v17 = [ImageProcessor alloc];
    usage = v10->_usage;
    if (v16)
    {
      v19 = [(ImageProcessor *)v17 initLegacyModeWithUsage:usage];
    }

    else
    {
      v19 = [(ImageProcessor *)v17 initWithUsage:usage];
    }

    v20 = v10->_processor;
    v10->_processor = v19;

    v21 = objc_alloc_init(VEOpticalFlow);
    opticalFlow = v10->_opticalFlow;
    v10->_opticalFlow = v21;

    if ([v8 outputPixelFormat] == 1278226536 || objc_msgSend(v8, "outputPixelFormat") == 843264104)
    {
      v10->_outputPixelFormat = [v8 outputPixelFormat];
      v23 = v10->_opticalFlow;
      if (v23)
      {
        if (v8)
        {
          if ([v8 mode] == 1 || objc_msgSend(v8, "adaptationLayerOnly"))
          {
            [(VEOpticalFlow *)v10->_opticalFlow setUseAdaptationLayer:1];
          }

          -[VEOpticalFlow setDisableOutputFlowScaling:](v10->_opticalFlow, "setDisableOutputFlowScaling:", [v8 disableOutputFlowScaling]);
          -[VEOpticalFlow setRevision:](v10->_opticalFlow, "setRevision:", [v8 revision]);
          -[VEOpticalFlow setSkipLastLevel:](v10->_opticalFlow, "setSkipLastLevel:", [v8 skipLastLevel]);
          -[VEOpticalFlow setAdaptationLayerOnly:](v10->_opticalFlow, "setAdaptationLayerOnly:", [v8 adaptationLayerOnly]);
          v23 = v10->_opticalFlow;
        }

        v10->_isFirstFrameInStream = 1;
        [(VEOpticalFlow *)v23 setConcurrentDualFlowProcessing:1];
        v24 = v10->_usage;
        if (!v24)
        {
          [(VEOpticalFlow *)v10->_opticalFlow setTwoStageFlow:1];
          v24 = v10->_usage;
        }

        if (getNumberOfPixelsForUsage(v24) >> 10 >= 0x7E9)
        {
          [(VEOpticalFlow *)v10->_opticalFlow setDownsampling:1];
        }

        if (getNumberOfPixelsForUsage(v10->_usage) >= 0x7E9000)
        {
          [(VEOpticalFlow *)v10->_opticalFlow setTwoStageFlow:1];
        }

        if ([(VEOpticalFlow *)v10->_opticalFlow switchUsageTo:v10->_usage])
        {
          v25 = [(VEOpticalFlow *)v10->_opticalFlow backwarp];
          backwarp = v10->_backwarp;
          v10->_backwarp = v25;

          if (v10->_matchFlowDimensions)
          {
            v10->_intermediateFlow = [(VEOpticalFlowEstimator *)v10 allocateFlowBufferFullSize:0];
          }

          if ((global_logLevel & 4) != 0)
          {
            v27 = global_logger;
            if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
            {
              v28 = v10->_opticalFlow;
              v29 = v27;
              LODWORD(v28) = [(VEOpticalFlow *)v28 downsampling];
              v30 = [(VEOpticalFlow *)v10->_opticalFlow useAdaptationLayer];
              v31 = [(VEOpticalFlow *)v10->_opticalFlow twoStageFlow];
              v32 = [(VEOpticalFlow *)v10->_opticalFlow revision];
              v33 = [(VEOpticalFlowEstimator *)v10 flowWidth];
              v34 = [(VEOpticalFlowEstimator *)v10 flowHeight];
              *buf = 134219776;
              v51 = v10;
              v52 = 1024;
              v53 = v12;
              v54 = 1024;
              v55 = v28;
              v56 = 1024;
              v57 = v30;
              v58 = 1024;
              v59 = v31;
              v60 = 1024;
              v61 = v32;
              v62 = 2048;
              v63 = v33;
              v64 = 2048;
              v65 = v34;
              _os_log_impl(&dword_24874B000, v29, OS_LOG_TYPE_INFO, "Initialized successfully (%p) [usage:%d, 1/4 flow:%d, adaptation layer:%d, twoStage:%d, revision:%d, flow size (%ldx%ld)].", buf, 0x3Eu);
            }
          }

          goto LABEL_27;
        }

        if ((global_logLevel & 0x10) != 0)
        {
          v39 = global_logger;
          if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
          {
            v42 = v10->_opticalFlow;
            v43 = v39;
            LODWORD(v42) = [(VEOpticalFlow *)v42 downsampling];
            v44 = [(VEOpticalFlow *)v10->_opticalFlow useAdaptationLayer];
            v45 = [(VEOpticalFlow *)v10->_opticalFlow twoStageFlow];
            v46 = [(VEOpticalFlow *)v10->_opticalFlow revision];
            v47 = [(VEOpticalFlowEstimator *)v10 flowWidth];
            v48 = [(VEOpticalFlowEstimator *)v10 flowHeight];
            *buf = 134219776;
            v51 = v10;
            v52 = 1024;
            v53 = v12;
            v54 = 1024;
            v55 = v42;
            v56 = 1024;
            v57 = v44;
            v58 = 1024;
            v59 = v45;
            v60 = 1024;
            v61 = v46;
            v62 = 2048;
            v63 = v47;
            v64 = 2048;
            v65 = v48;
            _os_log_error_impl(&dword_24874B000, v43, OS_LOG_TYPE_ERROR, "Failed to switch (%p) [usage:%d, 1/4 flow:%d, adaptation layer:%d, twoStage:%d, revision:%d, flow size (%ldx%ld)].", buf, 0x3Eu);
          }
        }

        v40 = v10->_processor;
        v10->_processor = 0;

        v38 = v10->_opticalFlow;
        v10->_opticalFlow = 0;
LABEL_39:

        v35 = 0;
        goto LABEL_40;
      }

      if ((global_logLevel & 0x10) != 0)
      {
        v36 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
        {
          [VEOpticalFlowEstimator initWithWidth:v36 height:? configuration:?];
        }
      }
    }

    else if ((global_logLevel & 0x10) != 0)
    {
      v37 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
      {
        [VEOpticalFlowEstimator initWithWidth:v37 height:? configuration:?];
      }
    }

    v38 = v10->_processor;
    v10->_processor = 0;
    goto LABEL_39;
  }

LABEL_27:
  v35 = v10;
LABEL_40:

  return v35;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  intermediateFlow = self->_intermediateFlow;
  if (intermediateFlow)
  {
    CVPixelBufferRelease(intermediateFlow);
  }

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
  v6.super_class = VEOpticalFlowEstimator;
  [(VEOpticalFlowEstimator *)&v6 dealloc];
}

- (__CVBuffer)allocateFlowBufferFullSize:(BOOL)a3
{
  if (a3)
  {
    inputWidth = self->_inputWidth;
    inputHeight = self->_inputHeight;
  }

  else
  {
    inputWidth = [(VEOpticalFlow *)self->_opticalFlow flowWidth];
    inputHeight = [(VEOpticalFlow *)self->_opticalFlow flowHeight];
  }

  outputPixelFormat = self->_outputPixelFormat;

  return createPixelBuffer(inputWidth, inputHeight << (outputPixelFormat == 1278226536), outputPixelFormat, 0);
}

- (int64_t)opticalFlowFrom:(__CVBuffer *)a3 to:(__CVBuffer *)a4 flow:(__CVBuffer *)a5
{
  v21 = *MEMORY[0x277D85DE8];
  if ((global_logLevel & 4) != 0)
  {
    v9 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v17 = 134218240;
      Width = CVPixelBufferGetWidth(a5);
      v19 = 2048;
      Height = CVPixelBufferGetHeight(a5);
      _os_log_impl(&dword_24874B000, v10, OS_LOG_TYPE_INFO, "opticalFlowFrom:to:outputFlow [Flow Size %ld x %ld]\n", &v17, 0x16u);
    }
  }

  intermediateFlow = a5;
  if (self->_matchFlowDimensions)
  {
    intermediateFlow = self->_intermediateFlow;
  }

  if (!self->_resourcePreAllocated)
  {
    [(VEOpticalFlow *)self->_opticalFlow allocateResources];
  }

  [(ImageProcessor *)self->_processor setInputRotation:self->_inputRotation];
  processor = self->_processor;
  if ([(VEOpticalFlowEstimator *)self skipFirstFramePreProcessing])
  {
    v13 = 0;
  }

  else
  {
    v13 = a3;
  }

  [(ImageProcessor *)processor preProcessFirstInput:v13 secondInput:a4 waitForCompletion:0];
  opticalFlow = self->_opticalFlow;
  v15 = 0;
  if (![(VEOpticalFlowEstimator *)self skipFirstFramePreProcessing])
  {
    v15 = [(ImageProcessor *)self->_processor normalizedFirst];
  }

  [(VEOpticalFlow *)opticalFlow opticalFlowFirstFrame:v15 secondFrame:[(ImageProcessor *)self->_processor normalizedSecond] flow:intermediateFlow];
  if (self->_matchFlowDimensions)
  {
    [(VEOpticalFlowEstimator *)self matchFlow:self->_intermediateFlow toFullSizeFlow:a5];
  }

  if (!self->_resourcePreAllocated)
  {
    [(VEOpticalFlow *)self->_opticalFlow releaseResources];
  }

  self->_isFirstFrameInStream = 0;
  return 0;
}

- (int64_t)opticalFlowsFrom:(__CVBuffer *)a3 to:(__CVBuffer *)a4 forwardFlow:(__CVBuffer *)a5 backwardFlow:(__CVBuffer *)a6
{
  v22 = *MEMORY[0x277D85DE8];
  if ((global_logLevel & 4) != 0)
  {
    v11 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      v18 = 134218240;
      Width = CVPixelBufferGetWidth(a5);
      v20 = 2048;
      Height = CVPixelBufferGetHeight(a5);
      _os_log_impl(&dword_24874B000, v12, OS_LOG_TYPE_INFO, "opticalFlowsFrom:to:forwardFlow:backwardFlow [Flow Size %ld x %ld]\n", &v18, 0x16u);
    }
  }

  if (!self->_resourcePreAllocated)
  {
    [(VEOpticalFlow *)self->_opticalFlow allocateResources];
  }

  [(ImageProcessor *)self->_processor setInputRotation:self->_inputRotation];
  processor = self->_processor;
  if ([(VEOpticalFlowEstimator *)self skipFirstFramePreProcessing])
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  [(ImageProcessor *)processor preProcessFirstInput:v14 secondInput:a4 waitForCompletion:0];
  opticalFlow = self->_opticalFlow;
  v16 = 0;
  if (![(VEOpticalFlowEstimator *)self skipFirstFramePreProcessing])
  {
    v16 = [(ImageProcessor *)self->_processor normalizedFirst];
  }

  [(VEOpticalFlow *)opticalFlow opticalFlowFirstFrame:v16 secondFrame:[(ImageProcessor *)self->_processor normalizedSecond] flowForward:a5 flowBackward:a6];
  if (!self->_resourcePreAllocated)
  {
    [(VEOpticalFlow *)self->_opticalFlow releaseResources];
  }

  self->_isFirstFrameInStream = 0;
  return 0;
}

- (__CVBuffer)opticalFlowFrom:(__CVBuffer *)a3 to:(__CVBuffer *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  if ((global_logLevel & 4) != 0)
  {
    v7 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      opticalFlow = self->_opticalFlow;
      v9 = v7;
      v10 = [(VEOpticalFlow *)opticalFlow flowWidth];
      v11 = [(VEOpticalFlow *)self->_opticalFlow flowHeight];
      v14 = 134218240;
      v15 = v10;
      v16 = 2048;
      v17 = v11;
      _os_log_impl(&dword_24874B000, v9, OS_LOG_TYPE_INFO, "opticalFlowFrom:to: [Flow Size %ld x %ld]\n", &v14, 0x16u);
    }
  }

  v12 = [(VEOpticalFlowEstimator *)self allocateFlowBufferFullSize:self->_matchFlowDimensions];
  if ([(VEOpticalFlowEstimator *)self opticalFlowFrom:a3 to:a4 flow:v12])
  {
    CVPixelBufferRelease(v12);
    return 0;
  }

  return v12;
}

- (__CVBuffer)matchFlow:(__CVBuffer *)a3
{
  v5 = [(VEOpticalFlowEstimator *)self allocateFlowBufferFullSize:1];
  [(VEOpticalFlowEstimator *)self matchFlow:a3 toFullSizeFlow:v5];
  return v5;
}

- (void)matchFlow:(__CVBuffer *)a3 toFullSizeFlow:(__CVBuffer *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if ((global_logLevel & 4) != 0)
  {
    v7 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v15 = 134218240;
      v16 = [(VEOpticalFlowEstimator *)self flowWidth];
      v17 = 2048;
      v18 = [(VEOpticalFlowEstimator *)self flowHeight];
      _os_log_impl(&dword_24874B000, v8, OS_LOG_TYPE_INFO, "Output Flow %ld, %ld", &v15, 0x16u);
    }
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

  v11 = [(VEOpticalFlow *)self->_opticalFlow device];
  v12 = createTexturesFromCVPixelBuffer(a3, v11, v10, v9);

  v13 = [(VEOpticalFlow *)self->_opticalFlow device];
  v14 = createTexturesFromCVPixelBuffer(a4, v13, v10, v9);

  [(OFBackwarp *)self->_backwarp upscaleFlow:v12 destination:v14];
}

- (id)opticalFlowsFrom:(__CVBuffer *)a3 to:(__CVBuffer *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  if ((global_logLevel & 4) != 0)
  {
    v7 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      opticalFlow = self->_opticalFlow;
      v9 = v7;
      v10 = [(VEOpticalFlow *)opticalFlow flowWidth];
      v11 = [(VEOpticalFlow *)self->_opticalFlow flowHeight];
      *buf = 134218240;
      *&buf[4] = v10;
      *&buf[12] = 2048;
      *&buf[14] = v11;
      _os_log_impl(&dword_24874B000, v9, OS_LOG_TYPE_INFO, "opticalFlowsFrom:to: [Flow Size %ld x %ld]\n", buf, 0x16u);
    }
  }

  v12 = [(VEOpticalFlowEstimator *)self flowHeight]<< (self->_outputPixelFormat == 1278226536);
  PixelBuffer = CreatePixelBuffer([(VEOpticalFlowEstimator *)self flowWidth], v12, self->_outputPixelFormat);
  v14 = CreatePixelBuffer([(VEOpticalFlowEstimator *)self flowWidth], v12, self->_outputPixelFormat);
  if ([(VEOpticalFlowEstimator *)self opticalFlowsFrom:a3 to:a4 forwardFlow:PixelBuffer backwardFlow:v14])
  {
    CVPixelBufferRelease(PixelBuffer);
    CVPixelBufferRelease(v14);
    v15 = 0;
  }

  else
  {
    v16 = [OFFrame alloc];
    *buf = *MEMORY[0x277CC0898];
    v22 = *buf;
    *&buf[16] = *(MEMORY[0x277CC0898] + 16);
    v17 = *&buf[16];
    v18 = [(OFFrame *)v16 initWithBuffer:PixelBuffer presentationTimeStamp:buf];
    v19 = [OFFrame alloc];
    *buf = v22;
    *&buf[16] = v17;
    v20 = [(OFFrame *)v19 initWithBuffer:v14 presentationTimeStamp:buf];
    CVPixelBufferRelease(PixelBuffer);
    CVPixelBufferRelease(v14);
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:{v18, v20, 0}];
  }

  return v15;
}

- (int64_t)flowAdaptationFrom:(__CVBuffer *)a3 to:(__CVBuffer *)a4 inputForwardFlow:(__CVBuffer *)a5 inputBackwardFlow:(__CVBuffer *)a6 outputForwardFlow:(__CVBuffer *)a7 outputBackwardFlow:(__CVBuffer *)a8
{
  v30 = *MEMORY[0x277D85DE8];
  if ((global_logLevel & 4) != 0)
  {
    v15 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      log = v15;
      *buf = 134218752;
      Width = CVPixelBufferGetWidth(a5);
      v24 = 2048;
      Height = CVPixelBufferGetHeight(a6);
      v26 = 2048;
      v27 = CVPixelBufferGetWidth(a7);
      v28 = 2048;
      v29 = CVPixelBufferGetHeight(a8);
      _os_log_impl(&dword_24874B000, log, OS_LOG_TYPE_INFO, "flowAdaptationFrom:to:inputForwardFlow:inputBackwardFlow:outputForwardFlow:outputBackwardFlow [inputFlow Size %ld x %ld] [outputFlow Size %ld x %ld]\n", buf, 0x2Au);
    }
  }

  if (!self->_resourcePreAllocated)
  {
    [(VEOpticalFlow *)self->_opticalFlow allocateResources];
  }

  [(ImageProcessor *)self->_processor setInputRotation:self->_inputRotation];
  processor = self->_processor;
  if ([(VEOpticalFlowEstimator *)self skipFirstFramePreProcessing])
  {
    v17 = 0;
  }

  else
  {
    v17 = a3;
  }

  [(ImageProcessor *)processor preProcessFirstInput:v17 secondInput:a4 waitForCompletion:0];
  opticalFlow = self->_opticalFlow;
  v19 = 0;
  if (![(VEOpticalFlowEstimator *)self skipFirstFramePreProcessing])
  {
    v19 = [(ImageProcessor *)self->_processor normalizedFirst];
  }

  [(VEOpticalFlow *)opticalFlow flowAdaptationFirstFrame:v19 secondFrame:[(ImageProcessor *)self->_processor normalizedSecond] inputFlowForward:a5 inputFlowBackward:a6 outputFlowForward:a7 outputFlowBackward:a8];
  if (!self->_resourcePreAllocated)
  {
    [(VEOpticalFlow *)self->_opticalFlow releaseResources];
  }

  self->_isFirstFrameInStream = 0;
  return 0;
}

- (void)updateFlowOnlyMode:(BOOL)a3
{
  opticalFlow = self->_opticalFlow;
  if (opticalFlow)
  {
    v5 = a3;
    [(VEOpticalFlow *)opticalFlow setConcurrentDualFlowProcessing:?];
    v6 = self->_opticalFlow;

    [(VEOpticalFlow *)v6 setWaitForCompletion:v5];
  }
}

@end