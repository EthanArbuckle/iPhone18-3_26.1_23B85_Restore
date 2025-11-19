@interface BWJasperColorStillsExecutorController
+ (void)initialize;
- (BOOL)_sourceDimensionsAreTargetDimensions;
- (BOOL)finishProcessingCurrentInputNow;
- (BWJasperColorStillsExecutorController)initWithConfiguration:(id)a3;
- (int)enqueueInputForProcessing:(id)a3 delegate:(id)a4;
- (uint64_t)_execute;
- (uint64_t)_serviceNextRequest;
- (uint64_t)_setupJasperColorStillsExecutor;
- (uint64_t)_updateStateIfNeeded;
- (void)cancelProcessing;
- (void)dealloc;
@end

@implementation BWJasperColorStillsExecutorController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWJasperColorStillsExecutorController)initWithConfiguration:(id)a3
{
  v10.receiver = self;
  v10.super_class = BWJasperColorStillsExecutorController;
  v4 = [(BWJasperColorStillsExecutorController *)&v10 init];
  if (v4)
  {
    v4->_configuration = a3;
    v4->_requestQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [[FigStateMachine alloc] initWithLabel:@"BWJasperColorStillsExecutorController state machine" stateCount:4 initialState:1 owner:v4];
    [(FigStateMachine *)v5 setPerformsAtomicStateTransitions:0];
    [(FigStateMachine *)v5 setLabel:@"Idle" forState:1];
    [(FigStateMachine *)v5 setLabel:@"Ready" forState:2];
    [(FigStateMachine *)v5 setLabel:@"Waiting" forState:4];
    [(FigStateMachine *)v5 setLabel:@"Processing" forState:8];
    [(FigStateMachine *)v5 whenTransitioningToStates:1 callHandler:&__block_literal_global_45];
    [(FigStateMachine *)v5 whenTransitioningToStates:2 callHandler:&__block_literal_global_224];
    [(FigStateMachine *)v5 whenTransitioningToState:4 callHandler:&__block_literal_global_226];
    [(FigStateMachine *)v5 whenTransitioningToState:8 callHandler:&__block_literal_global_228];
    v4->_stateMachine = v5;
    *v4->_anon_80 = 1065353216;
    *&v4->_anon_80[20] = 1065353216;
    *&v4->_anon_80[40] = 1065353216;
    v6 = *(MEMORY[0x1E695F050] + 16);
    v4->_inputROI.origin = *MEMORY[0x1E695F050];
    v4->_inputROI.size = v6;
    if (([a3 postponeProcessorSetup] & 1) == 0)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = [(BWJasperColorStillsExecutorController *)v4 _setupJasperColorStillsExecutor];
      objc_autoreleasePoolPop(v8);
      if (v9)
      {

        return 0;
      }
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
  v4.super_class = BWJasperColorStillsExecutorController;
  [(BWStillImageProcessorController *)&v4 dealloc];
}

- (void)cancelProcessing
{
  [(NSMutableArray *)self->_requestQueue removeAllObjects];
  [(BWJasperColorStillsExecutorRequest *)self->_currentRequest setErr:4294950490];

  [(BWJasperColorStillsExecutorController *)self _serviceNextRequest];
}

- (uint64_t)_setupJasperColorStillsExecutor
{
  if (!a1 || *(a1 + 88))
  {
    return 0;
  }

  v2 = [objc_msgSend(OUTLINED_FUNCTION_6_31() "outputDepthFormat")];
  if (!FigCapturePixelFormatIsDepthData(v2))
  {
    v10 = 4294954516;
LABEL_9:

    *(a1 + 88) = 0;
    return v10;
  }

  v3 = [objc_alloc(getADJasperColorStillsExecutorClass()) init];
  *(a1 + 88) = v3;
  if (!v3)
  {
    FigDebugAssert3();
    v10 = 4294954510;
    goto LABEL_9;
  }

  *(a1 + 96) = 3;
  if ([(BWJasperColorStillsExecutorController *)a1 _sourceDimensionsAreTargetDimensions])
  {
    v4 = [objc_msgSend(OUTLINED_FUNCTION_6_31() "inputColorFormat")];
    v5 = [objc_msgSend(OUTLINED_FUNCTION_6_31() "inputColorFormat")];
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    *(a1 + 208) = v4;
  }

  else
  {
    v6 = [objc_msgSend(OUTLINED_FUNCTION_6_31() "inputColorFormat")];
    [objc_msgSend(OUTLINED_FUNCTION_6_31() "inputColorFormat")];
    v7 = [OUTLINED_FUNCTION_6_31() standardFormatDimensions];
    *(a1 + 192) = FigCaptureMetadataUtilitiesDenormalizedRectWithinBoundingDimensionsCenteredOnPoint(v6, v7, 0.5);
    *(a1 + 200) = v8;
    *(a1 + 208) = v9;
  }

  *(a1 + 216) = v5;
  v10 = [*(a1 + 88) prepareForEngineType:*(a1 + 96) inputROI:{*(a1 + 192), *(a1 + 200), *(a1 + 208), *(a1 + 216)}];
  if (v10)
  {
    goto LABEL_9;
  }

  return v10;
}

- (uint64_t)_updateStateIfNeeded
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 112);
    v3 = [*(result + 72) currentState];
    if (v2)
    {
      if (v3 == 2)
      {
        v4 = 4;
      }

      else if (v3 == 4)
      {
        v4 = [objc_msgSend(v2 "input")] ? 8 : 4;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 1;
    }

    result = [*(v1 + 72) currentState];
    if (v4 != result)
    {
      v5 = *(v1 + 72);

      return [v5 transitionToState:v4];
    }
  }

  return result;
}

- (int)enqueueInputForProcessing:(id)a3 delegate:(id)a4
{
  v5 = [[BWJasperColorStillsExecutorRequest alloc] initWithInput:a3 delegate:a4];
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
  v3 = [(BWJasperColorStillsExecutorRequest *)v2 input];
  if (v3)
  {
    [*(v3 + 40) inputReadyToExecute:v3];
  }

  v4 = [(BWJasperColorStillsExecutorRequest *)v2 err]== 0;

  return v4;
}

- (uint64_t)_serviceNextRequest
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 112) delegate];
    v3 = [*(v1 + 112) input];
    v4 = [*(v1 + 112) err];

    *(v1 + 112) = 0;
    [v2 processorController:v1 didFinishProcessingInput:v3 err:v4];

    v5 = [*(v1 + 104) firstObject];
    *(v1 + 112) = v5;
    if (v5)
    {
      [*(v1 + 104) removeObjectAtIndex:0];
      [objc_msgSend(*(v1 + 112) "input")];
    }

    return [(BWJasperColorStillsExecutorController *)v1 _updateStateIfNeeded];
  }

  return result;
}

- (uint64_t)_execute
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v2 = [objc_msgSend(*(result + 112) "input")];
  v3 = OUTLINED_FUNCTION_1_48();
  if (!v2)
  {
    goto LABEL_25;
  }

  if (![v3 err])
  {
    if ([objc_msgSend(OUTLINED_FUNCTION_1_48() "input")])
    {
      if (dword_1EB58DEA0)
      {
        v56 = 0;
        v55 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_21;
    }

    v4 = *off_1E798A3C8;
    v5 = [CMGetAttachment(v2 *off_1E798A3C8];
    v6 = *off_1E798A0C8;
    v7 = [objc_msgSend(OUTLINED_FUNCTION_5_37() "sensorConfigurationsByPortType")];
    v8 = [objc_msgSend(OUTLINED_FUNCTION_5_37() "sensorConfigurationsByPortType")];
    ImageBuffer = CMSampleBufferGetImageBuffer(v2);
    v3 = OUTLINED_FUNCTION_1_48();
    if (ImageBuffer)
    {
      v10 = -[BWJasperColorStillsExecutorInput jasperPointCloudsForColorBuffer]([v3 input]);
      v11 = [v10 count];
      v3 = *(v1 + 112);
      if (v11)
      {
        key = v4;
        v59 = [objc_msgSend(v3 "delegate")];
        if (v59)
        {
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          FigCaptureCreateJasperToColorCameraTransformForJasperSensorConfiguration(v8, &v50);
          [OUTLINED_FUNCTION_1_48() setErr:?];
          if (![OUTLINED_FUNCTION_1_48() err])
          {
            v12 = [OUTLINED_FUNCTION_5_37() horizontalSensorBinningFactor];
            v13 = [OUTLINED_FUNCTION_5_37() verticalSensorBinningFactor];
            FigCaptureCreateColorCameraCalibrationForColorSampleBuffer(v2, v7, v12, v13, &v58);
            [OUTLINED_FUNCTION_1_48() setErr:?];
            if (![OUTLINED_FUNCTION_1_48() err])
            {
              if (v58)
              {
                FigCaptureCreateDepthMetadataForColorCameraCalibration(v58, 1, &v57);
                [OUTLINED_FUNCTION_1_48() setErr:?];
                if (![OUTLINED_FUNCTION_1_48() err])
                {
                  v14 = [(BWJasperColorStillsExecutorController *)v1 _sourceDimensionsAreTargetDimensions];
                  v15 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
                  v16 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
                  v17 = MEMORY[0x1E695F050];
                  if (v14)
                  {
                    goto LABEL_18;
                  }

                  v18 = [objc_msgSend(OUTLINED_FUNCTION_5_37() "inputColorFormat")];
                  [objc_msgSend(OUTLINED_FUNCTION_5_37() "inputColorFormat")];
                  v19 = v17[1];
                  v54.origin = *v17;
                  v54.size = v19;
                  if (FigCFDictionaryGetCGRectIfPresent())
                  {
                    y = v54.origin.y;
                    x = v54.origin.x;
                    height = v54.size.height;
                    width = v54.size.width;
                  }

                  else
                  {
                    v54.origin = 0uLL;
                    __asm { FMOV            V0.2D, #1.0 }

                    v54.size = _Q0;
                    y = 0.0;
                    height = 1.0;
                    width = 1.0;
                    x = 0.0;
                  }

                  MidX = CGRectGetMidX(*&x);
                  CGRectGetMidY(v54);
                  v30 = [OUTLINED_FUNCTION_5_37() standardFormatDimensions];
                  v60.origin.x = FigCaptureMetadataUtilitiesDenormalizedRectWithinBoundingDimensionsCenteredOnPoint(v18, v30, MidX);
                  v31 = v60.origin.x;
                  v32 = v60.origin.y;
                  v33 = v60.size.width;
                  v34 = v60.size.height;
                  v16 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
                  v15 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
                  if (CGRectEqualToRect(v60, *(v1 + 192)) || (*(v1 + 192) = v31, *(v1 + 200) = v32, *(v1 + 208) = v33, *(v1 + 216) = v34, [*(v1 + 88) prepareForEngineType:*(v1 + 96) inputROI:{v31, v32, v33, v34}], objc_msgSend(OUTLINED_FUNCTION_1_48(), "setErr:"), !objc_msgSend(OUTLINED_FUNCTION_1_48(), "err")))
                  {
LABEL_18:
                    [*(v1 + v15[662]) executeWithColor:ImageBuffer pointCloudArray:v10 pointCloud2ColorTransform:v58 colorCameraCalibration:&v59 outDepthMap:{*&v50, *&v51, *&v52, *&v53}];
                    [OUTLINED_FUNCTION_1_48() setErr:?];
                    if (![OUTLINED_FUNCTION_1_48() err])
                    {
                      v35 = *off_1E798D2B8;
                      CMSetAttachment(v59, *off_1E798D2B8, v57, 1u);
                      CMSetAttachment(v2, v35, v57, 1u);
                      BWSampleBufferSetAttachedMediaFromPixelBuffer(v2, @"Depth", v59, (v1 + 120), 0, 0, 1);
                      if (![(BWJasperColorStillsExecutorController *)v1 _sourceDimensionsAreTargetDimensions])
                      {
                        AttachedMedia = BWSampleBufferGetAttachedMedia(v2, @"Depth");
                        v37 = CMGetAttachment(AttachedMedia, key, 0);
                        v38 = CVPixelBufferGetWidth(ImageBuffer);
                        v39 = v38 | (CVPixelBufferGetHeight(ImageBuffer) << 32);
                        v40 = (v1 + v16[661]);
                        v41 = v59;
                        v42 = CVPixelBufferGetWidth(v59);
                        v43 = CVPixelBufferGetHeight(v41);
                        FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v37, v39, v42 | (v43 << 32), *v40, v40[1], v40[2], v40[3], v17->x, v17->y, v17[1].x, v17[1].y);
                      }
                    }
                  }
                }
              }
            }
          }

          goto LABEL_21;
        }

        v3 = OUTLINED_FUNCTION_1_48();
        v47 = 4294954510;
        goto LABEL_29;
      }
    }

LABEL_25:
    v47 = 4294954516;
LABEL_29:
    [v3 setErr:v47];
  }

LABEL_21:
  v44 = [OUTLINED_FUNCTION_1_48() delegate];
  v45 = [objc_msgSend(OUTLINED_FUNCTION_1_48() "input")];
  v46 = [OUTLINED_FUNCTION_1_48() input];
  [v44 processorController:v1 didFinishProcessingSampleBuffer:v2 type:v45 processorInput:v46 err:{objc_msgSend(OUTLINED_FUNCTION_1_48(), "err")}];
  if (v59)
  {
    CFRelease(v59);
  }

  return [(BWJasperColorStillsExecutorController *)v1 _updateStateIfNeeded];
}

- (BOOL)_sourceDimensionsAreTargetDimensions
{
  if (a1)
  {
    v1 = [*(a1 + 80) standardFormatDimensions];
    v3 = v1 < 1 || SHIDWORD(v1) < 1;
    v4 = [objc_msgSend(OUTLINED_FUNCTION_11_21() "inputColorFormat")];
    if (v4 == [OUTLINED_FUNCTION_11_21() standardFormatDimensions])
    {
      v5 = [objc_msgSend(OUTLINED_FUNCTION_11_21() "inputColorFormat")];
      v6 = v5 == [OUTLINED_FUNCTION_11_21() standardFormatDimensions];
    }

    else
    {
      v6 = 0;
    }

    return v3 || v6;
  }

  else
  {
    return 0;
  }
}

@end