@interface VSAProcessor
- (BOOL)finishProcessing;
- (BOOL)processWithMotionBlurParams:(id)params error:(id *)error;
- (BOOL)startSessionWithMotionBlurConfig:(id)config error:(id *)error;
- (VSAProcessor)initWithFrameWidth:(int64_t)width FrameHeight:(int64_t)height usePrecomputedFlow:(BOOL)flow;
@end

@implementation VSAProcessor

- (BOOL)processWithMotionBlurParams:(id)params error:(id *)error
{
  paramsCopy = params;
  v7 = paramsCopy;
  if (!paramsCopy)
  {
    if (!error)
    {
      goto LABEL_72;
    }

    v91 = @"processWithMotionBlurParams: Invalid input motionBlurParams";
LABEL_70:
    v92 = 12;
    goto LABEL_71;
  }

  if (!self->_motionBlurEngine)
  {
    if (error)
    {
      v91 = @"Error: Session Not Started";
      v92 = 3;
LABEL_71:
      errorMessage(v92, v91);
      *error = v64 = 0;
      goto LABEL_57;
    }

    goto LABEL_72;
  }

  sourceFrame = [paramsCopy sourceFrame];
  PixelFormatType = CVPixelBufferGetPixelFormatType([sourceFrame buffer]);
  v10 = isPixelFormatSupported(PixelFormatType);

  if ((v10 & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_72;
    }

    v91 = @"Error: Pixel Format Not Supported";
    goto LABEL_70;
  }

  sourceFrame2 = [v7 sourceFrame];
  v12 = [(BaseProcessor *)self matchPixelFormat:sourceFrame2];

  if (!v12)
  {
    if (!error)
    {
      goto LABEL_72;
    }

    v91 = @"motionBlurParams pixel format mismatch with VSAProcessor's format for the DVPFrameProcessor session";
    goto LABEL_70;
  }

  sourceFrame3 = [v7 sourceFrame];
  v14 = [(BaseProcessor *)self matchBufferResolution:sourceFrame3];

  if (!v14)
  {
    if (error)
    {
      v91 = @"motionBlurParams buffer resolution mismatch with VSAProcessor's buffer resolution for the DVPFrameProcessor session";
      goto LABEL_70;
    }

LABEL_72:
    v64 = 0;
    goto LABEL_57;
  }

  v15 = [DVPFrame alloc];
  sourceFrame4 = [v7 sourceFrame];
  buffer = [sourceFrame4 buffer];
  sourceFrame5 = [v7 sourceFrame];
  v19 = sourceFrame5;
  if (sourceFrame5)
  {
    [sourceFrame5 presentationTimeStamp];
  }

  else
  {
    v98 = 0;
    v99 = 0;
    v100 = 0;
  }

  v20 = [(DVPFrame *)v15 initWithBuffer:buffer presentationTimeStamp:&v98];

  if (!v20)
  {
    if (error)
    {
      v93 = @"Error allocating currentFrame";
LABEL_79:
      v94 = errorMessage(9, v93);
      v97 = 0;
LABEL_83:
      nextFrame = 0;
      v64 = 0;
      *error = v94;
      goto LABEL_56;
    }

LABEL_80:
    v97 = 0;
    goto LABEL_84;
  }

  previousFrame = [v7 previousFrame];
  if (previousFrame)
  {
    v22 = previousFrame;
    previousFrame2 = [v7 previousFrame];
    buffer2 = [previousFrame2 buffer];

    if (buffer2)
    {
      v25 = [DVPFrame alloc];
      previousFrame3 = [v7 previousFrame];
      buffer3 = [previousFrame3 buffer];
      previousFrame4 = [v7 previousFrame];
      v29 = previousFrame4;
      if (previousFrame4)
      {
        [previousFrame4 presentationTimeStamp];
      }

      else
      {
        v98 = 0;
        v99 = 0;
        v100 = 0;
      }

      v30 = [(DVPFrame *)v25 initWithBuffer:buffer3 presentationTimeStamp:&v98];

      v97 = v30;
      if (v30)
      {
        goto LABEL_17;
      }

      if (error)
      {
        v93 = @"Error allocating previousFrame";
        goto LABEL_79;
      }

      goto LABEL_80;
    }
  }

  v97 = 0;
LABEL_17:
  nextFrame = [v7 nextFrame];
  if (nextFrame)
  {
    nextFrame2 = [v7 nextFrame];
    buffer4 = [nextFrame2 buffer];

    if (!buffer4)
    {
      nextFrame = 0;
      goto LABEL_24;
    }

    v34 = [DVPFrame alloc];
    nextFrame3 = [v7 nextFrame];
    buffer5 = [nextFrame3 buffer];
    nextFrame4 = [v7 nextFrame];
    v38 = nextFrame4;
    if (nextFrame4)
    {
      [nextFrame4 presentationTimeStamp];
    }

    else
    {
      v98 = 0;
      v99 = 0;
      v100 = 0;
    }

    nextFrame = [(DVPFrame *)v34 initWithBuffer:buffer5 presentationTimeStamp:&v98];

    if (!nextFrame)
    {
      if (error)
      {
        v94 = errorMessage(9, @"Error allocating nextFrame");
        goto LABEL_83;
      }

LABEL_84:
      nextFrame = 0;
LABEL_85:
      v64 = 0;
      goto LABEL_56;
    }
  }

LABEL_24:
  if ([v7 motionBlurStrength] > 100 || objc_msgSend(v7, "motionBlurStrength") <= 0)
  {
    if (error)
    {
      v90 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: Invalid virtualShutterAngleDegrees %d", objc_msgSend(v7, "motionBlurStrength")];
      *error = errorMessage(12, v90);
    }

    goto LABEL_85;
  }

  v39 = MEMORY[0x277CCABB0];
  *&v40 = [v7 motionBlurStrength] / 100.0;
  v96 = [v39 numberWithFloat:v40];
  -[MotionBlurEngine setStreamingMode:](self->_motionBlurEngine, "setStreamingMode:", [v7 submissionMode] == 2);
  kdebug_trace();
  usePrecomputedFlow = self->_usePrecomputedFlow;
  previousFrame5 = [v7 previousFrame];
  flowPairs = previousFrame5;
  if (usePrecomputedFlow)
  {
    errorCopy = error;
    if (!previousFrame5)
    {
      goto LABEL_39;
    }

    previousFrame6 = [v7 previousFrame];
    buffer6 = [previousFrame6 buffer];

    if (buffer6)
    {
      flowBufferWidth = self->_flowBufferWidth;
      previousOpticalFlow = [v7 previousOpticalFlow];
      if (flowBufferWidth == CVPixelBufferGetWidth([previousOpticalFlow forwardFlow]))
      {
        flowBufferHeight = self->_flowBufferHeight;
        previousOpticalFlow2 = [v7 previousOpticalFlow];
        Height = CVPixelBufferGetHeight([previousOpticalFlow2 forwardFlow]);

        if (flowBufferHeight == Height)
        {
          previousOpticalFlow3 = [v7 previousOpticalFlow];
          flowPairs = self->_flowPairs;
          self->_flowPairs[0].forwardFlow = [previousOpticalFlow3 forwardFlow];

          previousOpticalFlow4 = [v7 previousOpticalFlow];
          self->_flowPairs[0].backwardFlow = [previousOpticalFlow4 backwardFlow];

          goto LABEL_39;
        }
      }

      else
      {
      }

      if (errorCopy)
      {
        errorMessage(8, @"Error: invalid precomputed optical flow, expect Rev2 flow 2C0h");
        *errorCopy = v64 = 0;
      }

      else
      {
        v64 = 0;
      }

      v88 = v96;
      goto LABEL_55;
    }

    flowPairs = 0;
LABEL_39:
    nextFrame5 = [v7 nextFrame];
    if (nextFrame5)
    {
      nextFrame6 = [v7 nextFrame];
      buffer7 = [nextFrame6 buffer];

      if (buffer7)
      {
        v95 = nextFrame;
        v68 = v20;
        v69 = self->_flowBufferWidth;
        nextOpticalFlow = [v7 nextOpticalFlow];
        if (v69 == CVPixelBufferGetWidth([nextOpticalFlow forwardFlow]))
        {
          v71 = self->_flowBufferHeight;
          nextOpticalFlow2 = [v7 nextOpticalFlow];
          v73 = CVPixelBufferGetHeight([nextOpticalFlow2 forwardFlow]);

          if (v71 == v73)
          {
            nextOpticalFlow3 = [v7 nextOpticalFlow];
            self->_flowPairs[1].forwardFlow = [nextOpticalFlow3 forwardFlow];
            nextFrame5 = &self->_flowPairs[1];

            nextOpticalFlow4 = [v7 nextOpticalFlow];
            self->_flowPairs[1].backwardFlow = [nextOpticalFlow4 backwardFlow];

            error = errorCopy;
            v20 = v68;
LABEL_50:
            nextFrame = v95;
            goto LABEL_53;
          }
        }

        else
        {
        }

        v20 = v68;
        if (errorCopy)
        {
          errorMessage(8, @"Error: invalid precomputed optical flow, expect Rev2 flow 2C0h");
          *errorCopy = v64 = 0;
        }

        else
        {
          v64 = 0;
        }

        goto LABEL_98;
      }

      nextFrame5 = 0;
    }

    error = errorCopy;
LABEL_53:
    motionBlurEngine = self->_motionBlurEngine;
    destinationFrame = [v7 destinationFrame];
    v88 = v96;
    LOBYTE(motionBlurEngine) = -[MotionBlurEngine motionBlurForCurrentFrame:futureFrame:prevFrame:prevFlowPair:currFlowPair:shutterAngle:destination:withError:](motionBlurEngine, "motionBlurForCurrentFrame:futureFrame:prevFrame:prevFlowPair:currFlowPair:shutterAngle:destination:withError:", v20, nextFrame, v97, flowPairs, nextFrame5, v96, [destinationFrame buffer], error);

    if (motionBlurEngine)
    {
      kdebug_trace();
      v64 = 1;
    }

    else if (error)
    {
      errorMessage(5, @"motionBlurForCurrentFrame fail");
      *error = v64 = 0;
    }

    else
    {
      v64 = 0;
    }

    goto LABEL_55;
  }

  v95 = nextFrame;
  if (previousFrame5)
  {
    previousFrame7 = [v7 previousFrame];
    buffer8 = [previousFrame7 buffer];

    if (buffer8)
    {
      flowPairs = &self->_flowPairs[self->_prevIndex];
      if (![(MotionBlurEngine *)self->_motionBlurEngine streamingMode])
      {
        v56 = [[DVPFrameOpticalFlow alloc] initWithForwardFlow:flowPairs->forwardFlow backwardFlow:flowPairs->backwardFlow];
        prevOpticalFlowBuffers = self->_prevOpticalFlowBuffers;
        self->_prevOpticalFlowBuffers = v56;

        v58 = [DVPOpticalFlowParameters alloc];
        previousFrame8 = [v7 previousFrame];
        [v7 sourceFrame];
        v61 = v60 = error;
        v62 = -[DVPOpticalFlowParameters initWithSourceFrame:nextFrame:submissionMode:opticalFlow:](v58, "initWithSourceFrame:nextFrame:submissionMode:opticalFlow:", previousFrame8, v61, [v7 submissionMode], self->_prevOpticalFlowBuffers);
        opticalFlowParams = self->_opticalFlowParams;
        self->_opticalFlowParams = v62;

        error = v60;
        if (![(OpticalFlowProcessor *)self->_opticalFlowProcessor processWithOpticalFlowParams:self->_opticalFlowParams error:v60])
        {
          if (v60)
          {
            errorMessage(11, @"processWithOpticalFlowParams fail");
            *v60 = v64 = 0;
          }

          else
          {
            v64 = 0;
          }

          goto LABEL_98;
        }
      }
    }

    else
    {
      flowPairs = 0;
    }
  }

  nextFrame5 = [v7 nextFrame];
  if (!nextFrame5)
  {
    goto LABEL_50;
  }

  errorCopy2 = error;
  nextFrame7 = [v7 nextFrame];
  buffer9 = [nextFrame7 buffer];

  if (!buffer9)
  {
    nextFrame5 = 0;
    error = errorCopy2;
    goto LABEL_50;
  }

  nextFrame5 = &self->_flowPairs[self->_nextIndex];
  v79 = [[DVPFrameOpticalFlow alloc] initWithForwardFlow:nextFrame5->forwardFlow backwardFlow:nextFrame5->backwardFlow];
  nextOpticalFlowBuffers = self->_nextOpticalFlowBuffers;
  self->_nextOpticalFlowBuffers = v79;

  v81 = [DVPOpticalFlowParameters alloc];
  sourceFrame6 = [v7 sourceFrame];
  nextFrame8 = [v7 nextFrame];
  v84 = -[DVPOpticalFlowParameters initWithSourceFrame:nextFrame:submissionMode:opticalFlow:](v81, "initWithSourceFrame:nextFrame:submissionMode:opticalFlow:", sourceFrame6, nextFrame8, [v7 submissionMode], self->_nextOpticalFlowBuffers);
  v85 = self->_opticalFlowParams;
  self->_opticalFlowParams = v84;

  error = errorCopy2;
  if ([(OpticalFlowProcessor *)self->_opticalFlowProcessor processWithOpticalFlowParams:self->_opticalFlowParams error:errorCopy2])
  {
    self->_prevIndex = 1 - self->_prevIndex;
    self->_nextIndex = 1 - self->_nextIndex;
    goto LABEL_50;
  }

  if (errorCopy2)
  {
    errorMessage(11, @"processWithOpticalFlowParams fail");
    *errorCopy2 = v64 = 0;
  }

  else
  {
    v64 = 0;
  }

LABEL_98:
  nextFrame = v95;
  v88 = v96;
LABEL_55:

LABEL_56:
LABEL_57:

  return v64;
}

- (BOOL)finishProcessing
{
  if (!self->_usePrecomputedFlow)
  {
    opticalFlowProcessor = self->_opticalFlowProcessor;
    if (opticalFlowProcessor)
    {
      [(OpticalFlowProcessor *)opticalFlowProcessor finishProcessing];
      v4 = self->_opticalFlowProcessor;
      self->_opticalFlowProcessor = 0;
    }

    CVPixelBufferRelease(self->_flowPairs[0].forwardFlow);
    CVPixelBufferRelease(self->_flowPairs[0].backwardFlow);
    CVPixelBufferRelease(self->_flowPairs[1].forwardFlow);
    CVPixelBufferRelease(self->_flowPairs[1].backwardFlow);
  }

  motionBlurEngine = self->_motionBlurEngine;
  if (motionBlurEngine)
  {
    [(MotionBlurEngine *)motionBlurEngine endSession];
    v6 = self->_motionBlurEngine;
    self->_motionBlurEngine = 0;
  }

  [(BaseProcessor *)self resetFormat];
  [(BaseProcessor *)self resetBufferResolution];
  return 1;
}

- (VSAProcessor)initWithFrameWidth:(int64_t)width FrameHeight:(int64_t)height usePrecomputedFlow:(BOOL)flow
{
  v12.receiver = self;
  v12.super_class = VSAProcessor;
  v8 = [(BaseProcessor *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_frameWidth = width;
    v8->_frameHeight = height;
    v8->_usePrecomputedFlow = flow;
    OUTLINED_FUNCTION_3_0(32);
    OUTLINED_FUNCTION_3_0(40);
    OUTLINED_FUNCTION_3_0(48);
    OUTLINED_FUNCTION_3_0(56);
    OUTLINED_FUNCTION_3_0(64);
    OUTLINED_FUNCTION_3_0(72);
    VELoggerInit(16, 0);
    v10 = v9;
  }

  return v9;
}

- (BOOL)startSessionWithMotionBlurConfig:(id)config error:(id *)error
{
  configCopy = config;
  v7 = configCopy;
  if (self->_motionBlurEngine)
  {
    if (error)
    {
      v29 = @"MotionBlurEngine already initialized";
      v30 = 4;
LABEL_22:
      v32 = errorMessage(v30, v29);
LABEL_29:
      v25 = 0;
      *error = v32;
      goto LABEL_14;
    }

LABEL_23:
    v25 = 0;
    goto LABEL_14;
  }

  v34 = configCopy;
  if (self->_usePrecomputedFlow)
  {
    [DVPOpticalFlowConfiguration getFlowBufferDimensionsFromFrameWidth:self->_frameWidth frameHeight:self->_frameHeight revision:1];
    v8 = 0;
    self->_flowBufferWidth = v9;
    self->_flowBufferHeight = v10;
    goto LABEL_10;
  }

  errorCopy = error;
  v11 = [DVPOpticalFlowConfiguration alloc];
  v12 = -[DVPOpticalFlowConfiguration initWithFrameWidth:frameHeight:qualityPrioritization:revision:](v11, "initWithFrameWidth:frameHeight:qualityPrioritization:revision:", self->_frameWidth, self->_frameHeight, [v34 qualityPrioritization], 1);
  opticalFlowConfig = self->_opticalFlowConfig;
  self->_opticalFlowConfig = v12;

  v14 = [OpticalFlowProcessor alloc];
  v15 = -[DVPOpticalFlowConfiguration initWithFrameWidth:FrameHeight:revision:](v11, "initWithFrameWidth:FrameHeight:revision:", [OUTLINED_FUNCTION_1_3() frameWidth], -[DVPOpticalFlowConfiguration frameHeight](self->_opticalFlowConfig, "frameHeight"), 1);
  opticalFlowProcessor = self->_opticalFlowProcessor;
  self->_opticalFlowProcessor = v15;

  if (!self->_opticalFlowProcessor)
  {
    if (error)
    {
      v31 = @"Could not init OpticalFlowProcessor";
      goto LABEL_28;
    }

LABEL_30:
    v25 = 0;
    goto LABEL_31;
  }

  [(DVPOpticalFlowConfiguration *)self->_opticalFlowConfig flowBufferWidth];
  flowBufferHeight = [OUTLINED_FUNCTION_1_3() flowBufferHeight];
  v18 = OUTLINED_FUNCTION_3(flowBufferHeight);
  self->_flowPairs[0].forwardFlow = v18;
  if (!v18 || (-[DVPOpticalFlowConfiguration flowBufferWidth](self->_opticalFlowConfig, "flowBufferWidth"), v19 = [OUTLINED_FUNCTION_1_3() flowBufferHeight], v20 = OUTLINED_FUNCTION_3(v19), (self->_flowPairs[0].backwardFlow = v20) == 0) || (-[DVPOpticalFlowConfiguration flowBufferWidth](self->_opticalFlowConfig, "flowBufferWidth"), v21 = objc_msgSend(OUTLINED_FUNCTION_1_3(), "flowBufferHeight"), v22 = OUTLINED_FUNCTION_3(v21), (self->_flowPairs[1].forwardFlow = v22) == 0))
  {
    v25 = 1;
    goto LABEL_31;
  }

  [(DVPOpticalFlowConfiguration *)self->_opticalFlowConfig flowBufferWidth];
  flowBufferHeight2 = [OUTLINED_FUNCTION_1_3() flowBufferHeight];
  v24 = OUTLINED_FUNCTION_3(flowBufferHeight2);
  self->_flowPairs[1].backwardFlow = v24;
  v25 = 1;
  if (!v24)
  {
LABEL_31:
    v7 = v34;
    goto LABEL_14;
  }

  self->_nextIndex = 0;
  self->_prevIndex = 1;
  v8 = 2;
LABEL_10:
  OUTLINED_FUNCTION_0_0();
  v26 = [[MotionBlurEngine alloc] initWithWidth:self->_frameWidth height:self->_frameHeight vsaPipeMode:v8];
  motionBlurEngine = self->_motionBlurEngine;
  self->_motionBlurEngine = v26;

  if (!self->_motionBlurEngine)
  {
    if (error)
    {
      v31 = @"Could not init MotionBlurEngine";
LABEL_28:
      v32 = errorMessage(7, v31);
      v7 = v34;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  OUTLINED_FUNCTION_0_0();
  if (!self->_usePrecomputedFlow)
  {
    [(OpticalFlowProcessor *)self->_opticalFlowProcessor setStreamingMode:1];
    [(OpticalFlowProcessor *)self->_opticalFlowProcessor setFlowOnlyMode:0];
    if (![(OpticalFlowProcessor *)self->_opticalFlowProcessor startSessionWithOpticalFlowConfig:self->_opticalFlowConfig error:error])
    {
      if (error)
      {
        v31 = @"Could not start the session";
        goto LABEL_28;
      }

      goto LABEL_30;
    }
  }

  v7 = v34;
  v25 = 1;
  if (!-[MotionBlurEngine startSessionWithQualityMode:useExternalFlow:streamingMode:pseudoDepth:error:](self->_motionBlurEngine, "startSessionWithQualityMode:useExternalFlow:streamingMode:pseudoDepth:error:", [v34 qualityPrioritization], objc_msgSend(v34, "usePrecomputedFlow"), 1, 1, error))
  {
    if (error)
    {
      v29 = @"Could not start the session";
      v30 = 7;
      goto LABEL_22;
    }

    goto LABEL_23;
  }

LABEL_14:

  return v25;
}

@end