@interface VDGProcessor
- (BOOL)finishProcessing;
- (BOOL)processWithDeghostingParams:(id)a3 error:(id *)a4;
- (BOOL)startSessionWithDeghostingConfig:(id)a3 error:(id *)a4;
- (VDGProcessor)initWithFrameWidth:(int64_t)a3 FrameHeight:(int64_t)a4 usePrecomputedFlow:(BOOL)a5 revision:(int64_t)a6;
@end

@implementation VDGProcessor

- (BOOL)processWithDeghostingParams:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    if (!a4)
    {
      goto LABEL_47;
    }

    v72 = @"processWithDeghostingParams: Invalid input deghostingParams";
LABEL_46:
    errorMessage(12, v72);
    *a4 = v69 = 0;
    goto LABEL_39;
  }

  v8 = [v6 sourceFrame];
  PixelFormatType = CVPixelBufferGetPixelFormatType([v8 buffer]);
  v10 = isPixelFormatSupported(PixelFormatType);

  if ((v10 & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_47;
    }

    v72 = @"Error: Pixel Format Not Supported";
    goto LABEL_46;
  }

  v11 = [v7 sourceFrame];
  v12 = [(BaseProcessor *)self matchPixelFormat:v11];

  if (!v12)
  {
    if (a4)
    {
      v72 = @"deghostingParams pixel format mismatch with VSAProcessor's format for the DVPFrameProcessor session";
      goto LABEL_46;
    }

LABEL_47:
    v69 = 0;
    goto LABEL_39;
  }

  v13 = [DVPFrame alloc];
  v14 = [v7 sourceFrame];
  v15 = [v14 buffer];
  v16 = [v7 sourceFrame];
  v17 = v16;
  if (v16)
  {
    [v16 presentationTimeStamp];
  }

  else
  {
    v80 = 0;
    v81 = 0;
    v82 = 0;
  }

  v18 = [(DVPFrame *)v13 initWithBuffer:v15 presentationTimeStamp:&v80];

  if (!v18)
  {
    if (a4)
    {
      v73 = @"Error allocating currentFrame";
LABEL_57:
      errorMessage(9, v73);
      v70 = 0;
      *a4 = v69 = 0;
      goto LABEL_38;
    }

LABEL_58:
    v70 = 0;
    goto LABEL_59;
  }

  v19 = [v7 nextFrame];
  if (!v19 || (v20 = v19, [v7 nextFrame], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "buffer"), v21, v20, !v22))
  {
    v28 = 0;
    goto LABEL_15;
  }

  v23 = [DVPFrame alloc];
  v24 = [v7 nextFrame];
  v25 = [v24 buffer];
  v26 = [v7 nextFrame];
  v27 = v26;
  if (v26)
  {
    [v26 presentationTimeStamp];
  }

  else
  {
    v80 = 0;
    v81 = 0;
    v82 = 0;
  }

  v28 = [(DVPFrame *)v23 initWithBuffer:v25 presentationTimeStamp:&v80];

  if (!v28)
  {
    if (a4)
    {
      v73 = @"Error allocating nextFrame";
      goto LABEL_57;
    }

    goto LABEL_58;
  }

LABEL_15:
  v79 = v28;
  kdebug_trace();
  if (self->_usePrecomputedFlow)
  {
    v29 = [v7 opticalFlow];
    self->_forwardFlow = [v29 forwardFlow];

    if (!self->_forwardFlow)
    {
      if (a4)
      {
        v31 = @"Error missing _forwardFlow";
        goto LABEL_54;
      }

LABEL_63:
      v69 = 0;
      goto LABEL_37;
    }

    v30 = [v7 opticalFlow];
    self->_backwardFlow = [v30 backwardFlow];

    if (!self->_backwardFlow)
    {
      if (a4)
      {
        v31 = @"Error missing backwardFlow";
LABEL_54:
        v74 = 9;
LABEL_62:
        errorMessage(v74, v31);
        *a4 = v69 = 0;
        goto LABEL_37;
      }

      goto LABEL_63;
    }
  }

  else if (self->_acceptsOpticalFlow)
  {
    v32 = [[DVPFrameOpticalFlow alloc] initWithForwardFlow:self->_forwardFlow backwardFlow:self->_backwardFlow];
    opticalFlowBuffers = self->_opticalFlowBuffers;
    self->_opticalFlowBuffers = v32;

    v34 = [v7 nextFrame];
    if (v34 && (v35 = v34, [v7 nextFrame], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "buffer"), v36, v35, v37))
    {
      v38 = [DVPOpticalFlowParameters alloc];
      v39 = [v7 sourceFrame];
      v40 = [v7 nextFrame];
    }

    else
    {
      v38 = [DVPOpticalFlowParameters alloc];
      v39 = [v7 sourceFrame];
      v40 = [v7 sourceFrame];
    }

    v41 = v40;
    v42 = -[DVPOpticalFlowParameters initWithSourceFrame:nextFrame:submissionMode:opticalFlow:](v38, "initWithSourceFrame:nextFrame:submissionMode:opticalFlow:", v39, v40, [v7 submissionMode], self->_opticalFlowBuffers);
    opticalFlowParams = self->_opticalFlowParams;
    self->_opticalFlowParams = v42;

    if (![(OpticalFlowProcessor *)self->_opticalFlowProcessor processWithOpticalFlowParams:self->_opticalFlowParams error:a4])
    {
      if (a4)
      {
        v31 = @"processWithOpticalFlowParams fail";
        v74 = 11;
        goto LABEL_62;
      }

      goto LABEL_63;
    }
  }

  v44 = [v7 previousOutputFrame];
  if (v44)
  {
    v45 = [v7 previousOutputFrame];
    v77 = [v45 buffer];
  }

  else
  {
    v77 = 0;
  }

  v76 = a4;

  v46 = [v7 previousPreviousOutputFrame];
  if (v46)
  {
    v47 = [v7 previousPreviousOutputFrame];
    v48 = [v47 buffer];
  }

  else
  {
    v48 = 0;
  }

  v78 = v18;

  v49 = [v7 nextFrame];
  if (v49)
  {
    v50 = [v7 nextFrame];
    v51 = [v50 buffer];
  }

  else
  {
    v51 = 0;
  }

  ggmController = self->_ggmController;
  v53 = [v7 sourceFrame];
  v54 = [v53 buffer];
  forwardFlow = self->_forwardFlow;
  backwardFlow = self->_backwardFlow;
  [v7 sourceFrameOpticalCenter];
  v58 = v57;
  v60 = v59;
  [v7 nextFrameOpticalCenter];
  v62 = v61;
  v64 = v63;
  [v7 opticalCenterShift];
  v66 = v65;
  v67 = [v7 submissionMode] == 1;
  v68 = [v7 destinationFrame];
  LOBYTE(v75) = v67;
  LOBYTE(v54) = -[GGMController processSourceFrame:nextFrame:forwardFlow:backwardFlow:ourceFrameOpticalCenter:nextFrameOpticalCenter:opticalCenterShift:previousOutputFrame:previousPreviousOutputFrame:randomAccessMode:destinationFrame:](ggmController, "processSourceFrame:nextFrame:forwardFlow:backwardFlow:ourceFrameOpticalCenter:nextFrameOpticalCenter:opticalCenterShift:previousOutputFrame:previousPreviousOutputFrame:randomAccessMode:destinationFrame:", v54, v51, forwardFlow, backwardFlow, v77, v48, v58, v60, v62, v64, v66, v75, [v68 buffer]);

  if ((v54 & 1) == 0)
  {
    v18 = v78;
    v70 = v79;
    if (v76)
    {
      errorMessage(5, @"processWithDeghostingParams fail");
      *v76 = v69 = 0;
      goto LABEL_38;
    }

LABEL_59:
    v69 = 0;
    goto LABEL_38;
  }

  kdebug_trace();
  v69 = 1;
  v18 = v78;
LABEL_37:
  v70 = v79;
LABEL_38:

LABEL_39:
  return v69;
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

  CVPixelBufferRelease(self->_forwardFlow);
  CVPixelBufferRelease(self->_backwardFlow);
  ggmController = self->_ggmController;
  if (ggmController)
  {
    [(GGMController *)ggmController endSession];
    v6 = self->_ggmController;
    self->_ggmController = 0;
  }

  [(BaseProcessor *)self resetFormat];
  return 1;
}

- (VDGProcessor)initWithFrameWidth:(int64_t)a3 FrameHeight:(int64_t)a4 usePrecomputedFlow:(BOOL)a5 revision:(int64_t)a6
{
  v13.receiver = self;
  v13.super_class = VDGProcessor;
  v9 = [(BaseProcessor *)&v13 init:a3];
  v10 = v9;
  if (v9)
  {
    v9->_frameWidth = a3;
    v9->_frameHeight = a4;
    v9->_usePrecomputedFlow = a5;
    OUTLINED_FUNCTION_3_0(32);
    OUTLINED_FUNCTION_3_0(40);
    OUTLINED_FUNCTION_3_0(48);
    OUTLINED_FUNCTION_3_0(64);
    v10->_acceptsOpticalFlow = 0;
    v11 = v10;
  }

  return v10;
}

- (BOOL)startSessionWithDeghostingConfig:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (self->_ggmController)
  {
    if (a4)
    {
      v21 = @"GGM Controller already initialized";
      v22 = 4;
LABEL_22:
      v24 = errorMessage(v22, v21);
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (!self->_usePrecomputedFlow && self->_acceptsOpticalFlow)
  {
    v7 = [DVPOpticalFlowConfiguration alloc];
    OUTLINED_FUNCTION_0_1();
    v9 = [v8 initWithFrameWidth:? frameHeight:? qualityPrioritization:? revision:?];
    opticalFlowConfig = self->_opticalFlowConfig;
    self->_opticalFlowConfig = v9;

    v11 = [[OpticalFlowProcessor alloc] initWithFrameWidth:[(DVPOpticalFlowConfiguration *)self->_opticalFlowConfig frameWidth] FrameHeight:[(DVPOpticalFlowConfiguration *)self->_opticalFlowConfig frameHeight] revision:1];
    opticalFlowProcessor = self->_opticalFlowProcessor;
    self->_opticalFlowProcessor = v11;

    if (!self->_opticalFlowProcessor)
    {
      if (a4)
      {
        v21 = @"Could not init OpticalFlowProcessor";
        goto LABEL_21;
      }

LABEL_26:
      v19 = 0;
      goto LABEL_13;
    }

    [(DVPOpticalFlowConfiguration *)self->_opticalFlowConfig flowBufferWidth];
    v13 = OUTLINED_FUNCTION_1_1([(DVPOpticalFlowConfiguration *)self->_opticalFlowConfig flowBufferHeight]);
    self->_forwardFlow = v13;
    if (!v13)
    {
      goto LABEL_12;
    }

    [(DVPOpticalFlowConfiguration *)self->_opticalFlowConfig flowBufferWidth];
    v14 = OUTLINED_FUNCTION_1_1([(DVPOpticalFlowConfiguration *)self->_opticalFlowConfig flowBufferHeight]);
    self->_backwardFlow = v14;
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_0_0();
  v15 = [GGMController alloc];
  OUTLINED_FUNCTION_0_1();
  v17 = [v16 initWithFrameWidth:? FrameHeight:? usePrecomputedFlow:?];
  ggmController = self->_ggmController;
  self->_ggmController = v17;

  if (!self->_ggmController)
  {
    if (a4)
    {
      v23 = @"Could not init GGMController";
LABEL_18:
      v24 = errorMessage(7, v23);
LABEL_23:
      v19 = 0;
      *a4 = v24;
      goto LABEL_13;
    }

LABEL_29:
    v19 = 0;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_0();
  if (!self->_usePrecomputedFlow && self->_acceptsOpticalFlow)
  {
    [(OpticalFlowProcessor *)self->_opticalFlowProcessor setStreamingMode:1];
    if (![(OpticalFlowProcessor *)self->_opticalFlowProcessor startSessionWithOpticalFlowConfig:self->_opticalFlowConfig error:a4])
    {
      if (a4)
      {
        v23 = @"Could not start the session";
        goto LABEL_18;
      }

      goto LABEL_29;
    }
  }

  if (!-[GGMController startSessionWithQualityMode:error:](self->_ggmController, "startSessionWithQualityMode:error:", [v6 qualityPrioritization], a4))
  {
    if (a4)
    {
      v21 = @"Could not start the session";
LABEL_21:
      v22 = 7;
      goto LABEL_22;
    }

    goto LABEL_26;
  }

LABEL_12:
  v19 = 1;
LABEL_13:

  return v19;
}

@end