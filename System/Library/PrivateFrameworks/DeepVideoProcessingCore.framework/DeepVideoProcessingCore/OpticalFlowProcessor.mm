@interface OpticalFlowProcessor
- (BOOL)finishProcessing;
- (BOOL)opticalFlowsFrom:(id)from to:(id)to forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow streamingMode:(BOOL)mode error:(id *)error;
- (BOOL)processWithOpticalFlowParams:(id)params error:(id *)error;
- (BOOL)startSessionWithOpticalFlowConfig:(id)config error:(id *)error;
- (OpticalFlowProcessor)initWithFrameWidth:(int64_t)width FrameHeight:(int64_t)height revision:(int64_t)revision;
- (int64_t)getFrameRotation:(int64_t)rotation;
@end

@implementation OpticalFlowProcessor

- (int64_t)getFrameRotation:(int64_t)rotation
{
  if ((rotation & 0x1000) != 0)
  {
    return 2;
  }

  p_preferredTransform = &self->_preferredTransform;
  v4 = *&self->_preferredTransform.c;
  *&v8.a = *&self->_preferredTransform.a;
  *&v8.c = v4;
  *&v8.tx = *&self->_preferredTransform.tx;
  if (!CGAffineTransformIsIdentity(&v8) && (v5 = atan2(p_preferredTransform->b, p_preferredTransform->a), v6 = (v5 * 180.0) / 3.14159265, v6 == 180.0))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (BOOL)startSessionWithOpticalFlowConfig:(id)config error:(id *)error
{
  configCopy = config;
  revision = [configCopy revision];
  if (revision != self->_revision)
  {
    [(OpticalFlowProcessor *)error startSessionWithOpticalFlowConfig:configCopy error:&self->_revision, &v15];
    v12 = v15;
    goto LABEL_9;
  }

  if (revision == -1)
  {
    goto LABEL_8;
  }

  if ([configCopy qualityPrioritization] == 1)
  {
    v8 = 0;
  }

  else
  {
    if ([configCopy qualityPrioritization] != 2)
    {
      if (error)
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid opticalFlowConfig.qualityPrioritization %d", objc_msgSend(configCopy, "qualityPrioritization")];
        *error = errorMessage(12, v14);
      }

LABEL_12:
      v12 = 0;
      goto LABEL_9;
    }

    v8 = 1;
  }

  self->_useHomographyInFlow = v8;
  FlowDownscaleRatio = getFlowDownscaleRatio(self->_width, self->_height, self->_skipLastLevelFlow);
  v10 = (self->_width / FlowDownscaleRatio);
  v11 = (self->_height / FlowDownscaleRatio);
  [(GenericFlow *)self->_genericFlow setFlowOnlyMode:self->_flowOnlyMode];
  if (![(GenericFlow *)self->_genericFlow startSessionWithFlowWidth:v10 flowHeight:v11 frameWidth:self->_width frameHeight:self->_height useHomographyInFlow:self->_useHomographyInFlow error:error])
  {
    if (error)
    {
      errorMessage(7, @"Could not start the session");
      *error = v12 = 0;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_8:
  v12 = 1;
LABEL_9:
  kdebug_trace();

  return v12;
}

- (BOOL)processWithOpticalFlowParams:(id)params error:(id *)error
{
  paramsCopy = params;
  v7 = paramsCopy;
  if (*&self->_opticalFlowSPI == 0)
  {
    if (error)
    {
      v33 = @"Error: Session Not Started";
      v34 = 3;
      goto LABEL_28;
    }

    goto LABEL_39;
  }

  if (!paramsCopy)
  {
    if (!error)
    {
      goto LABEL_39;
    }

    v33 = @"processWithOpticalFlowParams: Invalid input opticalFlowParams";
LABEL_27:
    v34 = 12;
LABEL_28:
    errorMessage(v34, v33);
    *error = v31 = 0;
    goto LABEL_18;
  }

  sourceFrame = [paramsCopy sourceFrame];
  PixelFormatType = CVPixelBufferGetPixelFormatType([sourceFrame buffer]);
  v10 = isPixelFormatSupported(PixelFormatType);

  if ((v10 & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_39;
    }

    v33 = @"Error: Pixel Format Not Supported";
    goto LABEL_27;
  }

  sourceFrame2 = [v7 sourceFrame];
  v12 = [(BaseProcessor *)self matchPixelFormat:sourceFrame2];

  if (!v12)
  {
    if (!error)
    {
      goto LABEL_39;
    }

    v33 = @"opticalFlowParams pixel format mismatch with OpticalFlowProcessor's format for the DVPFrameProcessor session";
    goto LABEL_27;
  }

  sourceFrame3 = [v7 sourceFrame];
  v14 = [(BaseProcessor *)self matchBufferResolution:sourceFrame3];

  if (!v14)
  {
    if (error)
    {
      v33 = @"opticalFlowParams buffer resolution mismatch with OpticalFlowProcessor's buffer resolution for the DVPFrameProcessor session";
      goto LABEL_27;
    }

LABEL_39:
    v31 = 0;
    goto LABEL_18;
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
    v37 = 0;
    v38 = 0;
    v39 = 0;
  }

  v20 = [(DVPFrame *)v15 initWithBuffer:buffer presentationTimeStamp:&v37];

  if (!v20)
  {
    if (error)
    {
      errorMessage(9, @"Error allocating firstFrame");
      *error = v31 = 0;
    }

    else
    {
      v31 = 0;
    }

    goto LABEL_17;
  }

  v21 = [DVPFrame alloc];
  nextFrame = [v7 nextFrame];
  buffer2 = [nextFrame buffer];
  nextFrame2 = [v7 nextFrame];
  v25 = nextFrame2;
  if (nextFrame2)
  {
    [nextFrame2 presentationTimeStamp];
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
  }

  v26 = [(DVPFrame *)v21 initWithBuffer:buffer2 presentationTimeStamp:&v37];

  if (!v26)
  {
    if (error)
    {
      v35 = @"Error allocating secondFrame";
      v36 = 9;
LABEL_35:
      errorMessage(v36, v35);
      *error = v31 = 0;
      goto LABEL_16;
    }

LABEL_36:
    v31 = 0;
    goto LABEL_16;
  }

  kdebug_trace();
  opticalFlow = [v7 opticalFlow];
  forwardFlow = [opticalFlow forwardFlow];
  opticalFlow2 = [v7 opticalFlow];
  v30 = -[OpticalFlowProcessor opticalFlowsFrom:to:forwardFlow:backwardFlow:streamingMode:error:](self, "opticalFlowsFrom:to:forwardFlow:backwardFlow:streamingMode:error:", v20, v26, forwardFlow, [opticalFlow2 backwardFlow], objc_msgSend(v7, "submissionMode") == 2, error);

  if (!v30)
  {
    if (error)
    {
      v35 = @"opticalFlowsFrom fail";
      v36 = 11;
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  kdebug_trace();
  v31 = 1;
LABEL_16:

LABEL_17:
LABEL_18:

  return v31;
}

- (BOOL)opticalFlowsFrom:(id)from to:(id)to forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow streamingMode:(BOOL)mode error:(id *)error
{
  modeCopy = mode;
  fromCopy = from;
  toCopy = to;
  v16 = toCopy;
  if (!fromCopy)
  {
    if (!error)
    {
      goto LABEL_25;
    }

    v19 = @"opticalFlowsFrom: Invalid input first";
LABEL_21:
    v20 = 12;
LABEL_22:
    errorMessage(v20, v19);
    *error = v17 = 0;
    goto LABEL_12;
  }

  if (!toCopy)
  {
    if (!error)
    {
      goto LABEL_25;
    }

    v19 = @"opticalFlowsFrom: Invalid input second";
    goto LABEL_21;
  }

  if (!flow)
  {
    if (!error)
    {
      goto LABEL_25;
    }

    v19 = @"opticalFlowsFrom: Invalid input forwardFlow";
    goto LABEL_21;
  }

  if (!backwardFlow)
  {
    if (!error)
    {
      goto LABEL_25;
    }

    v19 = @"opticalFlowsFrom: Invalid input backwardFlow";
    goto LABEL_21;
  }

  if (self->_revision != -1)
  {
    if (![(GenericFlow *)self->_genericFlow processWithFirstFrame:fromCopy secondFrame:toCopy forwardFlow:flow backwardFlow:backwardFlow streamingMode:modeCopy error:error]&& error)
    {
      *error = errorMessage(11, @"processWithFirstFrame fail");
    }

    goto LABEL_11;
  }

  kdebug_trace();
  if (-[FRCOpticalFlowEstimator opticalFlowsFrom:to:forwardFlow:backwardFlow:](self->_opticalFlowSPI, "opticalFlowsFrom:to:forwardFlow:backwardFlow:", [fromCopy buffer], objc_msgSend(v16, "buffer"), flow, backwardFlow) != -22000)
  {
    if (error)
    {
      v19 = @"opticalFlowsFrom fail";
      v20 = 11;
      goto LABEL_22;
    }

LABEL_25:
    v17 = 0;
    goto LABEL_12;
  }

  kdebug_trace();
LABEL_11:
  v17 = 1;
LABEL_12:

  return v17;
}

- (BOOL)finishProcessing
{
  opticalFlowSPI = self->_opticalFlowSPI;
  if (opticalFlowSPI)
  {
    [(FRCOpticalFlowEstimator *)opticalFlowSPI releaseResources];
    v4 = self->_opticalFlowSPI;
    self->_opticalFlowSPI = 0;
  }

  opticalFlow = self->_opticalFlow;
  if (opticalFlow)
  {
    [(VEOpticalFlowEstimator *)opticalFlow releaseResources];
    v6 = self->_opticalFlow;
    self->_opticalFlow = 0;
  }

  genericFlow = self->_genericFlow;
  if (genericFlow)
  {
    [(GenericFlow *)genericFlow finishProcessing];
  }

  [(BaseProcessor *)self resetFormat];
  [(BaseProcessor *)self resetBufferResolution];
  return 1;
}

- (OpticalFlowProcessor)initWithFrameWidth:(int64_t)width FrameHeight:(int64_t)height revision:(int64_t)revision
{
  v23.receiver = self;
  v23.super_class = OpticalFlowProcessor;
  v8 = [(BaseProcessor *)&v23 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_17;
  }

  v8->_revision = revision;
  v8->_streamingMode = 0;
  v8->_flowOnlyMode = 1;
  v8->_width = width;
  v8->_height = height;
  v8->_onDemandOpticalFlowBuffersAllocation = 0;
  v8->_useHomographyInFlow = 0;
  VELoggerInit(16, 0);
  kdebug_trace();
  if (v9->_revision == -1)
  {
    v10 = objc_alloc_init(MEMORY[0x277D07D30]);
    [(VEOpticalFlowEstimatorConfiguration *)v10 setDisableOutputFlowScaling:0];
    [(VEOpticalFlowEstimatorConfiguration *)v10 setRevision:1];
    v9->_skipLastLevelFlow = 0;
    [(VEOpticalFlowEstimatorConfiguration *)v10 setStreamingMode:0];
    [(VEOpticalFlowEstimatorConfiguration *)v10 setSkipLastLevel:v9->_skipLastLevelFlow];
    [(VEOpticalFlowEstimatorConfiguration *)v10 setAdaptationLayerOnly:0];
    [(VEOpticalFlowEstimatorConfiguration *)v10 setLegacyNormalization:1];
    if (v9->_opticalFlowSPI || (v18 = [objc_alloc(MEMORY[0x277D07D28]) initWithWidth:v9->_width height:v9->_height configuration:v10], opticalFlowSPI = v9->_opticalFlowSPI, v9->_opticalFlowSPI = v18, opticalFlowSPI, (v20 = v9->_opticalFlowSPI) == 0))
    {
LABEL_16:

LABEL_17:
      v21 = 0;
      goto LABEL_15;
    }

    if (!v9->_onDemandOpticalFlowBuffersAllocation)
    {
      [(FRCOpticalFlowEstimator *)v20 allocateResources];
    }
  }

  else
  {
    v10 = objc_alloc_init(VEOpticalFlowEstimatorConfiguration);
    [(VEOpticalFlowEstimatorConfiguration *)v10 setDisableOutputFlowScaling:1];
    [(VEOpticalFlowEstimatorConfiguration *)v10 setRevision:2];
    v9->_skipLastLevelFlow = 1;
    [(VEOpticalFlowEstimatorConfiguration *)v10 setSkipLastLevel:1];
    [(VEOpticalFlowEstimatorConfiguration *)v10 setAdaptationLayerOnly:0];
    [(VEOpticalFlowEstimatorConfiguration *)v10 setLegacyNormalization:1];
    if (v9->_opticalFlow)
    {
      goto LABEL_16;
    }

    v11 = [[VEOpticalFlowEstimator alloc] initWithWidth:v9->_width height:v9->_height configuration:v10];
    opticalFlow = v9->_opticalFlow;
    v9->_opticalFlow = v11;

    v13 = v9->_opticalFlow;
    if (!v13)
    {
      goto LABEL_16;
    }

    if (!v9->_onDemandOpticalFlowBuffersAllocation)
    {
      [(VEOpticalFlowEstimator *)v13 allocateResources];
    }

    UsageFromSize = getUsageFromSize(v9->_width, v9->_height);
    v9->_usage = UsageFromSize;
    if (UsageFromSize == -1)
    {
      goto LABEL_16;
    }

    v9->_rotation = [(OpticalFlowProcessor *)v9 getFrameRotation:UsageFromSize];
    usage = v9->_usage;
    v9->_usage = usage & 0xFFF;
    getAlignedInputFrameSizeForUsage(usage & 0xFFF, &v9->_width, &v9->_height);
    v16 = [[GenericFlow alloc] initWithOpticalFlow:v9->_opticalFlow usage:v9->_usage rotation:v9->_rotation];
    genericFlow = v9->_genericFlow;
    v9->_genericFlow = v16;

    if (!v9->_genericFlow)
    {
      goto LABEL_16;
    }
  }

  v21 = v9;
LABEL_15:

  return v21;
}

- (void)startSessionWithOpticalFlowConfig:(void *)a3 error:(_BYTE *)a4 .cold.1(void *a1, void *a2, void *a3, _BYTE *a4)
{
  if (a1)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: Invalid opticalFlowConfig revision %d, expect %d", objc_msgSend(a2, "revision"), *a3];
    *a1 = errorMessage(10, v6);
  }

  *a4 = 0;
}

@end