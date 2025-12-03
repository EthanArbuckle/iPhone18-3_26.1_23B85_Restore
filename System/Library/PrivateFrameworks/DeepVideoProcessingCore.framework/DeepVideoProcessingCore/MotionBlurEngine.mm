@interface MotionBlurEngine
- (BOOL)motionBlurBetweenFirstFrame:(id)frame secondFrame:(id)secondFrame forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow depth:(__CVBuffer *)depth shutterAngle:(id)angle destination:(__CVBuffer *)destination withError:(id *)self0;
- (BOOL)motionBlurForCurrentFrame:(id)frame futureFrame:(id)futureFrame prevFrame:(id)prevFrame prevFlowPair:(id *)pair currFlowPair:(id *)flowPair shutterAngle:(id)angle destination:(__CVBuffer *)destination withError:(id *)self0;
- (BOOL)startSessionWithQualityMode:(int64_t)mode useExternalFlow:(BOOL)flow streamingMode:(BOOL)streamingMode pseudoDepth:(BOOL)depth error:(id *)error;
- (CGAffineTransform)preferredTransform;
- (MotionBlurEngine)initWithWidth:(unint64_t)width height:(unint64_t)height vsaPipeMode:(int64_t)mode;
- (id)errorWithErrorCode:(int64_t)code;
- (int64_t)allocateInternalBuffers;
- (int64_t)allocateSubmodulesBuffersWithFlowWidth:(unint64_t)width flowHeight:(unint64_t)height depthFactor:(unint64_t)factor;
- (int64_t)bindWithMTLTextureFromDownscaledImage:(__CVBuffer *)image downscaledSecond:(__CVBuffer *)second forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow prevBackwardFlow:(__CVBuffer *)prevBackwardFlow remianedErrorMask:(__CVBuffer *)mask fullresImage:(__CVBuffer *)fullresImage upscaledFlow:(__CVBuffer *)self0 depth:(__CVBuffer *)self1 interleaveFactor:(unint64_t)self2;
- (int64_t)endSession;
- (int64_t)flowUpscalingAndPseudoDepthComputingWarmup:(BOOL)warmup;
- (int64_t)getFrameRotation:(int64_t)rotation;
- (int64_t)synthesizeMotionBlurredFrameForTimeScale:(float)scale destination:(__CVBuffer *)destination scalerEnabled:(BOOL)enabled frameIndex:(unint64_t)index lastFrame:(BOOL)frame;
- (int64_t)synthesizeMotionBlurredFrames:(id)frames second:(id)second timeScale:(id)scale destination:(__CVBuffer *)destination scalerEnabled:(BOOL)enabled;
- (int64_t)warmpupComputationFromPrevFrame:(id)frame currFrame:(id)currFrame prevFlowPair:(id *)pair;
- (void)configureSynthesis;
- (void)dealloc;
- (void)initExtSubModules;
- (void)releaseInternalBuffers;
- (void)setPreferredTransform:(CGAffineTransform *)transform;
- (void)setPropertiesFromDefaults;
- (void)updateLastFramePts:(id *)pts duration:(id *)duration toSynthesize:(unint64_t)synthesize;
@end

@implementation MotionBlurEngine

- (int64_t)getFrameRotation:(int64_t)rotation
{
  if ((rotation & 0x1000) != 0)
  {
    return 2;
  }

  [(MotionBlurEngine *)self preferredTransform];
  if (!CGAffineTransformIsIdentity(&v9) && ([(MotionBlurEngine *)self preferredTransform], [(MotionBlurEngine *)self preferredTransform], v4 = atan2(v8, __x), v5 = (v4 * 180.0) / 3.14159265, v5 == 180.0))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (void)initExtSubModules
{
  kdebug_trace();
  if (self->_blurNeeded)
  {
    v3 = [[Synthesis_Ext alloc] initWithMode:self->_usage Device:self->_device CommandQueue:self->_commandQueue];
    synthesis = self->_synthesis;
    self->_synthesis = v3;

    v5 = objc_alloc_init(VEScaler);
    scaler = self->_scaler;
    self->_scaler = v5;

    v7 = [[PseudoDepthGenerator alloc] initWithDevice:self->_device commandQueue:self->_commandQueue];
    pseudoDepthGenerator = self->_pseudoDepthGenerator;
    self->_pseudoDepthGenerator = v7;

    v9 = [[FlowUpscale alloc] initWithDevice:self->_device commandQueue:self->_commandQueue];
    flowUpscale = self->_flowUpscale;
    self->_flowUpscale = v9;
  }

  if (self->_synthesis && self->_scaler && self->_pseudoDepthGenerator && self->_flowUpscale && self->_blurNeeded)
  {
    v11 = 1;
  }

  else
  {
    v11 = 3;
  }

  [(MotionBlurEngine *)self setStateExt:v11];
  v12 = [(ImageProcessor_Ext *)[ImageProcessor_VSA alloc] initWithUsage:self->_usage device:self->_device commandQueue:self->_commandQueue opticalFlowModeOnly:0];
  imageProcessor = self->_imageProcessor;
  self->_imageProcessor = v12;

  [(ImageProcessor_Ext *)self->_imageProcessor setFirstRotation:self->_firstRotation];
  [(ImageProcessor_Ext *)self->_imageProcessor setSecondRotation:self->_secondRotation];

  kdebug_trace();
}

- (BOOL)startSessionWithQualityMode:(int64_t)mode useExternalFlow:(BOOL)flow streamingMode:(BOOL)streamingMode pseudoDepth:(BOOL)depth error:(id *)error
{
  depthCopy = depth;
  v25 = *MEMORY[0x277D85DE8];
  if (![(MotionBlurEngine *)self stateExt]|| [(MotionBlurEngine *)self stateExt]== 3 && self->_opticalFlowNeeded)
  {
    v23 = 7;
    goto LABEL_17;
  }

  if ([(MotionBlurEngine *)self stateExt]== 2)
  {
    v23 = 4;
    goto LABEL_17;
  }

  [(MotionBlurEngine *)self setStateExt:2];
  self->_useExternalFlow = flow;
  self->_streamingMode = streamingMode;
  self->_pseudoDepth = depthCopy;
  self->_synthesisMode = 5;
  if ((mode - 1) >= 2)
  {
    if (mode == 3)
    {
      v13 = 0;
      goto LABEL_9;
    }

    v23 = 12;
LABEL_17:
    [MotionBlurEngine startSessionWithQualityMode:v23 useExternalFlow:error streamingMode:v24 pseudoDepth:? error:?];
    return v24[0];
  }

  v13 = 1;
LABEL_9:
  self->_imageGuideUpscale = v13;
  self->_flowFailureDetection = v13;
  self->_postprocessOutput = v13;
  [(ImageProcessor_Ext *)self->_imageProcessor setPseudoDepth:depthCopy];
  [(MotionBlurEngine *)self setPropertiesFromDefaults];
  if (self->_blurNeeded)
  {
    [(MotionBlurEngine *)self configureSynthesis];
  }

  [(MotionBlurEngine *)self allocateInternalBuffers];
  if ((global_logLevel & 4) != 0)
  {
    v14 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      v24[0] = 67109120;
      v24[1] = [(MotionBlurEngine *)self usage];
      _os_log_impl(&dword_24874B000, v15, OS_LOG_TYPE_INFO, "[VSA] Session started successfully [usage:%d]\n", v24, 8u);
    }
  }

  v16 = MEMORY[0x277CC0898];
  v17 = *MEMORY[0x277CC0898];
  *&self->_lastFramePts.value = *MEMORY[0x277CC0898];
  v18 = *(v16 + 16);
  self->_lastFramePts.epoch = v18;
  *&self->_lastFrameDuration.value = v17;
  self->_lastFrameDuration.epoch = v18;
  self->_lastFramesToSynthesize = 0;
  date = [MEMORY[0x277CBEAA8] date];
  startTime = self->_startTime;
  self->_startTime = date;

  self->_totalFramesSynthesized = 0;
  self->_totalFramePairsProcessed = 0;
  v21 = MEMORY[0x277CC08F0];
  *(&self->_onDemandSynthesisBufferAllocation + 4) = *MEMORY[0x277CC08F0];
  *&self->_maxTimeGap.flags = *(v21 + 16);
  self->_bindTexture = 0;
  return 1;
}

- (void)setPropertiesFromDefaults
{
  keyExistsAndHasValidFormat = 1;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableGpuWaitForComplete", @"com.apple.VirtualShutterAngle", &keyExistsAndHasValidFormat);
  self->_EnableGpuWaitForComplete = 0;
  if (keyExistsAndHasValidFormat)
  {
    self->_EnableGpuWaitForComplete = AppBooleanValue != 0;
  }
}

- (void)configureSynthesis
{
  usage = [(MotionBlurEngine *)self usage];
  [(Synthesis_Ext *)self->_synthesis setSynthesisMode:self->_synthesisMode];
  [(Synthesis_Ext *)self->_synthesis switchUsageTo:usage];
  [(Synthesis_Ext *)self->_synthesis setPseudoDepth:[(MotionBlurEngine *)self pseudoDepth]];
  [(Synthesis_Ext *)self->_synthesis setPostprocessOutput:[(MotionBlurEngine *)self postprocessOutput]];
  [(Synthesis_Ext *)self->_synthesis setImage2motion:[(MotionBlurEngine *)self image2motion]];
  [(PseudoDepthGenerator *)self->_pseudoDepthGenerator setPseudoDepth:[(MotionBlurEngine *)self pseudoDepth]];
  [(PseudoDepthGenerator *)self->_pseudoDepthGenerator setFlowFailureDetection:[(MotionBlurEngine *)self flowFailureDetection]];
  [(FlowUpscale *)self->_flowUpscale setImageGuideUpscale:[(MotionBlurEngine *)self imageGuideUpscale]];
  self->_firstFrame = 1;
  [(VEMetalBase *)self->_synthesis setEnableGpuWaitForComplete:self->_EnableGpuWaitForComplete];
  [(Synthesis_Ext *)self->_synthesis setDebugImage:self->_debugImage];
  [(VEMetalBase *)self->_pseudoDepthGenerator setEnableGpuWaitForComplete:self->_EnableGpuWaitForComplete];
  [(PseudoDepthGenerator *)self->_pseudoDepthGenerator setDebugImage:self->_debugImage];
  [(VEMetalBase *)self->_flowUpscale setEnableGpuWaitForComplete:self->_EnableGpuWaitForComplete];
  synthesis = self->_synthesis;
  EnableGpuWaitForComplete = self->_EnableGpuWaitForComplete;

  [(Synthesis_Ext *)synthesis configSubModules:EnableGpuWaitForComplete];
}

- (void)dealloc
{
  imageProcessor = self->_imageProcessor;
  self->_imageProcessor = 0;

  [(MotionBlurEngine *)self releaseInternalBuffers];
  [(Synthesis_Ext *)self->_synthesis releaseResources];
  [(PseudoDepthGenerator *)self->_pseudoDepthGenerator releaseResources];
  [(FlowUpscale *)self->_flowUpscale releaseResources];
  synthesis = self->_synthesis;
  self->_synthesis = 0;

  scaler = self->_scaler;
  self->_scaler = 0;

  pseudoDepthGenerator = self->_pseudoDepthGenerator;
  self->_pseudoDepthGenerator = 0;

  flowUpscale = self->_flowUpscale;
  self->_flowUpscale = 0;

  v8.receiver = self;
  v8.super_class = MotionBlurEngine;
  [(MotionBlurEngine *)&v8 dealloc];
}

- (void)releaseInternalBuffers
{
  if (!self->_useExternalFlow)
  {
    flowForward = self->_flowForward;
    if (flowForward)
    {
      CVPixelBufferRelease(flowForward);
    }

    flowBackward = self->_flowBackward;
    if (flowBackward)
    {
      CVPixelBufferRelease(flowBackward);
    }
  }

  upscaleFlow = self->_upscaleFlow;
  if (upscaleFlow)
  {
    CVPixelBufferRelease(upscaleFlow);
  }

  depth = self->_depth;
  if (depth)
  {
    CVPixelBufferRelease(depth);
  }

  remainedFlowErrorMask = self->_remainedFlowErrorMask;
  if (remainedFlowErrorMask)
  {
    CVPixelBufferRelease(remainedFlowErrorMask);
  }

  prevBackwardFlow = self->_prevBackwardFlow;
  if (prevBackwardFlow)
  {
    CVPixelBufferRelease(prevBackwardFlow);
  }

  self->_prevBackwardFlow = 0;
  self->_flowForward = 0;
  self->_flowBackward = 0;
  self->_remainedFlowErrorMask = 0;
  self->_depth = 0;
  self->_upscaleFlow = 0;
}

- (id)errorWithErrorCode:(int64_t)code
{
  v4 = &stru_285B30308;
  if (code == 7)
  {
    v4 = @"VSA failed to create sub-modules.";
  }

  if (code == 3)
  {
    v5 = @"Session has not started yet. Call startSession first";
  }

  else
  {
    v5 = v4;
  }

  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v5 forKey:*MEMORY[0x277CCA450]];
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.VirtualShutterAngle" code:code userInfo:v6];

  return v7;
}

- (void)updateLastFramePts:(id *)pts duration:(id *)duration toSynthesize:(unint64_t)synthesize
{
  v5 = *&pts->var0;
  self->_lastFramePts.epoch = pts->var3;
  *&self->_lastFramePts.value = v5;
  var3 = duration->var3;
  *&self->_lastFrameDuration.value = *&duration->var0;
  self->_lastFrameDuration.epoch = var3;
  self->_lastFramesToSynthesize = synthesize;
}

- (BOOL)motionBlurBetweenFirstFrame:(id)frame secondFrame:(id)secondFrame forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow depth:(__CVBuffer *)depth shutterAngle:(id)angle destination:(__CVBuffer *)destination withError:(id *)self0
{
  frameCopy = frame;
  secondFrameCopy = secondFrame;
  angleCopy = angle;
  if ([(MotionBlurEngine *)self stateExt]!= 2)
  {
    v28 = 3;
    v24 = angleCopy;
LABEL_34:
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.VirtualShutterAngle" code:v28 userInfo:0];
      *error = v25 = 0;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_30;
  }

  ++self->_totalFramePairsProcessed;
  memset(&v34, 0, sizeof(v34));
  if (!secondFrameCopy)
  {
    memset(&lhs, 0, sizeof(lhs));
    if (frameCopy)
    {
      goto LABEL_4;
    }

LABEL_6:
    memset(&rhs, 0, sizeof(rhs));
    goto LABEL_7;
  }

  [secondFrameCopy presentationTimeStamp];
  if (!frameCopy)
  {
    goto LABEL_6;
  }

LABEL_4:
  [frameCopy presentationTimeStamp];
LABEL_7:
  CMTimeSubtract(&v34, &lhs, &rhs);
  rhs = *(&self->_onDemandSynthesisBufferAllocation + 4);
  time2 = v34;
  CMTimeMaximum(&lhs, &rhs, &time2);
  *(&self->_onDemandSynthesisBufferAllocation + 4) = lhs;
  v17 = getCurrentTimeStamp();
  v18 = -[ImageProcessor_Ext getPixelAttributesForBuffer:](self->_imageProcessor, "getPixelAttributesForBuffer:", [frameCopy buffer]);
  if (v18 || ((width = self->_width, width == CVPixelBufferGetWidth([frameCopy buffer])) && !-[ImageProcessor_Ext isYUV](self->_imageProcessor, "isYUV") ? (v20 = 0) : (v20 = 1), (v18 = -[ImageProcessor_Ext preserveCMAttachmentFirstFrame:secondFrame:](self->_imageProcessor, "preserveCMAttachmentFirstFrame:secondFrame:", frameCopy, secondFrameCopy)) != 0 || (flow ? (v21 = backwardFlow == 0) : (v21 = 1), v21 ? (v22 = 0) : (v22 = 1), self->_useExternalFlow = v22, self->_useExternalDepth = depth != 0, kdebug_trace(), (v18 = -[ImageProcessor_Ext preProcessFirstInput:secondInput:waitForCompletion:](self->_imageProcessor, "preProcessFirstInput:secondInput:waitForCompletion:", objc_msgSend(frameCopy, "buffer"), objc_msgSend(secondFrameCopy, "buffer"), 0)) != 0)))
  {
    v28 = v18;
    v24 = angleCopy;
LABEL_33:

    goto LABEL_34;
  }

  kdebug_trace();
  kdebug_trace();
  if (self->_useExternalFlow)
  {
    self->_flowForward = flow;
    self->_flowBackward = backwardFlow;
  }

  if (self->_useExternalDepth)
  {
    self->_depth = depth;
  }

  v23 = [(MotionBlurEngine *)self flowUpscalingAndPseudoDepthComputingWarmup:0];
  v24 = angleCopy;
  if (v23 || (v23 = [(MotionBlurEngine *)self synthesizeMotionBlurredFrames:frameCopy second:secondFrameCopy timeScale:angleCopy destination:destination scalerEnabled:v20]) != 0)
  {
    v28 = v23;
    goto LABEL_33;
  }

  if (secondFrameCopy)
  {
    [secondFrameCopy presentationTimeStamp];
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  rhs = v34;
  v25 = 1;
  [(MotionBlurEngine *)self updateLastFramePts:&lhs duration:&rhs toSynthesize:1];
  kdebug_trace();
  v26 = getCurrentTimeStamp();

LABEL_30:
  return v25;
}

- (BOOL)motionBlurForCurrentFrame:(id)frame futureFrame:(id)futureFrame prevFrame:(id)prevFrame prevFlowPair:(id *)pair currFlowPair:(id *)flowPair shutterAngle:(id)angle destination:(__CVBuffer *)destination withError:(id *)self0
{
  frameCopy = frame;
  futureFrameCopy = futureFrame;
  prevFrameCopy = prevFrame;
  angleCopy = angle;
  if ([(MotionBlurEngine *)self stateExt]== 2)
  {
    v19 = 12;
    if (frameCopy && destination)
    {
      ++self->_totalFramePairsProcessed;
      memset(&v43, 0, sizeof(v43));
      if (futureFrameCopy)
      {
        [futureFrameCopy presentationTimeStamp];
      }

      else
      {
        memset(&lhs, 0, sizeof(lhs));
      }

      [frameCopy presentationTimeStamp];
      CMTimeSubtract(&v43, &lhs, &rhs);
      rhs = *(&self->_onDemandSynthesisBufferAllocation + 4);
      time2 = v43;
      CMTimeMaximum(&lhs, &rhs, &time2);
      *(&self->_onDemandSynthesisBufferAllocation + 4) = lhs;
      v20 = getCurrentTimeStamp();
      v21 = -[ImageProcessor_Ext getPixelAttributesForBuffer:](self->_imageProcessor, "getPixelAttributesForBuffer:", [frameCopy buffer]);
      if (v21)
      {
        v19 = v21;
      }

      else
      {
        width = self->_width;
        v38 = width != CVPixelBufferGetWidth([frameCopy buffer]) || -[ImageProcessor_Ext isYUV](self->_imageProcessor, "isYUV");
        pairCopy = pair;
        self->_firstFrame = [prevFrameCopy buffer] == 0;
        buffer = [futureFrameCopy buffer];
        self->_lastFrame = buffer == 0;
        if (buffer)
        {
          lastFrame = 0;
          v26 = prevFrameCopy;
        }

        else
        {

          v26 = 0;
          lastFrame = self->_lastFrame;
          flowPair = pairCopy;
          futureFrameCopy = prevFrameCopy;
          pairCopy = 0;
        }

        v27 = !self->_streamingMode || self->_streamingModeChange;
        [(PseudoDepthGenerator *)self->_pseudoDepthGenerator updateUsePreviousInfoFromIsFirstFrame:self->_firstFrame isLastFrame:lastFrame isRandomAccessMode:v27 effectiveResolution:1 isInitialization:self->_effectiveFlowResolution.width, self->_effectiveFlowResolution.height];
        if ((!self->_streamingMode || self->_streamingModeChange) && !self->_firstFrame && !self->_lastFrame && (v28 = [(MotionBlurEngine *)self warmpupComputationFromPrevFrame:v26 currFrame:frameCopy prevFlowPair:pairCopy]) != 0 || (v28 = [(ImageProcessor_Ext *)self->_imageProcessor preserveCMAttachmentFirstFrame:frameCopy secondFrame:futureFrameCopy]) != 0)
        {
          v19 = v28;
          prevFrameCopy = v26;
        }

        else
        {
          v29 = v26;
          self->_useExternalFlow = flowPair != 0;
          kdebug_trace();
          [(ImageProcessor_Ext *)self->_imageProcessor setPseudoDepth:self->_pseudoDepth];
          v30 = -[ImageProcessor_Ext preProcessFirstInput:secondInput:waitForCompletion:](self->_imageProcessor, "preProcessFirstInput:secondInput:waitForCompletion:", [frameCopy buffer], objc_msgSend(futureFrameCopy, "buffer"), 0);
          if (!v30)
          {
            kdebug_trace();
            kdebug_trace();
            if (flowPair)
            {
              var0 = flowPair->var0;
              if (self->_lastFrame)
              {
                var1 = flowPair->var1;
                flowPair->var0 = var1;
                flowPair->var1 = var0;
                var0 = var1;
              }

              self->_flowForward = var0;
              self->_flowBackward = flowPair->var1;
              self->_bindTexture = 0;
            }

            v30 = [(MotionBlurEngine *)self flowUpscalingAndPseudoDepthComputingWarmup:0];
            if (!v30)
            {
              v33 = angleCopy;
              v34 = [(MotionBlurEngine *)self synthesizeMotionBlurredFrames:frameCopy second:futureFrameCopy timeScale:angleCopy destination:destination scalerEnabled:v38];
              if (!v34)
              {
                if (futureFrameCopy)
                {
                  [futureFrameCopy presentationTimeStamp];
                }

                else
                {
                  memset(&lhs, 0, sizeof(lhs));
                }

                rhs = v43;
                v35 = 1;
                [(MotionBlurEngine *)self updateLastFramePts:&lhs duration:&rhs toSynthesize:1];
                kdebug_trace();
                v36 = getCurrentTimeStamp();

                goto LABEL_35;
              }

              v19 = v34;
              prevFrameCopy = v26;
              goto LABEL_42;
            }
          }

          v19 = v30;
          prevFrameCopy = v26;
        }
      }

      v33 = angleCopy;
LABEL_42:

      goto LABEL_43;
    }
  }

  else
  {
    v19 = 3;
  }

  v33 = angleCopy;
LABEL_43:
  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.VirtualShutterAngle" code:v19 userInfo:0];
    *error = v35 = 0;
  }

  else
  {
    v35 = 0;
  }

  v29 = prevFrameCopy;
LABEL_35:

  return v35;
}

- (CGAffineTransform)preferredTransform
{
  v3 = *&self[9].d;
  *&retstr->a = *&self[9].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[9].ty;
  return self;
}

- (void)setPreferredTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_preferredTransform.c = *&transform->c;
  *&self->_preferredTransform.tx = v4;
  *&self->_preferredTransform.a = v3;
}

- (MotionBlurEngine)initWithWidth:(unint64_t)width height:(unint64_t)height vsaPipeMode:(int64_t)mode
{
  v21.receiver = self;
  v21.super_class = MotionBlurEngine;
  v8 = [(MotionBlurEngine *)&v21 init];
  if (!v8)
  {
    goto LABEL_2;
  }

  if ((global_logLevel & 4) != 0)
  {
    v10 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_24874B000, v10, OS_LOG_TYPE_INFO, "Initializing Motion Blur Engine .\n", v20, 2u);
    }
  }

  *(v8 + 5) = width;
  *(v8 + 6) = height;
  *(v8 + 7) = width;
  *(v8 + 8) = height;
  UsageFromSize = getUsageFromSize(width, height);
  *(v8 + 51) = UsageFromSize;
  if (UsageFromSize == -1)
  {
LABEL_2:
    v9 = 0;
  }

  else
  {
    v12 = [v8 getFrameRotation:UsageFromSize];
    *(v8 + 11) = v12;
    *(v8 + 12) = v12;
    v13 = *(v8 + 51);
    if ((v13 & 0x1000) != 0)
    {
      v14 = vcvtq_f64_u64(*(v8 + 40));
      *(v8 + 56) = vextq_s8(v14, v14, 8uLL);
    }

    *(v8 + 51) = v13 & 0xFFF;
    getAlignedInputFrameSizeForUsage(v13 & 0xFFF, v8 + 5, v8 + 6);
    *(v8 + 48) = mode;
    v8[392] = (mode - 1) < 2;
    v8[393] = (mode & 0xFFFFFFFFFFFFFFFDLL) == 0;
    *(v8 + 197) = 256;
    v8[216] = 0;
    [*(v8 + 1) setFramePipeline:1];
    v15 = MTLCreateSystemDefaultDevice();
    v16 = *(v8 + 46);
    *(v8 + 46) = v15;

    newCommandQueue = [*(v8 + 46) newCommandQueue];
    v18 = *(v8 + 47);
    *(v8 + 47) = newCommandQueue;

    [v8 initExtSubModules];
    if ((v8[216] & 1) == 0 && v8[393] == 1)
    {
      [*(v8 + 1) allocateResourcesFromWidth:*(v8 + 5) Height:*(v8 + 6)];
    }

    v9 = v8;
  }

  return v9;
}

- (int64_t)endSession
{
  if ([(MotionBlurEngine *)self stateExt]!= 2)
  {
    return 3;
  }

  [(MotionBlurEngine *)self setStateExt:1];
  imageProcessor = self->_imageProcessor;
  self->_imageProcessor = 0;

  [(MotionBlurEngine *)self releaseInternalBuffers];
  return 0;
}

- (int64_t)allocateInternalBuffers
{
  [(MotionBlurEngine *)self releaseInternalBuffers];
  *v3.i32 = getFlowDownscaleRatio(self->_width, self->_height, 1);
  v4 = vcvtq_u64_f64(vcvtq_f64_f32(vdiv_f32(vcvt_f32_f64(vcvtq_f64_u64(*&self->_width)), vdup_lane_s32(v3, 0))));
  *&self->_flowWidth = v4;
  v5 = vmovn_s64(vcvtq_s64_f64(vdivq_f64(self->_effectiveFrameResolution, vdupq_lane_s64(COERCE__INT64(*v3.i32), 0))));
  v6.i64[0] = v5.i32[0];
  v6.i64[1] = v5.i32[1];
  self->_effectiveFlowResolution = vcvtq_f64_s64(v6);
  if (self->_blurNeeded)
  {
    result = [(MotionBlurEngine *)self allocateSubmodulesBuffersWithFlowWidth:*&v4 flowHeight:4 depthFactor:?];
    if (result)
    {
      return result;
    }

    if (!self->_upscaleFlow)
    {
      PixelBuffer = CreatePixelBuffer(self->_width, self->_height, 843264104);
      self->_upscaleFlow = PixelBuffer;
      if (!PixelBuffer)
      {
        return 9;
      }
    }

    if (!self->_depth)
    {
      v9 = CreatePixelBuffer(self->_width, self->_height, 1278226536);
      self->_depth = v9;
      if (!v9)
      {
        return 9;
      }
    }
  }

  return 0;
}

- (int64_t)allocateSubmodulesBuffersWithFlowWidth:(unint64_t)width flowHeight:(unint64_t)height depthFactor:(unint64_t)factor
{
  remainedFlowErrorMask = self->_remainedFlowErrorMask;
  if (remainedFlowErrorMask)
  {
    CVPixelBufferRelease(remainedFlowErrorMask);
  }

  PixelBuffer = CreatePixelBuffer(width, height, 1278226536);
  self->_remainedFlowErrorMask = PixelBuffer;
  if (!PixelBuffer)
  {
    return 9;
  }

  if (!self->_imageGuideUpscale || ([(FlowUpscale *)self->_flowUpscale releaseResources], (result = [(FlowUpscale *)self->_flowUpscale allocateInternalBuffersWithLrWidth:width lrHeight:height hrWidth:self->_width hrHeight:self->_height interleaveFactor:1]) == 0))
  {
    if (self->_flowFailureDetection || self->_pseudoDepth)
    {
      [(PseudoDepthGenerator *)self->_pseudoDepthGenerator releaseResources];
      result = [(PseudoDepthGenerator *)self->_pseudoDepthGenerator allocateBufferAndTextureWithFlowWidth:width flowHeight:height depthWidth:vcvts_n_f32_u64(self->_width depthHeight:2uLL) interleaveFactor:vcvts_n_f32_u64(self->_height, 2uLL), 1];
      if (!result)
      {
        prevBackwardFlow = self->_prevBackwardFlow;
        if (prevBackwardFlow)
        {
          CVPixelBufferRelease(prevBackwardFlow);
        }

        v12 = CreatePixelBuffer(width, height, 843264104);
        self->_prevBackwardFlow = v12;
        if (v12)
        {
          return 0;
        }

        else
        {
          return 9;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (int64_t)bindWithMTLTextureFromDownscaledImage:(__CVBuffer *)image downscaledSecond:(__CVBuffer *)second forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow prevBackwardFlow:(__CVBuffer *)prevBackwardFlow remianedErrorMask:(__CVBuffer *)mask fullresImage:(__CVBuffer *)fullresImage upscaledFlow:(__CVBuffer *)self0 depth:(__CVBuffer *)self1 interleaveFactor:(unint64_t)self2
{
  result = 12;
  if (image && second && flow && backwardFlow && prevBackwardFlow && mask && fullresImage && upscaledFlow && depth)
  {
    if (self->_streamingMode && !self->_streamingModeChange)
    {
      if (self->_bindTexture)
      {
        return 0;
      }

      p_bindTexture = &self->_bindTexture;
    }

    else
    {
      p_bindTexture = &self->_bindTexture;
      self->_bindTexture = 0;
    }

    if ((!self->_pseudoDepth || (createRGBATextureFromCVPixelBuffer(image, self->_device), v17 = objc_claimAutoreleasedReturnValue(), downscaleFirstImageTexture = self->_downscaleFirstImageTexture, self->_downscaleFirstImageTexture = v17, downscaleFirstImageTexture, createRGBATextureFromCVPixelBuffer(second, self->_device), v19 = objc_claimAutoreleasedReturnValue(), downscaleSecondImageTexture = self->_downscaleSecondImageTexture, self->_downscaleSecondImageTexture = v19, downscaleSecondImageTexture, self->_downscaleSecondImageTexture) && (OUTLINED_FUNCTION_7(), createTexturesFromCVPixelBuffer(v21, v22, v23, v24), v25 = objc_claimAutoreleasedReturnValue(), flowForwardTexture = self->_flowForwardTexture, self->_flowForwardTexture = v25, flowForwardTexture, self->_flowForwardTexture) && (OUTLINED_FUNCTION_7(), createTexturesFromCVPixelBuffer(v27, v28, v29, v30), v31 = objc_claimAutoreleasedReturnValue(), prevBackwardFlowTexture = self->_prevBackwardFlowTexture, self->_prevBackwardFlowTexture = v31, prevBackwardFlowTexture, self->_prevBackwardFlowTexture)) && (createTexturesFromCVPixelBuffer(mask, self->_device, factor, 1uLL), v33 = objc_claimAutoreleasedReturnValue(), remainedFlowErrorMaskTexture = self->_remainedFlowErrorMaskTexture, self->_remainedFlowErrorMaskTexture = v33, remainedFlowErrorMaskTexture, self->_remainedFlowErrorMaskTexture) && (OUTLINED_FUNCTION_7(), createTexturesFromCVPixelBuffer(v35, v36, v37, v38), v39 = objc_claimAutoreleasedReturnValue(), flowBackwardTexture = self->_flowBackwardTexture, self->_flowBackwardTexture = v39, flowBackwardTexture, self->_flowBackwardTexture) && (createTexturesFromCVPixelBuffer(depth, self->_device, factor, 1uLL), v41 = objc_claimAutoreleasedReturnValue(), depthTexture = self->_depthTexture, self->_depthTexture = v41, depthTexture, self->_depthTexture) && (OUTLINED_FUNCTION_7(), createTexturesFromCVPixelBuffer(v43, v44, v45, v46), v47 = objc_claimAutoreleasedReturnValue(), upscaleFlowTexture = self->_upscaleFlowTexture, self->_upscaleFlowTexture = v47, upscaleFlowTexture, self->_upscaleFlowTexture) && (createTexturesFromCVPixelBuffer(fullresImage, self->_device, 4, 1uLL), v49 = objc_claimAutoreleasedReturnValue(), fullresGuideImageTexture = self->_fullresGuideImageTexture, self->_fullresGuideImageTexture = v49, fullresGuideImageTexture, self->_fullresGuideImageTexture))
    {
      result = 0;
      *p_bindTexture = 1;
    }

    else
    {
      return 9;
    }
  }

  return result;
}

- (int64_t)flowUpscalingAndPseudoDepthComputingWarmup:(BOOL)warmup
{
  warmupCopy = warmup;
  OUTLINED_FUNCTION_0_0();
  result = [(MotionBlurEngine *)self bindWithMTLTextureFromDownscaledImage:[(ImageProcessor_Ext *)self->_imageProcessor packedDownscaledFirstRGB] downscaledSecond:[(ImageProcessor_Ext *)self->_imageProcessor packedDownscaledSecondRGB] forwardFlow:self->_flowForward backwardFlow:self->_flowBackward prevBackwardFlow:self->_prevBackwardFlow remianedErrorMask:self->_remainedFlowErrorMask fullresImage:[(ImageProcessor_Ext *)self->_imageProcessor unifiedRGB] upscaledFlow:self->_upscaleFlow depth:self->_depth interleaveFactor:1];
  if (!result)
  {
    if (!self->_pseudoDepth && !self->_flowFailureDetection || (LOBYTE(v16) = warmupCopy, LODWORD(v6) = 1.0, (result = [(PseudoDepthGenerator *)self->_pseudoDepthGenerator flowFailureAndCorrectionFromDownscaleFirstImage:self->_downscaleFirstImageTexture downscaleSecondImage:self->_downscaleSecondImageTexture backwardFlow:self->_flowBackwardTexture forwardFlow:self->_flowForwardTexture prevBackFlow:self->_prevBackwardFlowTexture remainedErrorMask:self->_remainedFlowErrorMaskTexture effectiveResolution:self->_effectiveFlowResolution.width interleave_factor:self->_effectiveFlowResolution.height timeScale:v6 warmup:1, v16]) == 0))
    {
      if (warmupCopy)
      {
        goto LABEL_19;
      }

      if (self->_pseudoDepth)
      {
        if ([(PseudoDepthGenerator *)self->_pseudoDepthGenerator sceneChange]&& !self->_lastFrame)
        {
          v7 = 360;
          if (self->_firstFrame)
          {
            v7 = 280;
          }
        }

        else
        {
          v7 = 280;
        }

        flowUpscale = self->_flowUpscale;
        fullresGuideImageTexture = self->_fullresGuideImageTexture;
        flowBackwardTexture = *(&self->super.isa + v7);
      }

      else
      {
        flowUpscale = self->_flowUpscale;
        fullresGuideImageTexture = self->_fullresGuideImageTexture;
        flowBackwardTexture = self->_flowBackwardTexture;
      }

      result = [(FlowUpscale *)flowUpscale flowUpscalingFromImage:fullresGuideImageTexture inputFlow:flowBackwardTexture outputFlow:self->_upscaleFlowTexture interleave_factor:1];
      if (!result)
      {
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_0_0();
        pseudoDepthGenerator = self->_pseudoDepthGenerator;
        if (self->_pseudoDepth)
        {
          LODWORD(v11) = 1.0;
          result = [(PseudoDepthGenerator *)pseudoDepthGenerator PseudoDepthFromBackwardFlow:self->_flowBackwardTexture forwardFlow:self->_flowForwardTexture fullresFlow:self->_upscaleFlowTexture depth:self->_depthTexture prevBackFlow:self->_prevBackwardFlowTexture flowErrorMask:self->_remainedFlowErrorMaskTexture interleave_factor:v11 timeScale:1 downscale_factor:4];
          if (result)
          {
            return result;
          }
        }

        else
        {
          rgbaFirst = [(ImageProcessor_Ext *)self->_imageProcessor rgbaFirst];
          rgbaSecond = [(ImageProcessor_Ext *)self->_imageProcessor rgbaSecond];
          LODWORD(v15) = 1.0;
          result = [(PseudoDepthGenerator *)pseudoDepthGenerator approximateDepthWithBackwarpLossFromFirstImage:rgbaFirst secondImage:rgbaSecond fullresFlow:self->_upscaleFlow depth:self->_depth interleavFactor:1 timeScale:v15];
          if (result)
          {
            return result;
          }
        }

LABEL_19:
        [OUTLINED_FUNCTION_1_16() updateUsePreviousInfoFromIsFirstFrame:self->_effectiveFlowResolution.width isLastFrame:self->_effectiveFlowResolution.height isRandomAccessMode:? effectiveResolution:? isInitialization:?];
        OUTLINED_FUNCTION_0_0();
        return 0;
      }
    }
  }

  return result;
}

- (int64_t)warmpupComputationFromPrevFrame:(id)frame currFrame:(id)currFrame prevFlowPair:(id *)pair
{
  frameCopy = frame;
  currFrameCopy = currFrame;
  v10 = currFrameCopy;
  v11 = 12;
  if (frameCopy && currFrameCopy)
  {
    v12 = [(ImageProcessor_Ext *)self->_imageProcessor preserveCMAttachmentFirstFrame:frameCopy secondFrame:currFrameCopy];
    if (!v12)
    {
      OUTLINED_FUNCTION_0_0();
      v12 = -[ImageProcessor_Ext preProcessFirstInput:secondInput:waitForCompletion:](self->_imageProcessor, "preProcessFirstInput:secondInput:waitForCompletion:", [frameCopy buffer], objc_msgSend(v10, "buffer"), 0);
      if (!v12)
      {
        OUTLINED_FUNCTION_0_0();
        self->_flowForward = pair->var0;
        self->_flowBackward = pair->var1;
        v12 = [(MotionBlurEngine *)self flowUpscalingAndPseudoDepthComputingWarmup:1];
        if (!v12)
        {
          v12 = [(ImageProcessor_Ext *)self->_imageProcessor restoreCMAttachmentToFirstFrame:frameCopy secondFrame:v10 synthesizedFrame:0];
        }
      }
    }

    v11 = v12;
  }

  return v11;
}

- (int64_t)synthesizeMotionBlurredFrames:(id)frames second:(id)second timeScale:(id)scale destination:(__CVBuffer *)destination scalerEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  framesCopy = frames;
  secondCopy = second;
  scaleCopy = scale;
  v15 = 12;
  if (framesCopy && secondCopy && destination)
  {
    OUTLINED_FUNCTION_0_0();
    v16 = [(Synthesis_Ext *)self->_synthesis createFeaturesFromImage:[(ImageProcessor_Ext *)self->_imageProcessor unifiedRGB] flowForward:self->_flowForward flowBackward:self->_flowBackward depth:self->_depth fullresFlow:self->_upscaleFlow remainedErrorMask:self->_remainedFlowErrorMask];
    if (v16)
    {
      v15 = v16;
    }

    else
    {
      [scaleCopy floatValue];
      v18 = v17;
      v19 = getCurrentTimeStamp();
      CMRemoveAllAttachments(destination);
      LODWORD(v20) = v18;
      v21 = [(MotionBlurEngine *)self synthesizeMotionBlurredFrameForTimeScale:destination destination:enabledCopy scalerEnabled:0 frameIndex:1 lastFrame:v20];
      if (v21)
      {
        v15 = v21;
      }

      else
      {
        v22 = getCurrentTimeStamp();
        [(Synthesis_Ext *)self->_synthesis releaseFeatures];
        if (self->_onDemandSynthesisBufferAllocation)
        {
          [(Synthesis_Ext *)self->_synthesis releaseResources];
        }

        v15 = [(ImageProcessor_Ext *)self->_imageProcessor restoreCMAttachmentToFirstFrame:framesCopy secondFrame:secondCopy synthesizedFrame:destination];
        if (!v15)
        {
          ++self->_totalFramesSynthesized;
          OUTLINED_FUNCTION_0_0();
        }
      }
    }
  }

  return v15;
}

- (int64_t)synthesizeMotionBlurredFrameForTimeScale:(float)scale destination:(__CVBuffer *)destination scalerEnabled:(BOOL)enabled frameIndex:(unint64_t)index lastFrame:(BOOL)frame
{
  if (!destination)
  {
    return 12;
  }

  v12 = getCurrentTimeStamp();
  v13 = [(ImageProcessor_VSA *)self->_imageProcessor useScalerForPostprocessOutput:destination];
  PixelBuffer = destination;
  if (v13)
  {
    PixelBuffer = CreatePixelBuffer(self->_width, self->_height, [(ImageProcessor_Ext *)self->_imageProcessor RGBAFormat]);
  }

  *&v14 = scale;
  v16 = [(Synthesis_Ext *)self->_synthesis synthesizeFrameForTimeScale:index frameIndex:PixelBuffer destination:v14];
  v17 = getCurrentTimeStamp();
  v18 = getCurrentTimeStamp();
  if (![(ImageProcessor_Ext *)self->_imageProcessor isFullRange])
  {
    CMSetAttachments(destination, [(ImageProcessor_Ext *)self->_imageProcessor anchorFrameCMAttachment], 1u);
  }

  if (frame)
  {
    v19 = 1;
  }

  else
  {
    v19 = [(Synthesis_Ext *)self->_synthesis framePipeline]^ 1;
  }

  v20 = getCurrentTimeStamp();
  if (!v13 || (v16 = [(ImageProcessor_VSA *)self->_imageProcessor postprocessFrameWithScaler:PixelBuffer output:destination waitForCompletion:v19], CVPixelBufferRelease(PixelBuffer), !v16))
  {
    v21 = getCurrentTimeStamp();
  }

  return v16;
}

- (id)startSessionWithQualityMode:(_BYTE *)a3 useExternalFlow:streamingMode:pseudoDepth:error:.cold.1(id result, void *a2, _BYTE *a3)
{
  if (a2)
  {
    result = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.VirtualShutterAngle" code:result userInfo:0];
    *a2 = result;
  }

  *a3 = 0;
  return result;
}

@end