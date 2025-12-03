@interface BWJasperDisparityProcessorController
+ (void)initialize;
- (BOOL)finishProcessingCurrentInputNow;
- (BWJasperDisparityProcessorController)initWithConfiguration:(id)configuration;
- (id)jasperPointCloudForColorBuffer:(id)buffer;
- (int)_setupJasperDisparityProcessor;
- (int)enqueueInputForProcessing:(id)processing delegate:(id)delegate;
- (void)_execute;
- (void)_serviceNextRequest;
- (void)_updateStateIfNeeded;
- (void)addPointCloudToTimeMachine:(opaqueCMSampleBuffer *)machine;
- (void)cancelProcessing;
- (void)dealloc;
@end

@implementation BWJasperDisparityProcessorController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWJasperDisparityProcessorController)initWithConfiguration:(id)configuration
{
  v9.receiver = self;
  v9.super_class = BWJasperDisparityProcessorController;
  v4 = [(BWJasperDisparityProcessorController *)&v9 init];
  if (v4)
  {
    v4->_configuration = configuration;
    v4->_requestQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [[FigStateMachine alloc] initWithLabel:@"BWJasperDisparityProcessorController state machine" stateCount:4 initialState:1 owner:v4];
    [(FigStateMachine *)v5 setPerformsAtomicStateTransitions:0];
    [(FigStateMachine *)v5 setLabel:@"Idle" forState:1];
    [(FigStateMachine *)v5 setLabel:@"Ready" forState:2];
    [(FigStateMachine *)v5 setLabel:@"Waiting" forState:4];
    [(FigStateMachine *)v5 setLabel:@"Processing" forState:8];
    [(FigStateMachine *)v5 whenTransitioningToStates:1 callHandler:&__block_literal_global_93];
    [(FigStateMachine *)v5 whenTransitioningToStates:2 callHandler:&__block_literal_global_211_0];
    [(FigStateMachine *)v5 whenTransitioningToState:4 callHandler:&__block_literal_global_213_0];
    [(FigStateMachine *)v5 whenTransitioningToState:8 callHandler:&__block_literal_global_215_0];
    v4->_stateMachine = v5;
    *v4->_anon_80 = 1065353216;
    *&v4->_anon_80[20] = 1065353216;
    *&v4->_anon_80[40] = 1065353216;
    v4->_pointClouds = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4->_pointCloudsLock._os_unfair_lock_opaque = 0;
    v6 = objc_autoreleasePoolPush();
    _setupJasperDisparityProcessor = [(BWJasperDisparityProcessorController *)v4 _setupJasperDisparityProcessor];
    objc_autoreleasePoolPop(v6);
    if (_setupJasperDisparityProcessor)
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  depthFormatDescription = self->_depthFormatDescription;
  if (depthFormatDescription)
  {
    CFRelease(depthFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWJasperDisparityProcessorController;
  [(BWStillImageProcessorController *)&v4 dealloc];
}

- (int)enqueueInputForProcessing:(id)processing delegate:(id)delegate
{
  v5 = [[BWJasperDisparityProcessorRequest alloc] initWithInput:processing delegate:delegate];
  [(NSMutableArray *)self->_requestQueue addObject:v5];

  if ([(FigStateMachine *)self->_stateMachine currentState]== 1)
  {
    [(FigStateMachine *)self->_stateMachine transitionToState:2];
  }

  return 0;
}

- (BOOL)finishProcessingCurrentInputNow
{
  v2 = self->_currentRequest;
  [(BWJasperDisparityProcessorInput *)[(BWJasperDisparityProcessorRequest *)v2 input] executeNow];
  v3 = [(BWJasperDisparityProcessorRequest *)v2 err]== 0;

  return v3;
}

- (void)addPointCloudToTimeMachine:(opaqueCMSampleBuffer *)machine
{
  if (machine)
  {
    os_unfair_lock_lock(&self->_pointCloudsLock);
    [(NSMutableArray *)self->_pointClouds addObject:machine];
    v5 = [(NSMutableArray *)self->_pointClouds count];
    if (v5 > [(BWJasperDisparityProcessorControllerConfiguration *)self->_configuration pointCloudTimeMachineCapacity])
    {
      [(NSMutableArray *)self->_pointClouds removeObjectAtIndex:0];
    }

    os_unfair_lock_unlock(&self->_pointCloudsLock);
  }

  else
  {
    [BWJasperDisparityProcessorController addPointCloudToTimeMachine:];
  }
}

- (void)cancelProcessing
{
  [(NSMutableArray *)self->_requestQueue removeAllObjects];
  [(BWJasperDisparityProcessorRequest *)self->_currentRequest setErr:4294950490];

  [(BWJasperDisparityProcessorController *)self _serviceNextRequest];
}

- (id)jasperPointCloudForColorBuffer:(id)buffer
{
  os_unfair_lock_lock(&self->_pointCloudsLock);
  if ([buffer colorBuffer] && -[NSMutableArray count](self->_pointClouds, "count"))
  {
    if (dword_1EB58E7A0)
    {
      v50 = 0;
      v49 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    colorBuffer = [buffer colorBuffer];
    v7 = *off_1E798A3C8;
    [objc_msgSend(CMGetAttachment(colorBuffer *off_1E798A3C8];
    v9 = v8;
    colorBuffer2 = [buffer colorBuffer];
    if (colorBuffer2)
    {
      v11 = CMGetAttachment(colorBuffer2, v7, 0);
      v12 = *off_1E798A420;
      CMTimeMakeFromDictionary(&time, [v11 objectForKeyedSubscript:*off_1E798A420]);
      Seconds = CMTimeGetSeconds(&time);
    }

    else
    {
      v12 = *off_1E798A420;
      Seconds = 0.0;
    }

    v14 = 0;
    v15 = v9 * 0.5 + Seconds;
    v16 = 0.0;
    do
    {
      v17 = v14;
      if ([(NSMutableArray *)self->_pointClouds count]- 1 <= v14)
      {
        break;
      }

      if (v16 == 0.0)
      {
        v18 = [(NSMutableArray *)self->_pointClouds objectAtIndexedSubscript:v14];
        if (v18)
        {
          v19 = [CMGetAttachment(v18 v7];
          CMTimeMakeFromDictionary(&time, v19);
          v16 = CMTimeGetSeconds(&time);
        }

        else
        {
          v16 = 0.0;
        }
      }

      ++v14;
      v20 = [(NSMutableArray *)self->_pointClouds objectAtIndexedSubscript:v17 + 1];
      if (v20)
      {
        v21 = [CMGetAttachment(v20 v7];
        CMTimeMakeFromDictionary(&time, v21);
        v22 = CMTimeGetSeconds(&time);
      }

      else
      {
        v22 = 0.0;
      }

      v23 = vabdd_f64(v15, v16);
      v16 = v22;
    }

    while (v23 > vabdd_f64(v15, v22));
    if (dword_1EB58E7A0)
    {
      v50 = 0;
      v49 = OS_LOG_TYPE_DEFAULT;
      v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v25 = v50;
      if (os_log_type_enabled(v24, v49))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        v27 = [(NSMutableArray *)self->_pointClouds objectAtIndexedSubscript:v17];
        if (v27)
        {
          v28 = [CMGetAttachment(v27 v7];
          CMTimeMakeFromDictionary(&time, v28);
          v29 = CMTimeGetSeconds(&time);
        }

        else
        {
          v29 = 0.0;
        }

        v38 = 136316418;
        v39 = "[BWJasperDisparityProcessorController jasperPointCloudForColorBuffer:]";
        v40 = 1024;
        *v41 = v17;
        *&v41[4] = 2048;
        *&v41[6] = v29;
        v42 = 2048;
        v43 = v9 * 0.5 + Seconds;
        v44 = 2048;
        v45 = Seconds;
        v46 = 2048;
        v47 = v9;
        LODWORD(v37) = 58;
        v35 = &v38;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v30 = [(NSMutableArray *)self->_pointClouds objectAtIndexedSubscript:v17, v35, v37];
    os_unfair_lock_unlock(&self->_pointCloudsLock);
    CVDataBuffer = BWSampleBufferGetCVDataBuffer(v30);
    return [objc_alloc(getADJasperPointCloudClass()) initWithDataBuffer:CVDataBuffer];
  }

  else
  {
    v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    os_unfair_lock_unlock(&self->_pointCloudsLock);
    return 0;
  }
}

- (void)_updateStateIfNeeded
{
  currentRequest = self->_currentRequest;
  currentState = [(FigStateMachine *)self->_stateMachine currentState];
  if (currentRequest)
  {
    if (currentState == 2)
    {
      v5 = 4;
    }

    else if (currentState == 4)
    {
      if ([(BWJasperDisparityProcessorInput *)[(BWJasperDisparityProcessorRequest *)currentRequest input] isReadyToExecute])
      {
        v5 = 8;
      }

      else
      {
        v5 = 4;
      }
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 1;
  }

  if (v5 != [(FigStateMachine *)self->_stateMachine currentState])
  {
    stateMachine = self->_stateMachine;

    [(FigStateMachine *)stateMachine transitionToState:v5];
  }
}

- (void)_serviceNextRequest
{
  delegate = [(BWJasperDisparityProcessorRequest *)self->_currentRequest delegate];
  input = [(BWJasperDisparityProcessorRequest *)self->_currentRequest input];
  v5 = [(BWJasperDisparityProcessorRequest *)self->_currentRequest err];

  self->_currentRequest = 0;
  [(BWJasperDisparityProcessorControllerDelegate *)delegate processorController:self didFinishProcessingInput:input err:v5];

  firstObject = [(NSMutableArray *)self->_requestQueue firstObject];
  self->_currentRequest = firstObject;
  if (firstObject)
  {
    [(NSMutableArray *)self->_requestQueue removeObjectAtIndex:0];
    [(BWJasperDisparityProcessorInput *)[(BWJasperDisparityProcessorRequest *)self->_currentRequest input] setDelegate:self];
  }

  [(BWJasperDisparityProcessorController *)self _updateStateIfNeeded];
}

- (void)_execute
{
  v24 = 0;
  v25 = 0;
  v23 = 0;
  colorBuffer = [(BWJasperDisparityProcessorInput *)[(BWJasperDisparityProcessorRequest *)self->_currentRequest input] colorBuffer];
  currentRequest = self->_currentRequest;
  if (!colorBuffer)
  {
    goto LABEL_18;
  }

  if ([(BWJasperDisparityProcessorRequest *)currentRequest err])
  {
    goto LABEL_15;
  }

  if (![(BWJasperDisparityProcessorInput *)[(BWJasperDisparityProcessorRequest *)self->_currentRequest input] skipProcessing])
  {
    v5 = [CMGetAttachment(colorBuffer *off_1E798A3C8];
    v6 = *off_1E798A0C8;
    v7 = [(NSDictionary *)[(BWStillImageProcessorControllerConfiguration *)self->_configuration sensorConfigurationsByPortType] objectForKeyedSubscript:v5];
    v8 = [(NSDictionary *)[(BWStillImageProcessorControllerConfiguration *)self->_configuration sensorConfigurationsByPortType] objectForKeyedSubscript:v6];
    if (!v7)
    {
      goto LABEL_15;
    }

    v9 = v8;
    if (!v8)
    {
      goto LABEL_15;
    }

    ImageBuffer = CMSampleBufferGetImageBuffer(colorBuffer);
    currentRequest = self->_currentRequest;
    if (ImageBuffer)
    {
      v11 = [(BWJasperDisparityProcessorController *)self jasperPointCloudForColorBuffer:[(BWJasperDisparityProcessorRequest *)currentRequest input]];
      currentRequest = self->_currentRequest;
      if (v11)
      {
        v25 = [(BWJasperDisparityProcessorControllerDelegate *)[(BWJasperDisparityProcessorRequest *)currentRequest delegate] processorController:self newOutputPixelBufferForProcessorInput:[(BWJasperDisparityProcessorRequest *)self->_currentRequest input] type:2001];
        if (v25)
        {
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          [(BWJasperDisparityProcessorRequest *)self->_currentRequest setErr:FigCaptureCreateJasperToColorCameraTransformForJasperSensorConfiguration(v9, &v17)];
          if (![(BWJasperDisparityProcessorRequest *)self->_currentRequest err])
          {
            [(BWJasperDisparityProcessorRequest *)self->_currentRequest setErr:FigCaptureCreateColorCameraCalibrationForColorSampleBuffer(colorBuffer, v7, [(BWJasperDisparityProcessorControllerConfiguration *)self->_configuration horizontalSensorBinningFactor], [(BWJasperDisparityProcessorControllerConfiguration *)self->_configuration verticalSensorBinningFactor], &v24)];
            if (![(BWJasperDisparityProcessorRequest *)self->_currentRequest err])
            {
              if (v24)
              {
                [(BWJasperDisparityProcessorRequest *)self->_currentRequest setErr:FigCaptureCreateDepthMetadataForColorCameraCalibration(v24, [(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)[(BWJasperDisparityProcessorRequest *)self->_currentRequest input] settings] depthDataFiltered], &v23)];
                if (![(BWJasperDisparityProcessorRequest *)self->_currentRequest err])
                {
                  [objc_msgSend(-[ADJasperColorV2Executor executorParameters](self->_adStillImageExecutor "executorParameters")];
                  [(BWJasperDisparityProcessorRequest *)self->_currentRequest setErr:[(ADJasperColorV2Executor *)self->_adStillImageExecutor executeWithColor:ImageBuffer pointCloud:v11 jasperToColorTransform:v24 colorCamera:&v25 outputDepthMap:0 outputConfidenceMap:*&v17, *&v18, *&v19, *&v20]];
                  if (![(BWJasperDisparityProcessorRequest *)self->_currentRequest err])
                  {
                    v12 = *off_1E798D2B8;
                    CMSetAttachment(v25, *off_1E798D2B8, v23, 1u);
                    CMSetAttachment(colorBuffer, v12, v23, 1u);
                    BWSampleBufferSetAttachedMediaFromPixelBuffer(colorBuffer, @"Depth", v25, &self->_depthFormatDescription, 0, 0, 1);
                  }
                }
              }
            }
          }

          goto LABEL_15;
        }

        currentRequest = self->_currentRequest;
        v13 = 4294954510;
LABEL_22:
        [(BWJasperDisparityProcessorRequest *)currentRequest setErr:v13];
        goto LABEL_15;
      }
    }

LABEL_18:
    v13 = 4294954516;
    goto LABEL_22;
  }

  if (dword_1EB58E7A0)
  {
    v22 = 0;
    v21 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_15:
  [(BWJasperDisparityProcessorControllerDelegate *)[(BWJasperDisparityProcessorRequest *)self->_currentRequest delegate:v15] processorController:self didFinishProcessingSampleBuffer:colorBuffer type:[(BWJasperDisparityProcessorInput *)[(BWJasperDisparityProcessorRequest *)self->_currentRequest input] colorBufferType] processorInput:[(BWJasperDisparityProcessorRequest *)self->_currentRequest input] err:[(BWJasperDisparityProcessorRequest *)self->_currentRequest err]];
  if (v25)
  {
    CFRelease(v25);
  }

  [(BWJasperDisparityProcessorController *)self _updateStateIfNeeded];
}

- (int)_setupJasperDisparityProcessor
{
  if (self->_adStillImageExecutor)
  {
    return 0;
  }

  if (!FigCapturePixelFormatIsDepthData([(BWVideoFormat *)[(BWJasperDisparityProcessorControllerConfiguration *)self->_configuration outputDepthFormat] pixelFormat]))
  {
    v4 = -12780;
    goto LABEL_5;
  }

  v3 = [objc_alloc(getADJasperColorV2ExecutorClass()) initWithInputPrioritization:3 engineType:4];
  self->_adStillImageExecutor = v3;
  if (!v3)
  {
    FigDebugAssert3();
    v4 = -12786;
    goto LABEL_5;
  }

  v4 = [(ADJasperColorV2Executor *)self->_adStillImageExecutor prepareForColorROI:0.0, 0.0, [(BWVideoFormat *)[(BWJasperDisparityProcessorControllerConfiguration *)self->_configuration inputColorFormat] width], [(BWVideoFormat *)[(BWJasperDisparityProcessorControllerConfiguration *)self->_configuration inputColorFormat] height]];
  if (v4)
  {
LABEL_5:

    self->_adStillImageExecutor = 0;
  }

  return v4;
}

@end