@interface VSAProcessor
- (BOOL)finishProcessing;
- (BOOL)processWithMotionBlurParams:(id)a3 error:(id *)a4;
- (BOOL)startSessionWithMotionBlurConfig:(id)a3 error:(id *)a4;
- (VSAProcessor)initWithFrameWidth:(int64_t)a3 FrameHeight:(int64_t)a4 usePrecomputedFlow:(BOOL)a5;
@end

@implementation VSAProcessor

- (BOOL)processWithMotionBlurParams:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    if (!a4)
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
    if (a4)
    {
      v91 = @"Error: Session Not Started";
      v92 = 3;
LABEL_71:
      errorMessage(v92, v91);
      *a4 = v64 = 0;
      goto LABEL_57;
    }

    goto LABEL_72;
  }

  v8 = [v6 sourceFrame];
  PixelFormatType = CVPixelBufferGetPixelFormatType([v8 buffer]);
  v10 = isPixelFormatSupported(PixelFormatType);

  if ((v10 & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_72;
    }

    v91 = @"Error: Pixel Format Not Supported";
    goto LABEL_70;
  }

  v11 = [v7 sourceFrame];
  v12 = [(BaseProcessor *)self matchPixelFormat:v11];

  if (!v12)
  {
    if (!a4)
    {
      goto LABEL_72;
    }

    v91 = @"motionBlurParams pixel format mismatch with VSAProcessor's format for the DVPFrameProcessor session";
    goto LABEL_70;
  }

  v13 = [v7 sourceFrame];
  v14 = [(BaseProcessor *)self matchBufferResolution:v13];

  if (!v14)
  {
    if (a4)
    {
      v91 = @"motionBlurParams buffer resolution mismatch with VSAProcessor's buffer resolution for the DVPFrameProcessor session";
      goto LABEL_70;
    }

LABEL_72:
    v64 = 0;
    goto LABEL_57;
  }

  v15 = [DVPFrame alloc];
  v16 = [v7 sourceFrame];
  v17 = [v16 buffer];
  v18 = [v7 sourceFrame];
  v19 = v18;
  if (v18)
  {
    [v18 presentationTimeStamp];
  }

  else
  {
    v98 = 0;
    v99 = 0;
    v100 = 0;
  }

  v20 = [(DVPFrame *)v15 initWithBuffer:v17 presentationTimeStamp:&v98];

  if (!v20)
  {
    if (a4)
    {
      v93 = @"Error allocating currentFrame";
LABEL_79:
      v94 = errorMessage(9, v93);
      v97 = 0;
LABEL_83:
      v31 = 0;
      v64 = 0;
      *a4 = v94;
      goto LABEL_56;
    }

LABEL_80:
    v97 = 0;
    goto LABEL_84;
  }

  v21 = [v7 previousFrame];
  if (v21)
  {
    v22 = v21;
    v23 = [v7 previousFrame];
    v24 = [v23 buffer];

    if (v24)
    {
      v25 = [DVPFrame alloc];
      v26 = [v7 previousFrame];
      v27 = [v26 buffer];
      v28 = [v7 previousFrame];
      v29 = v28;
      if (v28)
      {
        [v28 presentationTimeStamp];
      }

      else
      {
        v98 = 0;
        v99 = 0;
        v100 = 0;
      }

      v30 = [(DVPFrame *)v25 initWithBuffer:v27 presentationTimeStamp:&v98];

      v97 = v30;
      if (v30)
      {
        goto LABEL_17;
      }

      if (a4)
      {
        v93 = @"Error allocating previousFrame";
        goto LABEL_79;
      }

      goto LABEL_80;
    }
  }

  v97 = 0;
LABEL_17:
  v31 = [v7 nextFrame];
  if (v31)
  {
    v32 = [v7 nextFrame];
    v33 = [v32 buffer];

    if (!v33)
    {
      v31 = 0;
      goto LABEL_24;
    }

    v34 = [DVPFrame alloc];
    v35 = [v7 nextFrame];
    v36 = [v35 buffer];
    v37 = [v7 nextFrame];
    v38 = v37;
    if (v37)
    {
      [v37 presentationTimeStamp];
    }

    else
    {
      v98 = 0;
      v99 = 0;
      v100 = 0;
    }

    v31 = [(DVPFrame *)v34 initWithBuffer:v36 presentationTimeStamp:&v98];

    if (!v31)
    {
      if (a4)
      {
        v94 = errorMessage(9, @"Error allocating nextFrame");
        goto LABEL_83;
      }

LABEL_84:
      v31 = 0;
LABEL_85:
      v64 = 0;
      goto LABEL_56;
    }
  }

LABEL_24:
  if ([v7 motionBlurStrength] > 100 || objc_msgSend(v7, "motionBlurStrength") <= 0)
  {
    if (a4)
    {
      v90 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: Invalid virtualShutterAngleDegrees %d", objc_msgSend(v7, "motionBlurStrength")];
      *a4 = errorMessage(12, v90);
    }

    goto LABEL_85;
  }

  v39 = MEMORY[0x277CCABB0];
  *&v40 = [v7 motionBlurStrength] / 100.0;
  v96 = [v39 numberWithFloat:v40];
  -[MotionBlurEngine setStreamingMode:](self->_motionBlurEngine, "setStreamingMode:", [v7 submissionMode] == 2);
  kdebug_trace();
  usePrecomputedFlow = self->_usePrecomputedFlow;
  v42 = [v7 previousFrame];
  flowPairs = v42;
  if (usePrecomputedFlow)
  {
    v44 = a4;
    if (!v42)
    {
      goto LABEL_39;
    }

    v45 = [v7 previousFrame];
    v46 = [v45 buffer];

    if (v46)
    {
      flowBufferWidth = self->_flowBufferWidth;
      v48 = [v7 previousOpticalFlow];
      if (flowBufferWidth == CVPixelBufferGetWidth([v48 forwardFlow]))
      {
        flowBufferHeight = self->_flowBufferHeight;
        v50 = [v7 previousOpticalFlow];
        Height = CVPixelBufferGetHeight([v50 forwardFlow]);

        if (flowBufferHeight == Height)
        {
          v52 = [v7 previousOpticalFlow];
          flowPairs = self->_flowPairs;
          self->_flowPairs[0].forwardFlow = [v52 forwardFlow];

          v53 = [v7 previousOpticalFlow];
          self->_flowPairs[0].backwardFlow = [v53 backwardFlow];

          goto LABEL_39;
        }
      }

      else
      {
      }

      if (v44)
      {
        errorMessage(8, @"Error: invalid precomputed optical flow, expect Rev2 flow 2C0h");
        *v44 = v64 = 0;
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
    v65 = [v7 nextFrame];
    if (v65)
    {
      v66 = [v7 nextFrame];
      v67 = [v66 buffer];

      if (v67)
      {
        v95 = v31;
        v68 = v20;
        v69 = self->_flowBufferWidth;
        v70 = [v7 nextOpticalFlow];
        if (v69 == CVPixelBufferGetWidth([v70 forwardFlow]))
        {
          v71 = self->_flowBufferHeight;
          v72 = [v7 nextOpticalFlow];
          v73 = CVPixelBufferGetHeight([v72 forwardFlow]);

          if (v71 == v73)
          {
            v74 = [v7 nextOpticalFlow];
            self->_flowPairs[1].forwardFlow = [v74 forwardFlow];
            v65 = &self->_flowPairs[1];

            v75 = [v7 nextOpticalFlow];
            self->_flowPairs[1].backwardFlow = [v75 backwardFlow];

            a4 = v44;
            v20 = v68;
LABEL_50:
            v31 = v95;
            goto LABEL_53;
          }
        }

        else
        {
        }

        v20 = v68;
        if (v44)
        {
          errorMessage(8, @"Error: invalid precomputed optical flow, expect Rev2 flow 2C0h");
          *v44 = v64 = 0;
        }

        else
        {
          v64 = 0;
        }

        goto LABEL_98;
      }

      v65 = 0;
    }

    a4 = v44;
LABEL_53:
    motionBlurEngine = self->_motionBlurEngine;
    v87 = [v7 destinationFrame];
    v88 = v96;
    LOBYTE(motionBlurEngine) = -[MotionBlurEngine motionBlurForCurrentFrame:futureFrame:prevFrame:prevFlowPair:currFlowPair:shutterAngle:destination:withError:](motionBlurEngine, "motionBlurForCurrentFrame:futureFrame:prevFrame:prevFlowPair:currFlowPair:shutterAngle:destination:withError:", v20, v31, v97, flowPairs, v65, v96, [v87 buffer], a4);

    if (motionBlurEngine)
    {
      kdebug_trace();
      v64 = 1;
    }

    else if (a4)
    {
      errorMessage(5, @"motionBlurForCurrentFrame fail");
      *a4 = v64 = 0;
    }

    else
    {
      v64 = 0;
    }

    goto LABEL_55;
  }

  v95 = v31;
  if (v42)
  {
    v54 = [v7 previousFrame];
    v55 = [v54 buffer];

    if (v55)
    {
      flowPairs = &self->_flowPairs[self->_prevIndex];
      if (![(MotionBlurEngine *)self->_motionBlurEngine streamingMode])
      {
        v56 = [[DVPFrameOpticalFlow alloc] initWithForwardFlow:flowPairs->forwardFlow backwardFlow:flowPairs->backwardFlow];
        prevOpticalFlowBuffers = self->_prevOpticalFlowBuffers;
        self->_prevOpticalFlowBuffers = v56;

        v58 = [DVPOpticalFlowParameters alloc];
        v59 = [v7 previousFrame];
        [v7 sourceFrame];
        v61 = v60 = a4;
        v62 = -[DVPOpticalFlowParameters initWithSourceFrame:nextFrame:submissionMode:opticalFlow:](v58, "initWithSourceFrame:nextFrame:submissionMode:opticalFlow:", v59, v61, [v7 submissionMode], self->_prevOpticalFlowBuffers);
        opticalFlowParams = self->_opticalFlowParams;
        self->_opticalFlowParams = v62;

        a4 = v60;
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

  v65 = [v7 nextFrame];
  if (!v65)
  {
    goto LABEL_50;
  }

  v76 = a4;
  v77 = [v7 nextFrame];
  v78 = [v77 buffer];

  if (!v78)
  {
    v65 = 0;
    a4 = v76;
    goto LABEL_50;
  }

  v65 = &self->_flowPairs[self->_nextIndex];
  v79 = [[DVPFrameOpticalFlow alloc] initWithForwardFlow:v65->forwardFlow backwardFlow:v65->backwardFlow];
  nextOpticalFlowBuffers = self->_nextOpticalFlowBuffers;
  self->_nextOpticalFlowBuffers = v79;

  v81 = [DVPOpticalFlowParameters alloc];
  v82 = [v7 sourceFrame];
  v83 = [v7 nextFrame];
  v84 = -[DVPOpticalFlowParameters initWithSourceFrame:nextFrame:submissionMode:opticalFlow:](v81, "initWithSourceFrame:nextFrame:submissionMode:opticalFlow:", v82, v83, [v7 submissionMode], self->_nextOpticalFlowBuffers);
  v85 = self->_opticalFlowParams;
  self->_opticalFlowParams = v84;

  a4 = v76;
  if ([(OpticalFlowProcessor *)self->_opticalFlowProcessor processWithOpticalFlowParams:self->_opticalFlowParams error:v76])
  {
    self->_prevIndex = 1 - self->_prevIndex;
    self->_nextIndex = 1 - self->_nextIndex;
    goto LABEL_50;
  }

  if (v76)
  {
    errorMessage(11, @"processWithOpticalFlowParams fail");
    *v76 = v64 = 0;
  }

  else
  {
    v64 = 0;
  }

LABEL_98:
  v31 = v95;
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

- (VSAProcessor)initWithFrameWidth:(int64_t)a3 FrameHeight:(int64_t)a4 usePrecomputedFlow:(BOOL)a5
{
  v12.receiver = self;
  v12.super_class = VSAProcessor;
  v8 = [(BaseProcessor *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_frameWidth = a3;
    v8->_frameHeight = a4;
    v8->_usePrecomputedFlow = a5;
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

- (BOOL)startSessionWithMotionBlurConfig:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_motionBlurEngine)
  {
    if (a4)
    {
      v29 = @"MotionBlurEngine already initialized";
      v30 = 4;
LABEL_22:
      v32 = errorMessage(v30, v29);
LABEL_29:
      v25 = 0;
      *a4 = v32;
      goto LABEL_14;
    }

LABEL_23:
    v25 = 0;
    goto LABEL_14;
  }

  v34 = v6;
  if (self->_usePrecomputedFlow)
  {
    [DVPOpticalFlowConfiguration getFlowBufferDimensionsFromFrameWidth:self->_frameWidth frameHeight:self->_frameHeight revision:1];
    v8 = 0;
    self->_flowBufferWidth = v9;
    self->_flowBufferHeight = v10;
    goto LABEL_10;
  }

  v33 = a4;
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
    if (a4)
    {
      v31 = @"Could not init OpticalFlowProcessor";
      goto LABEL_28;
    }

LABEL_30:
    v25 = 0;
    goto LABEL_31;
  }

  [(DVPOpticalFlowConfiguration *)self->_opticalFlowConfig flowBufferWidth];
  v17 = [OUTLINED_FUNCTION_1_3() flowBufferHeight];
  v18 = OUTLINED_FUNCTION_3(v17);
  self->_flowPairs[0].forwardFlow = v18;
  if (!v18 || (-[DVPOpticalFlowConfiguration flowBufferWidth](self->_opticalFlowConfig, "flowBufferWidth"), v19 = [OUTLINED_FUNCTION_1_3() flowBufferHeight], v20 = OUTLINED_FUNCTION_3(v19), (self->_flowPairs[0].backwardFlow = v20) == 0) || (-[DVPOpticalFlowConfiguration flowBufferWidth](self->_opticalFlowConfig, "flowBufferWidth"), v21 = objc_msgSend(OUTLINED_FUNCTION_1_3(), "flowBufferHeight"), v22 = OUTLINED_FUNCTION_3(v21), (self->_flowPairs[1].forwardFlow = v22) == 0))
  {
    v25 = 1;
    goto LABEL_31;
  }

  [(DVPOpticalFlowConfiguration *)self->_opticalFlowConfig flowBufferWidth];
  v23 = [OUTLINED_FUNCTION_1_3() flowBufferHeight];
  v24 = OUTLINED_FUNCTION_3(v23);
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
    if (a4)
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
    if (![(OpticalFlowProcessor *)self->_opticalFlowProcessor startSessionWithOpticalFlowConfig:self->_opticalFlowConfig error:a4])
    {
      if (a4)
      {
        v31 = @"Could not start the session";
        goto LABEL_28;
      }

      goto LABEL_30;
    }
  }

  v7 = v34;
  v25 = 1;
  if (!-[MotionBlurEngine startSessionWithQualityMode:useExternalFlow:streamingMode:pseudoDepth:error:](self->_motionBlurEngine, "startSessionWithQualityMode:useExternalFlow:streamingMode:pseudoDepth:error:", [v34 qualityPrioritization], objc_msgSend(v34, "usePrecomputedFlow"), 1, 1, a4))
  {
    if (a4)
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