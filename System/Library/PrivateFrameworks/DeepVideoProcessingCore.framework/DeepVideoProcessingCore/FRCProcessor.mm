@interface FRCProcessor
- (BOOL)finishProcessing;
- (BOOL)initFlowAdaptationWithError:(id *)a3;
- (BOOL)initOpticalFlowWithQualityPrioritization:(int64_t)a3 revision:(int64_t)a4 error:(id *)a5;
- (BOOL)processWithFrameRateParams:(id)a3 error:(id *)a4;
- (BOOL)startSessionWithFrameRateConfig:(id)a3 error:(id *)a4;
- (FRCProcessor)initWithFrameWidth:(int64_t)a3 FrameHeight:(int64_t)a4 usePrecomputedFlow:(BOOL)a5 revision:(int64_t)a6;
- (void)dealloc;
- (void)releaseInternalBuffers;
@end

@implementation FRCProcessor

- (void)dealloc
{
  [(FRCProcessor *)self releaseInternalBuffers];
  v3.receiver = self;
  v3.super_class = FRCProcessor;
  [(FRCProcessor *)&v3 dealloc];
}

- (BOOL)initOpticalFlowWithQualityPrioritization:(int64_t)a3 revision:(int64_t)a4 error:(id *)a5
{
  if (!self->_opticalFlowProcessor)
  {
    v8 = [[DVPOpticalFlowConfiguration alloc] initWithFrameWidth:self->_frameWidth frameHeight:self->_frameHeight qualityPrioritization:a3 revision:a4];
    v9 = [[OpticalFlowProcessor alloc] initWithFrameWidth:[(DVPOpticalFlowConfiguration *)v8 frameWidth] FrameHeight:[(DVPOpticalFlowConfiguration *)v8 frameHeight] revision:a4];
    opticalFlowProcessor = self->_opticalFlowProcessor;
    self->_opticalFlowProcessor = v9;

    v11 = self->_opticalFlowProcessor;
    if (v11)
    {
      [(OpticalFlowProcessor *)v11 setFlowOnlyMode:0];
      if ([(OpticalFlowProcessor *)self->_opticalFlowProcessor startSessionWithOpticalFlowConfig:v8 error:a5])
      {
        v12 = 1;
LABEL_5:

        return v12;
      }

      if (a5)
      {
        v14 = @"Could not start the session";
        goto LABEL_13;
      }
    }

    else if (a5)
    {
      v14 = @"Could not init OpticalFlowProcessor";
LABEL_13:
      errorMessage(7, v14);
      *a5 = v12 = 0;
      goto LABEL_5;
    }

    v12 = 0;
    goto LABEL_5;
  }

  if (!a5)
  {
    return 0;
  }

  errorMessage(4, @"OpticalFlowProcessor already initialized");
  *a5 = v12 = 0;
  return v12;
}

- (BOOL)initFlowAdaptationWithError:(id *)a3
{
  if (self->_flowAdaptation)
  {
    if (a3)
    {
      v5 = errorMessage(4, @"FlowAdaptation already initialized");
      v6 = v5;
      result = 0;
      *a3 = v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    [(FRCProcessor *)&self->_flowAdaptation initFlowAdaptationWithError:a3, self, &v7];
    return v7;
  }

  return result;
}

- (BOOL)startSessionWithFrameRateConfig:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_synthesis)
  {
    if (a4)
    {
      v17 = @"VEFrameSynthesizer already initialized";
      v18 = 4;
LABEL_26:
      errorMessage(v18, v17);
      *a4 = v15 = 0;
      goto LABEL_16;
    }

    goto LABEL_27;
  }

  if (!self->_usePrecomputedFlow)
  {
    v8 = self->_adaptationLayerNeeded ? 1 : -1;
    if (!-[FRCProcessor initOpticalFlowWithQualityPrioritization:revision:error:](self, "initOpticalFlowWithQualityPrioritization:revision:error:", [v6 qualityPrioritization], v8, a4))
    {
      if (a4)
      {
        v17 = @"initOpticalFlowWithQualityPrioritization fail";
        goto LABEL_25;
      }

LABEL_27:
      v15 = 0;
      goto LABEL_16;
    }
  }

  kdebug_trace();
  if (self->_adaptationLayerNeeded && ![(FRCProcessor *)self initFlowAdaptationWithError:a4])
  {
    if (a4)
    {
      v17 = @"initFlowAdaptationWithError fail";
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  v9 = [v7 qualityPrioritization];
  if (v9 == -1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 4;
  }

  v11 = off_278F53318;
  if (v9 != -1)
  {
    v11 = &off_278F53320;
  }

  v12 = [objc_alloc(*v11) initWithUsage:self->_flowUsage qualityMode:v10 useLegacyNormalization:1];
  synthesis = self->_synthesis;
  self->_synthesis = v12;

  v14 = self->_synthesis;
  if (!v14)
  {
    if (a4)
    {
      v17 = @"Could not init VEFrameSynthesizer";
LABEL_25:
      v18 = 7;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  [(FrameSynthesizerProtocol *)v14 allocateResources];
  kdebug_trace();
  v15 = 1;
LABEL_16:

  return v15;
}

- (BOOL)processWithFrameRateParams:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    if (!a4)
    {
      goto LABEL_60;
    }

    v26 = @"Error: Invalid input frameRateParams";
    goto LABEL_18;
  }

  if (!self->_synthesis || !self->_usePrecomputedFlow && !self->_opticalFlowProcessor)
  {
    if (a4)
    {
      v26 = @"Error: Session Not Started";
      v27 = 3;
      goto LABEL_19;
    }

    goto LABEL_60;
  }

  v8 = [v6 sourceFrame];
  PixelFormatType = CVPixelBufferGetPixelFormatType([v8 buffer]);
  v10 = isPixelFormatSupported(PixelFormatType);

  if ((v10 & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_60;
    }

    v26 = @"Error: Pixel Format Not Supported";
    goto LABEL_18;
  }

  v11 = [v7 sourceFrame];
  v12 = [(BaseProcessor *)self matchPixelFormat:v11];

  if (!v12)
  {
    if (!a4)
    {
      goto LABEL_60;
    }

    v26 = @"frameRateParams pixel format mismatch with FRCProcessor's format for the DVPFrameProcessor session";
    goto LABEL_18;
  }

  v13 = [v7 sourceFrame];
  v14 = [(BaseProcessor *)self matchBufferResolution:v13];

  if (!v14)
  {
    if (!a4)
    {
      goto LABEL_60;
    }

    v26 = @"frameRateParams buffer resolution mismatch with FRCProcessor's buffer resolution for the DVPFrameProcessor session";
    goto LABEL_18;
  }

  kdebug_trace();
  v15 = [v7 destinationFrames];
  v16 = [v15 count];

  if (!v16 || ([v7 interpolationPhase], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "count"), v17, v16 != v18))
  {
    if (!a4)
    {
      goto LABEL_60;
    }

    v26 = @"Error: total destination frames different from total time scales";
LABEL_18:
    v27 = 12;
    goto LABEL_19;
  }

  v19 = [v7 submissionMode];
  v64 = v19 == 2;
  if (!self->_usePrecomputedFlow)
  {
    if ([v7 submissionMode] != 3)
    {
      if (self->_adaptationLayerNeeded)
      {
        forwardFlow = self->_sharedFlowPair.forwardFlow;
        backwardFlow = self->_sharedFlowPair.backwardFlow;
        self->_sharedForwardFlow = forwardFlow;
        self->_sharedBackwardFlow = self->_sharedFlowPair.backwardFlow;
      }

      else
      {
        forwardFlow = self->_synthesisFlowPair.forwardFlow;
        backwardFlow = self->_synthesisFlowPair.backwardFlow;
      }

      v34 = [[DVPFrameOpticalFlow alloc] initWithForwardFlow:forwardFlow backwardFlow:backwardFlow];
      v35 = [DVPOpticalFlowParameters alloc];
      v36 = [v7 sourceFrame];
      v37 = [v7 nextFrame];
      v38 = -[DVPOpticalFlowParameters initWithSourceFrame:nextFrame:submissionMode:opticalFlow:](v35, "initWithSourceFrame:nextFrame:submissionMode:opticalFlow:", v36, v37, [v7 submissionMode], v34);

      if (![(OpticalFlowProcessor *)self->_opticalFlowProcessor processWithOpticalFlowParams:v38 error:a4])
      {
        [(FRCProcessor *)a4 processWithFrameRateParams:v38 error:v34];
        goto LABEL_60;
      }
    }

LABEL_29:
    self->_synthesisForwardFlow = self->_synthesisFlowPair.forwardFlow;
    self->_synthesisBackwardFlow = self->_synthesisFlowPair.backwardFlow;
    goto LABEL_30;
  }

  adaptationLayerNeeded = self->_adaptationLayerNeeded;
  v21 = [v7 opticalFlow];
  v22 = [v21 forwardFlow];
  if (adaptationLayerNeeded)
  {
    self->_sharedForwardFlow = v22;

    v23 = [v7 opticalFlow];
    self->_sharedBackwardFlow = [v23 backwardFlow];

    width = self->_sharedFlowDimension.width;
    if (width != CVPixelBufferGetWidth(self->_sharedForwardFlow) || (height = self->_sharedFlowDimension.height, height != CVPixelBufferGetHeight(self->_sharedForwardFlow)))
    {
      if (a4)
      {
        v26 = @"Error: invalid precomputed optical flow, expect Rev2 flow 2C0h";
        v27 = 8;
LABEL_19:
        errorMessage(v27, v26);
        *a4 = v28 = 0;
        goto LABEL_61;
      }

LABEL_60:
      v28 = 0;
      goto LABEL_61;
    }

    goto LABEL_29;
  }

  self->_synthesisForwardFlow = v22;

  v31 = [v7 opticalFlow];
  self->_synthesisBackwardFlow = [v31 backwardFlow];

  v32 = self->_synthesisFlowDimension.width;
  if (v32 != CVPixelBufferGetWidth(self->_synthesisForwardFlow) || (v33 = self->_synthesisFlowDimension.height + self->_synthesisFlowDimension.height, v33 != CVPixelBufferGetHeight(self->_synthesisForwardFlow)))
  {
    v60 = a4;
    if (!a4)
    {
      goto LABEL_60;
    }

    v61 = errorMessage(8, @"Error: invalid precomputed optical flow, expect Rev1 flow L00h");
LABEL_59:
    v28 = 0;
    *v60 = v61;
    goto LABEL_61;
  }

LABEL_30:
  if (!self->_adaptationLayerNeeded || [v7 submissionMode] == 3)
  {
    goto LABEL_36;
  }

  [(VEOpticalFlowEstimator *)self->_flowAdaptation setStreamingMode:v19 == 2];
  [(FrameSynthesizerProtocol *)self->_synthesis setStreamingMode:v19 == 2];
  if (self->_streamingMode != v64)
  {
    v39 = v19 == 2;
    [(VEOpticalFlowEstimator *)self->_flowAdaptation setIsFirstFrameInStream:v39];
    [(FrameSynthesizerProtocol *)self->_synthesis setIsFirstFrameInStream:v39];
    self->_streamingMode = v64;
  }

  kdebug_trace();
  flowAdaptation = self->_flowAdaptation;
  v41 = [v7 sourceFrame];
  v42 = [v41 buffer];
  v43 = [v7 nextFrame];
  v44 = -[VEOpticalFlowEstimator flowAdaptationFrom:to:inputForwardFlow:inputBackwardFlow:outputForwardFlow:outputBackwardFlow:](flowAdaptation, "flowAdaptationFrom:to:inputForwardFlow:inputBackwardFlow:outputForwardFlow:outputBackwardFlow:", v42, [v43 buffer], self->_sharedForwardFlow, self->_sharedBackwardFlow, self->_synthesisForwardFlow, self->_synthesisBackwardFlow);

  if (v44)
  {
    if (!a4)
    {
      goto LABEL_60;
    }

    v60 = a4;
    v62 = veErrorCodeFromOF(v44);
    v61 = _VEError(v62, 0);
    goto LABEL_59;
  }

  kdebug_trace();
LABEL_36:
  if (!self->_adaptationLayerNeeded || [v7 submissionMode] != 3 || !self->_adaptationLayerNeeded)
  {
    kdebug_trace();
    synthesis = self->_synthesis;
    v46 = [v7 sourceFrame];
    v47 = [v46 buffer];
    v48 = [v7 nextFrame];
    -[FrameSynthesizerProtocol setFirstFrame:secondFrame:forwardFlow:backwardFlow:](synthesis, "setFirstFrame:secondFrame:forwardFlow:backwardFlow:", v47, [v48 buffer], self->_synthesisForwardFlow, self->_synthesisBackwardFlow);

    kdebug_trace();
  }

  if (v16 >= 1)
  {
    v49 = 0;
    v50 = v16 & 0x7FFFFFFF;
    do
    {
      kdebug_trace();
      v51 = self->_synthesis;
      v52 = [v7 interpolationPhase];
      v53 = [v52 objectAtIndexedSubscript:v49];
      [v53 floatValue];
      v55 = v54;
      v56 = [v7 destinationFrames];
      v57 = [v56 objectAtIndexedSubscript:v49];
      v58 = [v57 buffer];
      LODWORD(v59) = v55;
      [(FrameSynthesizerProtocol *)v51 synthesizeFrameForTimeScale:v58 destination:v59];

      kdebug_trace();
      ++v49;
    }

    while (v50 != v49);
  }

  kdebug_trace();
  v28 = 1;
LABEL_61:

  return v28;
}

- (void)releaseInternalBuffers
{
  if (!self->_usePrecomputedFlow || self->_adaptationLayerNeeded)
  {
    p_synthesisFlowPair = &self->_synthesisFlowPair;
    CVPixelBufferRelease(self->_synthesisFlowPair.forwardFlow);
    p_synthesisFlowPair->forwardFlow = 0;
    CVPixelBufferRelease(self->_synthesisFlowPair.backwardFlow);
    self->_synthesisFlowPair.backwardFlow = 0;
    if (!self->_usePrecomputedFlow && self->_adaptationLayerNeeded)
    {
      p_sharedFlowPair = &self->_sharedFlowPair;
      CVPixelBufferRelease(p_sharedFlowPair->forwardFlow);
      p_sharedFlowPair->forwardFlow = 0;
      CVPixelBufferRelease(p_sharedFlowPair->backwardFlow);
      p_sharedFlowPair->backwardFlow = 0;
    }
  }
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
  }

  flowAdaptation = self->_flowAdaptation;
  if (flowAdaptation)
  {
    [(VEOpticalFlowEstimator *)flowAdaptation releaseResources];
    v6 = self->_flowAdaptation;
    self->_flowAdaptation = 0;
  }

  synthesis = self->_synthesis;
  if (synthesis)
  {
    [(FrameSynthesizerProtocol *)synthesis releaseResources];
    v8 = self->_synthesis;
    self->_synthesis = 0;
  }

  [(BaseProcessor *)self resetFormat];
  [(BaseProcessor *)self resetBufferResolution];
  return 1;
}

- (FRCProcessor)initWithFrameWidth:(int64_t)a3 FrameHeight:(int64_t)a4 usePrecomputedFlow:(BOOL)a5 revision:(int64_t)a6
{
  v45.receiver = self;
  v45.super_class = FRCProcessor;
  v10 = [(BaseProcessor *)&v45 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_19;
  }

  v10->_frameWidth = a3;
  v10->_frameHeight = a4;
  v10->_usePrecomputedFlow = a5;
  opticalFlowProcessor = v10->_opticalFlowProcessor;
  v10->_opticalFlowProcessor = 0;

  flowAdaptation = v11->_flowAdaptation;
  v11->_flowAdaptation = 0;

  synthesis = v11->_synthesis;
  v11->_synthesis = 0;

  v11->_streamingMode = 0;
  VELoggerInit(16, 0);
  v11->_adaptationLayerNeeded = a6 != -1;
  UsageFromSize = getUsageFromSize(v11->_frameWidth, v11->_frameHeight);
  v11->_flowUsage = UsageFromSize;
  if (UsageFromSize == -1)
  {
    goto LABEL_19;
  }

  v43 = 0;
  v44 = 0;
  getInputFrameSizeForUsage(UsageFromSize & 0xFFF, &v44, &v43);
  p_width = &v11->_synthesisFlowDimension.width;
  v17 = FRCGetFlowDimensionFromUsage(v44, v43);
  v11->_synthesisFlowDimension.width = v17;
  v11->_synthesisFlowDimension.height = v18;
  if (v11->_usePrecomputedFlow)
  {
    if (!v11->_adaptationLayerNeeded)
    {
      v19 = &OBJC_IVAR___FRCProcessor__synthesisFlowPair;
LABEL_14:
      v32 = (&v11->super.super.isa + *v19);
      *v32 = 0;
      v32[1] = 0;
      goto LABEL_17;
    }
  }

  else if (!v11->_adaptationLayerNeeded)
  {
    OUTLINED_FUNCTION_1_2(v17, v18);
    v11->_synthesisFlowPair.forwardFlow = CreatePixelBuffer(v26, v27, v28);
    OUTLINED_FUNCTION_1_2(*p_width, v11->_synthesisFlowDimension.height);
    goto LABEL_9;
  }

  v20 = OUTLINED_FUNCTION_0_2(v17);
  v11->_synthesisFlowPair.forwardFlow = CreatePixelBuffer(v20, v21, v22);
  v23 = OUTLINED_FUNCTION_0_2(*p_width);
LABEL_9:
  PixelBuffer = CreatePixelBuffer(v23, v24, v25);
  v11->_synthesisFlowPair.backwardFlow = PixelBuffer;
  if (!v11->_synthesisFlowPair.forwardFlow || !PixelBuffer)
  {
    goto LABEL_19;
  }

  if (v11->_adaptationLayerNeeded)
  {
    FlowDimensionFromUsage = getFlowDimensionFromUsage(v44, v43);
    v11->_sharedFlowDimension.width = FlowDimensionFromUsage;
    v11->_sharedFlowDimension.height = v31;
    if (v11->_usePrecomputedFlow)
    {
      v19 = &OBJC_IVAR___FRCProcessor__sharedFlowPair;
      goto LABEL_14;
    }

    v33 = OUTLINED_FUNCTION_0_2(FlowDimensionFromUsage);
    v36 = CreatePixelBuffer(v33, v34, v35);
    v11->_sharedFlowPair.forwardFlow = v36;
    if (v36)
    {
      v37 = OUTLINED_FUNCTION_0_2(v11->_sharedFlowDimension.width);
      v40 = CreatePixelBuffer(v37, v38, v39);
      v11->_sharedFlowPair.backwardFlow = v40;
      if (v40)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    v41 = 0;
    goto LABEL_18;
  }

LABEL_17:
  v41 = v11;
LABEL_18:

  return v41;
}

- (void)initFlowAdaptationWithError:(uint64_t)a3 .cold.1(id *a1, void *a2, uint64_t a3, char *a4)
{
  v11 = objc_alloc_init(VEOpticalFlowEstimatorConfiguration);
  [(VEOpticalFlowEstimatorConfiguration *)v11 setDisableOutputFlowScaling:0];
  [(VEOpticalFlowEstimatorConfiguration *)v11 setRevision:2];
  v8 = 1;
  [(VEOpticalFlowEstimatorConfiguration *)v11 setAdaptationLayerOnly:1];
  [(VEOpticalFlowEstimatorConfiguration *)v11 setLegacyNormalization:1];
  if (!*a1)
  {
    v9 = [[VEOpticalFlowEstimator alloc] initWithWidth:*(a3 + 128) height:*(a3 + 136) configuration:v11];
    v10 = *a1;
    *a1 = v9;

    if (*a1)
    {
      [*a1 allocateResources];
    }

    else if (a2)
    {
      errorMessage(7, @"Could not init FlowAdaptation");
      *a2 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  *a4 = v8;
}

- (void)processWithFrameRateParams:(void *)a3 error:.cold.1(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    *a1 = errorMessage(11, @"processWithOpticalFlowParams fail");
  }
}

@end