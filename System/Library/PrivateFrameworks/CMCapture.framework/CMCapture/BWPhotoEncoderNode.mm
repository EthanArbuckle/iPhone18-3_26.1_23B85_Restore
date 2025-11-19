@interface BWPhotoEncoderNode
+ (void)initialize;
- (BWPhotoEncoderNode)initWithNodeConfiguration:(id)a3 sensorConfigurationsByPortType:(id)a4 semanticDevelopmentVersion:(int)a5 inferenceScheduler:(id)a6 alwaysAwaitInference:(BOOL)a7 portraitRenderQuality:(int)a8 deferredPhotoProcessorEnabled:(BOOL)a9 clientIsCameraOrDerivative:(BOOL)a10;
- (__CVBuffer)processorController:(id)a3 newOutputPixelBufferForProcessorInput:(id)a4 type:(unint64_t)a5 dimensions:(id)a6;
- (uint64_t)_addEligibleAuxImagesforExpectedAdjustedPhotoWithSbuf:(int)a3 processingFlags:(uint64_t)a4 stillImageSettings:(void *)a5 encoderControllerInput:;
- (uint64_t)_isOriginalPhotoAndExpectingAdjustedPhoto:(void *)a3 stillImageSettings:;
- (uint64_t)_mainImageDownscalingFactorForAttachedMediaKey:(void *)a3 attachedMediaMetadata:;
- (uint64_t)_removeNonPropagatedAttachedMediaFromSampleBuffer:(uint64_t)result;
- (void)_releaseResources;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)handleNodeError:(id)a3 forInput:(id)a4;
- (void)handleStillImagePrewarmWithSettings:(id)a3 resourceConfig:(id)a4 forInput:(id)a5;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)processorController:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 type:(unint64_t)a5 processorInput:(id)a6 err:(int)a7;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)setAttachedMediaConfigurationByAttachedMediaKey:(id)a3;
@end

@implementation BWPhotoEncoderNode

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWPhotoEncoderNode)initWithNodeConfiguration:(id)a3 sensorConfigurationsByPortType:(id)a4 semanticDevelopmentVersion:(int)a5 inferenceScheduler:(id)a6 alwaysAwaitInference:(BOOL)a7 portraitRenderQuality:(int)a8 deferredPhotoProcessorEnabled:(BOOL)a9 clientIsCameraOrDerivative:(BOOL)a10
{
  v10 = *&a8;
  v11 = a7;
  v13 = *&a5;
  v24.receiver = self;
  v24.super_class = BWPhotoEncoderNode;
  v16 = [(BWNode *)&v24 init];
  v17 = v16;
  if (v16)
  {
    [(BWNode *)v16 setSupportsLiveReconfiguration:1];
    v17->_nodeConfiguration = a3;
    v17->_sensorConfigurationsByPortType = a4;
    v17->_photoEncoderControllerConfiguration = objc_alloc_init(BWPhotoEncoderControllerConfiguration);
    -[BWStillImageProcessorControllerConfiguration setStillImageProcessingMode:](v17->_photoEncoderControllerConfiguration, "setStillImageProcessingMode:", [a3 stillImageProcessingMode]);
    [(BWStillImageProcessorControllerConfiguration *)v17->_photoEncoderControllerConfiguration setSensorConfigurationsByPortType:a4];
    [(BWPhotoEncoderControllerConfiguration *)v17->_photoEncoderControllerConfiguration setSemanticDevelopmentVersion:v13];
    -[BWStillImageProcessorControllerConfiguration setDeferredCaptureSupportEnabled:](v17->_photoEncoderControllerConfiguration, "setDeferredCaptureSupportEnabled:", [a3 deferredCaptureSupportEnabled]);
    -[BWPhotoEncoderControllerConfiguration setDeferredPhotoProcessorEnabled:](v17->_photoEncoderControllerConfiguration, "setDeferredPhotoProcessorEnabled:", [a3 deferredPhotoProcessorEnabled]);
    [(BWPhotoEncoderControllerConfiguration *)v17->_photoEncoderControllerConfiguration setAlwaysAwaitInference:v11];
    [(BWPhotoEncoderControllerConfiguration *)v17->_photoEncoderControllerConfiguration setPortraitRenderQuality:v10];
    -[BWStillImageProcessorControllerConfiguration setMetalCommandQueue:](v17->_photoEncoderControllerConfiguration, "setMetalCommandQueue:", [a3 metalCommandQueue]);
    [(BWStillImageProcessorControllerConfiguration *)v17->_photoEncoderControllerConfiguration setInferenceScheduler:a6];
    -[BWStillImageProcessorControllerConfiguration setFigThreadPriority:](v17->_photoEncoderControllerConfiguration, "setFigThreadPriority:", [a3 figThreadPriority]);
    -[BWPhotoEncoderControllerConfiguration setStereoPhotoOutputDimensions:](v17->_photoEncoderControllerConfiguration, "setStereoPhotoOutputDimensions:", [a3 stereoPhotoOutputDimensions]);
    [(BWPhotoEncoderControllerConfiguration *)v17->_photoEncoderControllerConfiguration setLegacySensorOrientationRotationDegrees:[(BWStillImageNodeConfiguration *)v17->_nodeConfiguration cameraSensorOrientationCompensationDegreesCW]];
    [(BWPhotoEncoderControllerConfiguration *)v17->_photoEncoderControllerConfiguration setClientIsCameraOrDerivative:a10];
    v18 = [[BWPhotoEncoderController alloc] initWithConfiguration:v17->_photoEncoderControllerConfiguration];
    v17->_photoEncoderController = v18;
    [(BWPhotoEncoderController *)v18 setPrimaryOwnerDelegate:v17];
    if (FigCapturePlatformIdentifier() < 8)
    {
      v19 = &unk_1F22489A0;
    }

    else
    {
      v19 = FigCapturePixelFormatsByAddingCompressedVariants(&unk_1F22489A0, [a3 maxLossyCompressionLevel]);
    }

    v20 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v17];
    v21 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v21 setSupportedPixelFormats:v19];
    [(BWNodeInput *)v20 setFormatRequirements:v21];
    [(BWNodeInput *)v20 setPassthroughMode:1];
    [(BWNode *)v17 addInput:v20];

    v22 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v17];
    [(BWNodeOutput *)v22 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutput *)v22 setPassthroughMode:1];
    [(BWNode *)v17 addOutput:v22];
  }

  return v17;
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  if (dword_1ED844590)
  {
    v12 = 0;
    v11 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(BWPhotoEncoderController *)self->_photoEncoderController cancelProcessing:v8];
  if (!a3)
  {
    [(BWPhotoEncoderNode *)&self->super.super.isa _releaseResources];
  }

  v10.receiver = self;
  v10.super_class = BWPhotoEncoderNode;
  [(BWNode *)&v10 didReachEndOfDataForConfigurationID:a3 input:a4];
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5
{
  if ([a5 isEqualToString:@"PrimaryFormat"])
  {
    output = self->super._output;

    [(BWNodeOutput *)output setFormat:a3];
  }

  else
  {
    v10 = [(NSDictionary *)self->_attachedMediaConfigurationByAttachedMediaKey objectForKeyedSubscript:a5];
    if (!v10 || [v10 propagatesDownstream])
    {
      v11.receiver = self;
      v11.super_class = BWPhotoEncoderNode;
      [(BWNode *)&v11 didSelectFormat:a3 forInput:a4 forAttachedMediaKey:a5];
    }
  }
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  if (dword_1ED844590)
  {
    v17 = 0;
    v16 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v15.receiver = self;
  v15.super_class = BWPhotoEncoderNode;
  [(BWNode *)&v15 prepareForCurrentConfigurationToBecomeLive];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  [v4 setObject:-[BWNodeInput videoFormat](self->super._input forKeyedSubscript:{"videoFormat"), @"PrimaryFormat"}];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(BWNodeInput *)self->super._input mediaPropertiesByAttachedMediaKey];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 setObject:objc_msgSend(objc_msgSend(-[BWNodeInput mediaPropertiesByAttachedMediaKey](self->super._input forKeyedSubscript:{"mediaPropertiesByAttachedMediaKey"), "objectForKeyedSubscript:", *(*(&v11 + 1) + 8 * i)), "resolvedVideoFormat"), *(*(&v11 + 1) + 8 * i)}];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }

  [(BWPhotoEncoderController *)self->_photoEncoderController setResolvedVideoFormatsByAttachedMediaKey:v4];
  [(BWPhotoEncoderController *)self->_photoEncoderController setClientExpectsCameraMountedInLandscapeOrientation:[(BWGraph *)[(BWNode *)self graph] clientExpectsCameraMountedInLandscapeOrientation]];
  [(BWPhotoEncoderController *)self->_photoEncoderController prepareForCurrentConfigurationToBecomeLive];
}

- (void)setAttachedMediaConfigurationByAttachedMediaKey:(id)a3
{
  [(BWPhotoEncoderControllerConfiguration *)self->_photoEncoderControllerConfiguration setAttachedMediaConfigurationByAttachedMediaKey:?];
  if (([(NSDictionary *)self->_attachedMediaConfigurationByAttachedMediaKey isEqual:a3]& 1) == 0)
  {

    v5 = [a3 copy];
    self->_attachedMediaConfigurationByAttachedMediaKey = v5;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v5;
    v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v22 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        v9 = 0;
        do
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v22 + 1) + 8 * v9);
          v11 = [(NSDictionary *)self->_attachedMediaConfigurationByAttachedMediaKey objectForKeyedSubscript:v10];
          [v11 mainImageDownscalingFactor];
          if (v12 == 0.0)
          {
            v13 = [v11 dimensions];
            v14 = v13 < 1 || SHIDWORD(v13) <= 0;
            if (v14 && ![v11 keepInputDimensions])
            {
              v17 = 0;
              v18 = &OBJC_IVAR___BWNode__input;
              goto LABEL_18;
            }
          }

          v15 = objc_alloc_init(BWNodeInputMediaConfiguration);
          v16 = objc_alloc_init(BWVideoFormatRequirements);
          if ([v10 isEqualToString:0x1F21AABB0])
          {
            [(BWVideoFormatRequirements *)v16 setSupportedPixelFormats:&unk_1F22489B8];
            [(BWVideoFormatRequirements *)v16 setBytesPerRowAlignment:64];
            [(BWVideoFormatRequirements *)v16 setWidthAlignment:16];
            [(BWVideoFormatRequirements *)v16 setHeightAlignment:16];
            [(BWVideoFormatRequirements *)v16 setPlaneAlignment:64];
            [(BWVideoFormatRequirements *)v16 setMemoryPoolUseAllowed:0];
          }

          [(BWNodeInputMediaConfiguration *)v15 setFormatRequirements:v16];
          -[BWNodeInputMediaConfiguration setPassthroughMode:](v15, "setPassthroughMode:", [v11 propagatesDownstream]);
          [(BWNodeInput *)self->super._input setMediaConfiguration:v15 forAttachedMediaKey:v10];
          if ([v11 propagatesDownstream])
          {
            v17 = objc_alloc_init(BWNodeOutputMediaConfiguration);
            [(BWNodeOutputMediaConfiguration *)v17 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
            [(BWNodeOutputMediaConfiguration *)v17 setPassthroughMode:1];
            v18 = &OBJC_IVAR___BWNode__output;
LABEL_18:
            [*(&self->super.super.isa + *v18) setMediaConfiguration:v17 forAttachedMediaKey:v10];
          }

          [(BWNodeOutput *)self->super._output setMediaConfiguration:0 forAttachedMediaKey:v10];
          ++v9;
        }

        while (v7 != v9);
        v19 = [(NSDictionary *)obj countByEnumeratingWithState:&v22 objects:v21 count:16];
        v7 = v19;
      }

      while (v19);
    }
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  if (!a3)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v13 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(7, v13, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotoEncoderNode.m", 362, @"LastShownDate:BWPhotoEncoderNode.m:362", @"LastShownBuild:BWPhotoEncoderNode.m:362", 0);
LABEL_12:
    free(v13);
    v7 = 0;
LABEL_13:
    [(BWPhotoEncoderNode *)a3 renderSampleBuffer:v7 forInput:?];
    return;
  }

  v6 = CMGetAttachment(a3, @"StillSettings", 0);
  if (!v6)
  {
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v13 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(7, v13, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWPhotoEncoderNode.m", 364, @"LastShownDate:BWPhotoEncoderNode.m:364", @"LastShownBuild:BWPhotoEncoderNode.m:364", 0);
    goto LABEL_12;
  }

  v7 = v6;
  if (dword_1ED844590)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  self->_lastProcessedCaptureIdentifier = [objc_msgSend(v7 "requestedSettings")];
  v9 = [(BWPhotoEncoderController *)self->_photoEncoderController currentInputsCaptureRequestIdentifier];
  if (v9)
  {
    if (!-[NSString isEqualToString:](v9, "isEqualToString:", [objc_msgSend(v7 "requestedSettings")]))
    {
      [(BWPhotoEncoderController *)self->_photoEncoderController cancelProcessing];
    }
  }

  v10 = (BWStillImageProcessingFlagsForSampleBuffer(a3) >> 3) & 1;
  if (![(BWPhotoEncoderController *)self->_photoEncoderController inputForStillImageSettings:v7 portType:BWSampleBufferGetPortType(a3) portraitAdjustedImage:v10 optionalSampleBuffer:a3 forEarlyEncoding:0])
  {
    goto LABEL_13;
  }
}

- (void)handleNodeError:(id)a3 forInput:(id)a4
{
  if (-[NSString isEqualToString:](-[BWPhotoEncoderController currentInputsCaptureRequestIdentifier](self->_photoEncoderController, "currentInputsCaptureRequestIdentifier", a3, a4), "isEqualToString:", [objc_msgSend(objc_msgSend(a3 "stillImageSettings")]))
  {
    [(BWPhotoEncoderController *)self->_photoEncoderController cancelProcessing];
  }

  output = self->super._output;

  [(BWNodeOutput *)output emitNodeError:a3];
}

- (void)processorController:(id)a3 didFinishProcessingSampleBuffer:(opaqueCMSampleBuffer *)a4 type:(unint64_t)a5 processorInput:(id)a6 err:(int)a7
{
  v7 = *&a7;
  v11 = BWStillImageProcessingFlagsForSampleBuffer(a4);
  v12 = [a6 receivedAllFramesInSingleContainer];
  IsPrimaryFrame = BWPhotoEncoderIsPrimaryFrame(v11);
  if (v12 && IsPrimaryFrame)
  {
    if (v7)
    {
      v15 = +[BWNodeError newError:sourceNode:stillImageSettings:metadata:](BWNodeError, "newError:sourceNode:stillImageSettings:metadata:", v7, self, [a6 stillImageSettings], CMGetAttachment(a4, *off_1E798A3C8, 0));
      [(BWNodeOutput *)self->super._output emitNodeError:v15];
    }

    else
    {
      if ([(BWStillImageNodeConfiguration *)self->_nodeConfiguration deferredPhotoProcessorEnabled])
      {
        [BWPhotoEncoderNode processorController:a6 didFinishProcessingSampleBuffer:self type:v11 processorInput:a4 err:?];
      }

      [(BWPhotoEncoderNode *)self _removeNonPropagatedAttachedMediaFromSampleBuffer:a4];
      output = self->super._output;

      [(BWNodeOutput *)output emitSampleBuffer:a4];
    }
  }
}

- (void)_releaseResources
{
  if (a1)
  {
    if (dword_1ED844590)
    {
      v6 = 0;
      v5 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [a1[20] waitForAllAsynchronousProcessingToComplete];

    a1[20] = 0;
    a1[19] = 0;

    a1[16] = 0;
  }
}

- (void)dealloc
{
  [(BWPhotoEncoderNode *)&self->super.super.isa _releaseResources];

  v3.receiver = self;
  v3.super_class = BWPhotoEncoderNode;
  [(BWNode *)&v3 dealloc];
}

- (uint64_t)_mainImageDownscalingFactorForAttachedMediaKey:(void *)a3 attachedMediaMetadata:
{
  if (result)
  {
    v4 = result;
    v5 = [*(result + 144) objectForKeyedSubscript:a2];
    result = [objc_msgSend(a3 objectForKeyedSubscript:{*off_1E798A788), "floatValue"}];
    if (*(v4 + 176) != 1 || v6 == 0.0)
    {

      return [v5 mainImageDownscalingFactor];
    }
  }

  return result;
}

- (uint64_t)_removeNonPropagatedAttachedMediaFromSampleBuffer:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 144);
    OUTLINED_FUNCTION_43();
    result = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (result)
    {
      v5 = result;
      v6 = MEMORY[0];
      v7 = *off_1E798A3C8;
      do
      {
        v8 = 0;
        do
        {
          if (MEMORY[0] != v6)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(8 * v8);
          v10 = [*(v3 + 144) objectForKeyedSubscript:v9];
          AttachedMedia = BWSampleBufferGetAttachedMedia(a2, v9);
          v12 = CMGetAttachment(AttachedMedia, v7, 0);
          [(BWPhotoEncoderNode *)v3 _mainImageDownscalingFactorForAttachedMediaKey:v9 attachedMediaMetadata:v12];
          v14 = v13;
          if (([v10 propagatesDownstream] & 1) == 0)
          {
            if (v14 != 0.0 || ((v15 = [v10 dimensions], v15 >= 1) ? (v16 = SHIDWORD(v15) <= 0) : (v16 = 1), !v16 || objc_msgSend(v10, "keepInputDimensions")))
            {
              BWSampleBufferRemoveAttachedMedia(a2, v9);
            }
          }

          ++v8;
        }

        while (v5 != v8);
        OUTLINED_FUNCTION_43();
        result = [v4 countByEnumeratingWithState:? objects:? count:?];
        v5 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)handleStillImagePrewarmWithSettings:(id)a3 resourceConfig:(id)a4 forInput:(id)a5
{
  if (-[NSString isEqualToString:](self->_lastProcessedCaptureIdentifier, "isEqualToString:", [objc_msgSend(a3 "requestedSettings")]))
  {
    v10 = OUTLINED_FUNCTION_1_73();
    if (OUTLINED_FUNCTION_4_49(v10))
    {
      v11 = v5;
    }

    else
    {
      v11 = v5 & 0xFFFFFFFE;
    }

    if (!v11)
    {
      goto LABEL_17;
    }

    [a3 settingsID];
    [objc_msgSend(a3 "requestedSettings")];
    v21[0] = 136315651;
    OUTLINED_FUNCTION_0_59();
    v22 = v12;
    v19 = 32;
    v18 = v21;
    goto LABEL_16;
  }

  if (!-[NSString isEqualToString:](-[BWPhotoEncoderController currentInputsCaptureRequestIdentifier](self->_photoEncoderController, "currentInputsCaptureRequestIdentifier"), "isEqualToString:", [objc_msgSend(a3 "requestedSettings")]))
  {
    if (![(BWPhotoEncoderController *)self->_photoEncoderController currentInputsCaptureRequestIdentifier])
    {
      -[BWPhotoEncoderController inputForStillImageSettings:portType:portraitAdjustedImage:optionalSampleBuffer:forEarlyEncoding:](self->_photoEncoderController, "inputForStillImageSettings:portType:portraitAdjustedImage:optionalSampleBuffer:forEarlyEncoding:", a3, [objc_msgSend(a3 "captureSettings")], 0, 0, 0);
      goto LABEL_5;
    }

    v13 = OUTLINED_FUNCTION_1_73();
    if (OUTLINED_FUNCTION_4_49(v13))
    {
      v14 = v5;
    }

    else
    {
      v14 = v5 & 0xFFFFFFFE;
    }

    if (!v14)
    {
LABEL_17:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_5;
    }

    [a3 settingsID];
    v15 = [objc_msgSend(a3 "requestedSettings")];
    [(BWPhotoEncoderController *)self->_photoEncoderController currentInputsCaptureRequestIdentifier];
    v21[0] = 136315907;
    OUTLINED_FUNCTION_0_59();
    v22 = v15;
    v23 = v16;
    v24 = v17;
    v19 = 42;
    v18 = v21;
LABEL_16:
    _os_log_send_and_compose_impl();
    goto LABEL_17;
  }

LABEL_5:
  v20.receiver = self;
  v20.super_class = BWPhotoEncoderNode;
  [(BWNode *)&v20 handleStillImagePrewarmWithSettings:a3 resourceConfig:a4 forInput:a5, v18, v19];
}

- (uint64_t)_isOriginalPhotoAndExpectingAdjustedPhoto:(void *)a3 stillImageSettings:
{
  if (result)
  {
    v5 = [objc_msgSend(a3 "requestedSettings")];
    result = 0;
    if (v5)
    {
      if ((a2 & 8) == 0)
      {
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        v6 = [objc_msgSend(objc_msgSend(a3 "processingSettings")];
        result = [v6 countByEnumeratingWithState:&v11 objects:v10 count:16];
        if (result)
        {
          v7 = result;
          v8 = *v12;
          while (2)
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v12 != v8)
              {
                objc_enumerationMutation(v6);
              }

              if (([*(*(&v11 + 1) + 8 * i) processingFlags] & 8) != 0)
              {
                return 1;
              }
            }

            v7 = [v6 countByEnumeratingWithState:&v11 objects:v10 count:16];
            result = 0;
            if (v7)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

  return result;
}

- (uint64_t)_addEligibleAuxImagesforExpectedAdjustedPhotoWithSbuf:(int)a3 processingFlags:(uint64_t)a4 stillImageSettings:(void *)a5 encoderControllerInput:
{
  if (result)
  {
    v16[0] = 0x1F21AABB0;
    v16[1] = @"PersonSemanticsHair";
    v16[2] = @"PersonSemanticsSkin";
    v16[3] = @"PersonSemanticsTeeth";
    v16[4] = @"PersonSemanticsGlasses";
    v16[5] = 0x1F21AAD30;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:6];
    OUTLINED_FUNCTION_43();
    result = [v9 countByEnumeratingWithState:? objects:? count:?];
    if (result)
    {
      v10 = result;
      v11 = MEMORY[0];
      v12 = *off_1E798A3C8;
      do
      {
        v13 = 0;
        do
        {
          if (MEMORY[0] != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(8 * v13);
          AttachedMedia = BWSampleBufferGetAttachedMedia(a2, v14);
          [a5 addSbufForPiecemealEncoding:AttachedMedia attachedMediakey:v14 primaryImageMetadata:CMGetAttachment(a2 processingFlags:{v12, 0), a3 | 8u}];
          ++v13;
        }

        while (v10 != v13);
        OUTLINED_FUNCTION_43();
        result = [v8 countByEnumeratingWithState:? objects:? count:?];
        v10 = result;
      }

      while (result);
    }
  }

  return result;
}

- (__CVBuffer)processorController:(id)a3 newOutputPixelBufferForProcessorInput:(id)a4 type:(unint64_t)a5 dimensions:(id)a6
{
  pixelBufferOut[0] = 0;
  mach_absolute_time();
  if (a5 == 49)
  {
    v22 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(a4, "decompressStyledBufferAttributes")}];
    v29[0] = *MEMORY[0x1E696CE38];
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BWMemoryPool poolIdentifier](-[BWNodeOutput memoryPool](self->super._output, "memoryPool"), "poolIdentifier")}];
    v24 = *MEMORY[0x1E696CE60];
    v30[0] = v23;
    v30[1] = &unk_1F22446F8;
    v25 = *MEMORY[0x1E696CFA0];
    v29[1] = v24;
    v29[2] = v25;
    v30[2] = MEMORY[0x1E695E118];
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
    [v22 setObject:v26 forKeyedSubscript:*MEMORY[0x1E69660D8]];
    if (CVPixelBufferCreate(*MEMORY[0x1E695E480], a6.var0, *&a6 >> 32, 0x34323066u, v22, pixelBufferOut))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (a5 != 48)
  {
LABEL_6:
    mach_absolute_time();
    FigHostTimeToNanoseconds();
    goto LABEL_7;
  }

  v10 = BWPhotoEncoderResolveEncodingSchemeForRequestedSettings([objc_msgSend(a4 "stillImageSettings")]);
  v11 = BWPhotoEncoderDeltaMapPixelFormat([objc_msgSend(objc_msgSend(a4 "stillImageSettings")], v10);
  v33[0] = *MEMORY[0x1E6966208];
  v34[0] = [MEMORY[0x1E696AD98] numberWithInt:a6];
  v33[1] = *MEMORY[0x1E69660B8];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(*&a6)];
  v13 = *MEMORY[0x1E6966020];
  v34[1] = v12;
  v34[2] = &unk_1F22446E0;
  v14 = *MEMORY[0x1E6966140];
  v33[2] = v13;
  v33[3] = v14;
  v15 = *MEMORY[0x1E6966100];
  v16 = MEMORY[0x1E695E118];
  v34[3] = &unk_1F22446E0;
  v34[4] = MEMORY[0x1E695E118];
  v17 = *MEMORY[0x1E69660D0];
  v33[4] = v15;
  v33[5] = v17;
  v34[5] = MEMORY[0x1E695E118];
  v33[6] = *MEMORY[0x1E69660D8];
  v31[0] = *MEMORY[0x1E696CE38];
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BWMemoryPool poolIdentifier](-[BWNodeOutput memoryPool](self->super._output, "memoryPool"), "poolIdentifier")}];
  v19 = *MEMORY[0x1E696CE60];
  v32[0] = v18;
  v32[1] = &unk_1F22446F8;
  v20 = *MEMORY[0x1E696CFA0];
  v31[1] = v19;
  v31[2] = v20;
  v32[2] = v16;
  v34[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:7];
  if (!CVPixelBufferCreate(*MEMORY[0x1E695E480], a6.var0, *&a6 >> 32, v11, v21, pixelBufferOut))
  {
    CVBufferSetAttachment(pixelBufferOut[0], *MEMORY[0x1E6965F98], *MEMORY[0x1E6965FC8], kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(pixelBufferOut[0], *MEMORY[0x1E6965D88], *MEMORY[0x1E6965DD0], kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(pixelBufferOut[0], *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F60], kCVAttachmentMode_ShouldPropagate);
    goto LABEL_6;
  }

LABEL_7:
  if (dword_1ED844590)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return pixelBufferOut[0];
}

- (void)renderSampleBuffer:(uint64_t)a3 forInput:.cold.1(const void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [BWNodeError newError:4294954516 sourceNode:a2 stillImageSettings:a3 metadata:CMGetAttachment(a1, *off_1E798A3C8, 0)];
  [*(a2 + 16) emitNodeError:v4];
}

- (uint64_t)processorController:(int)a3 didFinishProcessingSampleBuffer:(const void *)a4 type:processorInput:err:.cold.1(void *a1, uint64_t a2, int a3, const void *a4)
{
  result = -[BWPhotoEncoderNode _isOriginalPhotoAndExpectingAdjustedPhoto:stillImageSettings:](a2, a3, [a1 stillImageSettings]);
  if (result)
  {
    v9 = [*(a2 + 160) inputForStillImageSettings:objc_msgSend(a1 portType:"stillImageSettings") portraitAdjustedImage:objc_msgSend(a1 optionalSampleBuffer:"portType") forEarlyEncoding:{1, 0, 0}];
    [a1 stillImageSettings];

    return [(BWPhotoEncoderNode *)a2 _addEligibleAuxImagesforExpectedAdjustedPhotoWithSbuf:a4 processingFlags:a3 stillImageSettings:v10 encoderControllerInput:v9];
  }

  return result;
}

@end