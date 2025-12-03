@interface VSRProcessor
+ (int64_t)getMobileAssetStatusForInputType:(int64_t)type percentCompleted:(int64_t *)completed;
+ (void)downloadMobileAssetWithInputType:(int64_t)type withCompletionHandler:(id)handler;
- (BOOL)finishProcessing;
- (BOOL)processWithSuperResolutionParams:(id)params error:(id *)error;
- (BOOL)startSessionWithSuperResolutionConfig:(id)config error:(id *)error;
- (VSRProcessor)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height inputType:(int64_t)type usePrecomputedFlow:(BOOL)flow;
@end

@implementation VSRProcessor

- (BOOL)processWithSuperResolutionParams:(id)params error:(id *)error
{
  paramsCopy = params;
  v7 = paramsCopy;
  if (!paramsCopy)
  {
    if (!error)
    {
      goto LABEL_47;
    }

    v17 = @"processWithSuperResolutionParams: Invalid input superResolutionParams";
    goto LABEL_36;
  }

  if (self->_inputType != 1)
  {
    if (self->_imageSREngine)
    {
      sourceFrame = [paramsCopy sourceFrame];
      PixelFormatType = CVPixelBufferGetPixelFormatType([sourceFrame buffer]);
      v20 = isPixelFormatSupported(PixelFormatType);

      if ((v20 & 1) == 0)
      {
        goto LABEL_30;
      }

      sourceFrame2 = [v7 sourceFrame];
      v22 = [(BaseProcessor *)self matchPixelFormat:sourceFrame2];

      if (!v22)
      {
        goto LABEL_32;
      }

      sourceFrame3 = [v7 sourceFrame];
      v24 = [(BaseProcessor *)self matchBufferResolution:sourceFrame3];

      if (!v24)
      {
        goto LABEL_34;
      }

      kdebug_trace();
      imageSREngine = self->_imageSREngine;
      sourceFrame4 = [v7 sourceFrame];
      buffer = [sourceFrame4 buffer];
      destinationFrame = [v7 destinationFrame];
      LOBYTE(imageSREngine) = -[ImageSR upscaleFrame:destinationHiResFrame:](imageSREngine, "upscaleFrame:destinationHiResFrame:", buffer, [destinationFrame buffer]);

      if (imageSREngine)
      {
        goto LABEL_24;
      }

      if (!error)
      {
        goto LABEL_47;
      }

      v17 = @"upscaleFrame fail";
      v52 = 5;
LABEL_37:
      errorMessage(v52, v17);
      *error = v50 = 0;
      goto LABEL_25;
    }

LABEL_28:
    if (!error)
    {
      goto LABEL_47;
    }

    v17 = @"Error: Session Not Started";
    v52 = 3;
    goto LABEL_37;
  }

  if (!self->_frNetEngine)
  {
    goto LABEL_28;
  }

  sourceFrame5 = [paramsCopy sourceFrame];
  v9 = CVPixelBufferGetPixelFormatType([sourceFrame5 buffer]);
  v10 = isPixelFormatSupported(v9);

  if ((v10 & 1) == 0)
  {
LABEL_30:
    if (!error)
    {
      goto LABEL_47;
    }

    v17 = @"Error: Pixel Format Not Supported";
    goto LABEL_36;
  }

  sourceFrame6 = [v7 sourceFrame];
  v12 = [(BaseProcessor *)self matchPixelFormat:sourceFrame6];

  if (!v12)
  {
LABEL_32:
    if (!error)
    {
      goto LABEL_47;
    }

    v17 = @"Error: Pixel Format Mismatch";
    goto LABEL_36;
  }

  sourceFrame7 = [v7 sourceFrame];
  v14 = [(BaseProcessor *)self matchBufferResolution:sourceFrame7];

  if (!v14)
  {
LABEL_34:
    if (!error)
    {
      goto LABEL_47;
    }

    v17 = @"Error: Buffer Resolution Mismatch";
LABEL_36:
    v52 = 12;
    goto LABEL_37;
  }

  kdebug_trace();
  if (self->_usePrecomputedFlow)
  {
    opticalFlow = [v7 opticalFlow];
    self->_forwardFlow = [opticalFlow forwardFlow];

    if (!self->_forwardFlow)
    {
      if (error)
      {
        v17 = @"Error allocating _forwardFlow";
        goto LABEL_44;
      }

LABEL_47:
      v50 = 0;
      goto LABEL_25;
    }

    opticalFlow2 = [v7 opticalFlow];
    self->_backwardFlow = [opticalFlow2 backwardFlow];

    if (!self->_backwardFlow)
    {
      if (error)
      {
        v17 = @"Error allocating _backwardFlow";
LABEL_44:
        v52 = 9;
        goto LABEL_37;
      }

      goto LABEL_47;
    }
  }

  else
  {
    v29 = [[DVPFrameOpticalFlow alloc] initWithForwardFlow:self->_forwardFlow backwardFlow:self->_backwardFlow];
    opticalFlowBuffers = self->_opticalFlowBuffers;
    self->_opticalFlowBuffers = v29;

    previousFrame = [v7 previousFrame];
    if (previousFrame && (v32 = previousFrame, [v7 previousFrame], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "buffer"), v33, v32, v34))
    {
      v35 = [DVPOpticalFlowParameters alloc];
      previousFrame2 = [v7 previousFrame];
    }

    else
    {
      v35 = [DVPOpticalFlowParameters alloc];
      previousFrame2 = [v7 sourceFrame];
    }

    v37 = previousFrame2;
    sourceFrame8 = [v7 sourceFrame];
    v39 = -[DVPOpticalFlowParameters initWithSourceFrame:nextFrame:submissionMode:opticalFlow:](v35, "initWithSourceFrame:nextFrame:submissionMode:opticalFlow:", v37, sourceFrame8, [v7 submissionMode], self->_opticalFlowBuffers);
    opticalFlowParams = self->_opticalFlowParams;
    self->_opticalFlowParams = v39;

    if (![(OpticalFlowProcessor *)self->_opticalFlowProcessor processWithOpticalFlowParams:self->_opticalFlowParams error:error])
    {
      if (error)
      {
        v17 = @"processWithOpticalFlowParams fail";
        v52 = 11;
        goto LABEL_37;
      }

      goto LABEL_47;
    }
  }

  errorCopy = error;
  frNetEngine = self->_frNetEngine;
  sourceFrame9 = [v7 sourceFrame];
  buffer2 = [sourceFrame9 buffer];
  previousFrame3 = [v7 previousFrame];
  buffer3 = [previousFrame3 buffer];
  previousOutputFrame = [v7 previousOutputFrame];
  buffer4 = [previousOutputFrame buffer];
  backwardFlow = self->_backwardFlow;
  destinationFrame2 = [v7 destinationFrame];
  LOBYTE(backwardFlow) = -[FRNet upscaleFrame:previousLowResFrame:previousHiResFrame:opticalFlow:destinationHiResFrame:](frNetEngine, "upscaleFrame:previousLowResFrame:previousHiResFrame:opticalFlow:destinationHiResFrame:", buffer2, buffer3, buffer4, backwardFlow, [destinationFrame2 buffer]);

  if ((backwardFlow & 1) == 0)
  {
    if (errorCopy)
    {
      errorMessage(5, @"upscaleFrame fail");
      *errorCopy = v50 = 0;
      goto LABEL_25;
    }

    goto LABEL_47;
  }

LABEL_24:
  kdebug_trace();
  v50 = 1;
LABEL_25:

  return v50;
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

    CVPixelBufferRelease(self->_forwardFlow);
    CVPixelBufferRelease(self->_backwardFlow);
  }

  frNetEngine = self->_frNetEngine;
  if (frNetEngine)
  {
    self->_frNetEngine = 0;
  }

  imageSREngine = self->_imageSREngine;
  if (imageSREngine)
  {
    self->_imageSREngine = 0;
  }

  [(BaseProcessor *)self resetFormat];
  [(BaseProcessor *)self resetBufferResolution];
  return 1;
}

+ (void)downloadMobileAssetWithInputType:(int64_t)type withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = handlerCopy;
  if (type == 1)
  {
    v7 = FRNet;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __71__VSRProcessor_downloadMobileAssetWithInputType_withCompletionHandler___block_invoke;
    v18 = &unk_278F53658;
    v8 = &v19;
    v19 = handlerCopy;
    v9 = &v15;
  }

  else
  {
    v7 = ImageSR;
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __71__VSRProcessor_downloadMobileAssetWithInputType_withCompletionHandler___block_invoke_2;
    v13 = &unk_278F53658;
    v8 = &v14;
    v14 = handlerCopy;
    v9 = &v10;
  }

  [(__objc2_class *)v7 downloadMobileAssetWithCompletionHandler:v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19];
}

uint64_t __71__VSRProcessor_downloadMobileAssetWithInputType_withCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __71__VSRProcessor_downloadMobileAssetWithInputType_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (int64_t)getMobileAssetStatusForInputType:(int64_t)type percentCompleted:(int64_t *)completed
{
  v4 = off_278F53300;
  if (type != 1)
  {
    v4 = off_278F53308;
  }

  return [(__objc2_class *)*v4 getMobileAssetStatusWithPercentCompleted:completed];
}

- (VSRProcessor)initWithFrameWidth:(int64_t)width frameHeight:(int64_t)height inputType:(int64_t)type usePrecomputedFlow:(BOOL)flow
{
  v13.receiver = self;
  v13.super_class = VSRProcessor;
  v10 = [(BaseProcessor *)&v13 init];
  if (v10)
  {
    OUTLINED_FUNCTION_2_0(32);
    OUTLINED_FUNCTION_2_0(40);
    OUTLINED_FUNCTION_2_0(48);
    OUTLINED_FUNCTION_2_0(56);
    OUTLINED_FUNCTION_2_0(64);
    OUTLINED_FUNCTION_2_0(72);
    v10->_frameWidth = width;
    v10->_frameHeight = height;
    v10->_useMPS = type != 1;
    v10->_inputType = type;
    v10->_usePrecomputedFlow = flow;
    VELoggerInit(16, 0);
    v11 = v10;
  }

  return v10;
}

- (BOOL)startSessionWithSuperResolutionConfig:(id)config error:(id *)error
{
  configCopy = config;
  if (self->_inputType != 1)
  {
    if (!self->_imageSREngine)
    {
      v9 = +[DVPSuperResolutionConfiguration supportedRevisions];
      v10 = [v9 containsIndex:{objc_msgSend(configCopy, "revision")}];

      if (v10)
      {
        [configCopy scaleFactor];
        [configCopy scaleFactor];
        OUTLINED_FUNCTION_0_0();
        if ((getUsageFromSize(self->_frameWidth, self->_frameHeight) & 0x1000) != 0)
        {
          frameWidth = self->_frameWidth;
          self->_frameWidth = self->_frameHeight;
          self->_frameHeight = frameWidth;
        }

        v12 = [ImageSR alloc];
        v13 = OUTLINED_FUNCTION_4();
        v14 = OUTLINED_FUNCTION_1_0(v13, 121);
        imageSREngine = self->_imageSREngine;
        self->_imageSREngine = v14;

        if (!self->_imageSREngine)
        {
          if (!error)
          {
            goto LABEL_38;
          }

          v29 = @"Could not init _imageSREngine";
          goto LABEL_36;
        }

        OUTLINED_FUNCTION_0_0();
        goto LABEL_19;
      }

LABEL_21:
      if (error)
      {
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: Invalid superResolutionConfig revision %d", objc_msgSend(configCopy, "revision")];
        *error = errorMessage(10, v28);
      }

      goto LABEL_38;
    }

    if (!error)
    {
      goto LABEL_38;
    }

    v29 = @"ImageSR already initialized";
LABEL_27:
    v30 = 4;
LABEL_37:
    errorMessage(v30, v29);
    *error = v22 = 0;
    goto LABEL_20;
  }

  if (self->_frNetEngine)
  {
    if (!error)
    {
      goto LABEL_38;
    }

    v29 = @"FRNet already initialized";
    goto LABEL_27;
  }

  v7 = +[DVPSuperResolutionConfiguration supportedRevisions];
  v8 = [v7 containsIndex:{objc_msgSend(configCopy, "revision")}];

  if ((v8 & 1) == 0)
  {
    goto LABEL_21;
  }

  if (self->_usePrecomputedFlow)
  {
    goto LABEL_16;
  }

  v16 = [[DVPOpticalFlowConfiguration alloc] initWithFrameWidth:self->_frameWidth frameHeight:self->_frameHeight qualityPrioritization:1 revision:1];
  opticalFlowConfig = self->_opticalFlowConfig;
  self->_opticalFlowConfig = v16;

  v18 = [[OpticalFlowProcessor alloc] initWithFrameWidth:[(DVPOpticalFlowConfiguration *)self->_opticalFlowConfig frameWidth] FrameHeight:[(DVPOpticalFlowConfiguration *)self->_opticalFlowConfig frameHeight] revision:1];
  opticalFlowProcessor = self->_opticalFlowProcessor;
  self->_opticalFlowProcessor = v18;

  if (!self->_opticalFlowProcessor)
  {
    if (!error)
    {
      goto LABEL_38;
    }

    v29 = @"Could not init OpticalFlowProcessor";
    goto LABEL_36;
  }

  [(DVPOpticalFlowConfiguration *)self->_opticalFlowConfig flowBufferWidth];
  v20 = OUTLINED_FUNCTION_3([(DVPOpticalFlowConfiguration *)self->_opticalFlowConfig flowBufferHeight]);
  self->_forwardFlow = v20;
  if (!v20)
  {
LABEL_19:
    v22 = 1;
    goto LABEL_20;
  }

  [(DVPOpticalFlowConfiguration *)self->_opticalFlowConfig flowBufferWidth];
  v21 = OUTLINED_FUNCTION_3([(DVPOpticalFlowConfiguration *)self->_opticalFlowConfig flowBufferHeight]);
  self->_backwardFlow = v21;
  v22 = 1;
  if (v21)
  {
    self->_nextIndex = 0;
    self->_prevIndex = 1;
LABEL_16:
    [configCopy scaleFactor];
    [configCopy scaleFactor];
    OUTLINED_FUNCTION_0_0();
    getUsageFromSize(self->_frameWidth, self->_frameHeight);
    v23 = [FRNet alloc];
    v24 = OUTLINED_FUNCTION_4();
    v25 = OUTLINED_FUNCTION_1_0(v24, 121);
    frNetEngine = self->_frNetEngine;
    self->_frNetEngine = v25;

    if (self->_frNetEngine)
    {
      OUTLINED_FUNCTION_0_0();
      if (self->_usePrecomputedFlow)
      {
        goto LABEL_19;
      }

      [(OpticalFlowProcessor *)self->_opticalFlowProcessor setFlowOnlyMode:0];
      if ([(OpticalFlowProcessor *)self->_opticalFlowProcessor startSessionWithOpticalFlowConfig:self->_opticalFlowConfig error:error])
      {
        goto LABEL_19;
      }

      if (error)
      {
        v29 = @"Could not start the _opticalFlowProcessor session";
        goto LABEL_36;
      }

LABEL_38:
      v22 = 0;
      goto LABEL_20;
    }

    if (!error)
    {
      goto LABEL_38;
    }

    v29 = @"Could not init FRNet Engine";
LABEL_36:
    v30 = 7;
    goto LABEL_37;
  }

LABEL_20:

  return v22;
}

@end