@interface BWStillImageBravoDisparityNode
- (BWStillImageBravoDisparityNode)initWithNodeConfiguration:(id)a3 sensorConfigurationsByPortType:(id)a4 disparityMapWidth:(unint64_t)a5 disparityMapHeight:(unint64_t)a6 outputDisparityBufferCount:(int)a7;
- (uint64_t)_computeDisparityForTeleBuffer:(void *)a3 wideBuffer:(void *)a4 attachToOutputBuffer:;
- (uint64_t)_configureCurrentCaptureRequestStateWithStillImageSettings:(uint64_t)result;
- (uint64_t)_loadAndConfigureDisparityGenerator;
- (uint64_t)_resolveProcessingMode;
- (uint64_t)prepareForCurrentConfigurationToBecomeLive;
- (uint64_t)processorOptionsDictionary;
- (void)_clearCaptureRequestState;
- (void)_handleError:(CMAttachmentBearerRef)target duringProcessingOfSampleBuffer:(uint64_t)a4 fromInput:;
- (void)_processBuffersForDisparityIfNecessary;
- (void)_sensorConfigurationWithPortraitTuningParameters;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)a3;
- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5;
- (void)handleNodeError:(id)a3 forInput:(id)a4;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWStillImageBravoDisparityNode

- (BWStillImageBravoDisparityNode)initWithNodeConfiguration:(id)a3 sensorConfigurationsByPortType:(id)a4 disparityMapWidth:(unint64_t)a5 disparityMapHeight:(unint64_t)a6 outputDisparityBufferCount:(int)a7
{
  v25.receiver = self;
  v25.super_class = BWStillImageBravoDisparityNode;
  v12 = [(BWNode *)&v25 init];
  if (v12)
  {
    v12->_sensorConfigurationsByPortType = a4;
    v12->_nodeConfiguration = a3;
    v12->_wideInput = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v12 index:0];
    v13 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v13 setSupportedPixelFormats:&unk_1F2249D08];
    [(BWNodeInput *)v12->_wideInput setFormatRequirements:v13];

    [(BWNodeInput *)v12->_wideInput setPassthroughMode:0];
    [(BWNodeInput *)v12->_wideInput setRetainedBufferCount:1];
    [(BWNodeInput *)v12->_wideInput setName:@"Wide"];
    [(BWNode *)v12 addInput:v12->_wideInput];

    v12->_telephotoInput = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v12 index:1];
    v14 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v14 setSupportedPixelFormats:&unk_1F2249D20];
    [(BWNodeInput *)v12->_telephotoInput setFormatRequirements:v14];

    [(BWNodeInput *)v12->_telephotoInput setPassthroughMode:1];
    [(BWNodeInput *)v12->_telephotoInput setRetainedBufferCount:1];
    [(BWNodeInput *)v12->_telephotoInput setName:@"Telephoto"];
    [(BWNode *)v12 addInput:v12->_telephotoInput];

    v15 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v12];
    v16 = [(BWNodeOutput *)v15 primaryMediaConfiguration];
    v17 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v17 setSupportedPixelFormats:&unk_1F2249D38];
    [(BWNodeOutputMediaConfiguration *)v16 setFormatRequirements:v17];

    [(BWNodeOutputMediaConfiguration *)v16 setProvidesPixelBufferPool:0];
    [(BWNodeOutputMediaConfiguration *)v16 setPassthroughMode:1];
    v24[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BWNodeInput index](v12->_wideInput, "index")}];
    v24[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BWNodeInput index](v12->_telephotoInput, "index")}];
    -[BWNodeOutputMediaConfiguration setIndexesOfInputsWhichDrivesThisOutput:](v16, "setIndexesOfInputsWhichDrivesThisOutput:", [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2]);
    v18 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    v19 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v19 setSupportedPixelFormats:&unk_1F2249D50];
    [(BWVideoFormatRequirements *)v19 setWidth:a5];
    [(BWVideoFormatRequirements *)v19 setHeight:a6];
    [(BWNodeOutputMediaConfiguration *)v18 setFormatRequirements:v19];
    [(BWNodeOutputMediaConfiguration *)v18 setPassthroughMode:0];
    [(BWNodeOutputMediaConfiguration *)v18 setProvidesPixelBufferPool:1];
    if (a7)
    {
      [(BWNodeOutputMediaConfiguration *)v18 setOwningNodeRetainedBufferCount:(a7 - 1)];
    }

    [(BWNodeOutput *)v15 setMediaConfiguration:v18 forAttachedMediaKey:@"Depth", 256];
    v20 = [*(&v12->super.super.isa + v23) depthDataType];
    v12->_disparityInputIsRaw = v20 == 2;
    if (v20 == 2)
    {
      v21 = objc_alloc_init(BWNodeInputMediaConfiguration);
      [(BWNodeInputMediaConfiguration *)v21 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInputMediaConfiguration *)v21 setPassthroughMode:0];
      [(BWNodeInput *)v12->super._input setMediaConfiguration:v21 forAttachedMediaKey:0x1F21AAB10];
    }

    [(BWNode *)v12 addOutput:v15];

    v12->_disparityMapWidth = a5;
    v12->_disparityMapHeight = a6;
  }

  return v12;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v14.receiver = self;
  v14.super_class = BWStillImageBravoDisparityNode;
  [(BWNode *)&v14 prepareForCurrentConfigurationToBecomeLive];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(BWNode *)self inputs];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (v8 != self->super._input)
        {
          [(BWFormat *)[(BWNodeInput *)v8 format] isEqual:[(BWNodeInput *)self->super._input format]];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  if ([(BWStillImageBravoDisparityNode *)self _loadAndConfigureDisparityGenerator])
  {
    [BWStillImageBravoDisparityNode prepareForCurrentConfigurationToBecomeLive];
  }
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  if ([(BWNode *)self allInputsHaveReachedState:1, a4, a5])
  {
    output = self->super._output;

    [(BWNodeOutput *)output makeConfiguredFormatLive];
  }
}

- (void)didReachEndOfDataForInput:(id)a3
{
  if ([(BWNode *)self allInputsHaveReachedState:0])
  {
    output = self->super._output;

    [(BWNodeOutput *)output markEndOfLiveOutput];
  }
}

- (void)handleNodeError:(id)a3 forInput:(id)a4
{
  if (!self->_currentStillImageSettings || (v7 = [objc_msgSend(a3 "stillImageSettings")], v7 != -[BWStillImageSettings settingsID](self->_currentStillImageSettings, "settingsID")))
  {
    -[BWStillImageBravoDisparityNode _configureCurrentCaptureRequestStateWithStillImageSettings:](self, [a3 stillImageSettings]);
  }

  if (self->_currentStillImageSettings)
  {
    [(BWStillImageBravoDisparityNode *)self handleNodeError:a4 forInput:a3];
  }

  else
  {
    output = self->super._output;

    [(BWNodeOutput *)output emitNodeError:a3];
  }
}

- (void)dealloc
{
  if (self)
  {
    [-[FigDisparityGenerator metalContext](self->_disparityGenerator "metalContext")];
  }

  [(BWStillImageBravoDisparityNode *)self _clearCaptureRequestState];

  disparityFormatDescription = self->_disparityFormatDescription;
  if (disparityFormatDescription)
  {
    CFRelease(disparityFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWStillImageBravoDisparityNode;
  [(BWNode *)&v4 dealloc];
}

- (void)_clearCaptureRequestState
{
  if (a1)
  {

    *(a1 + 184) = 0;
    *(a1 + 200) = 0;
    *(a1 + 192) = 0;
    *(a1 + 196) = 0;
    *(a1 + 225) = 0;
    v2 = *(a1 + 208);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 208) = 0;
    }

    v3 = *(a1 + 216);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 216) = 0;
    }

    v4 = *(a1 + 232);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 232) = 0;
    }

    v5 = *(a1 + 240);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 240) = 0;
    }
  }
}

- (void)didSelectFormat:(id)a3 forInput:(id)a4 forAttachedMediaKey:(id)a5
{
  if (self->_telephotoInput == a4 && ([a5 isEqualToString:0x1F21AAB10] & 1) == 0)
  {
    v8 = [(BWNodeOutput *)self->super._output mediaPropertiesForAttachedMediaKey:a5];
    if (!v8)
    {
      v8 = objc_alloc_init(BWNodeOutputMediaProperties);
      [(BWNodeOutput *)self->super._output _setMediaProperties:v8 forAttachedMediaKey:a5];
    }

    [(BWNodeOutputMediaProperties *)v8 setResolvedFormat:a3];
  }
}

- (uint64_t)_loadAndConfigureDisparityGenerator
{
  if (result)
  {
    v1 = result;
    v21 = 0;
    v2 = [(BWStillImageBravoDisparityNode *)result processorOptionsDictionary];
    if (!v2)
    {
      goto LABEL_11;
    }

    v3 = v2;
    v4 = +[FigCaptureCameraParameters sharedInstance];
    v5 = [(FigCaptureCameraParameters *)v4 disparityVersion];
    if (!v5)
    {
      v16 = [(BWStillImageBravoDisparityNode *)v1 _sensorConfigurationWithPortraitTuningParameters];
      if (!v16)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_6();
        FigDebugAssert3();
        return 0;
      }

      v5 = -[FigCaptureCameraParameters disparityVersionForPortType:sensorIDString:](v4, "disparityVersionForPortType:sensorIDString:", [v16 portType], objc_msgSend(v16, "sensorIDString"));
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@V%d.bundle", @"/System/Library/VideoProcessors", @"Disparity", v5];
    v7 = [MEMORY[0x1E696AAE8] bundleWithPath:v6];
    if (v7)
    {
      v8 = v7;
      if (![v7 loadAndReturnError:&v21])
      {
        return 4294954510;
      }

      v9 = [objc_alloc(objc_msgSend(v8 "principalClass"))];
      *(v1 + 136) = v9;
      if (v9)
      {
        [v9 setOptions:v3];
        v10 = [objc_msgSend(*(v1 + 8) "videoFormat")];
        v11 = [objc_msgSend(*(v1 + 8) "videoFormat")];
        v12 = *(v1 + 160);
        v13 = *(v1 + 168);
        v14 = *(v1 + 136);
        v17[0] = v10;
        v17[1] = v11;
        v17[2] = 0;
        v17[3] = v12;
        v17[4] = v13;
        v18 = 1067030938;
        v19 = 0x1800000020;
        v20 = 0;
        [v14 setDisparityConfig:v17];
        v15 = [*(v1 + 136) prepareToProcess:0];
        result = 0;
        if (!v15)
        {
          return result;
        }

        fig_log_get_emitter();
      }

      else
      {
        OUTLINED_FUNCTION_17_26();
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_2();
        FigDebugAssert3();
        OUTLINED_FUNCTION_17_26();
        fig_log_get_emitter();
      }
    }

    else
    {
LABEL_11:
      OUTLINED_FUNCTION_17_26();
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();
      FigDebugAssert3();
      OUTLINED_FUNCTION_17_26();
      fig_log_get_emitter();
    }

    return FigSignalErrorAtGM();
  }

  return result;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  if (!a3)
  {
    FigCaptureGetFrameworkRadarComponent();
    v14 = OUTLINED_FUNCTION_9_66();
    if (OUTLINED_FUNCTION_8_4(v14))
    {
      v15 = v4;
    }

    else
    {
      v15 = v4 & 0xFFFFFFFE;
    }

    if (v15)
    {
      OUTLINED_FUNCTION_5_6();
      OUTLINED_FUNCTION_6_45();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    OUTLINED_FUNCTION_5_53();
    v18 = OUTLINED_FUNCTION_6_0();
    v19 = OUTLINED_FUNCTION_16_43();
    v26 = 316;
    goto LABEL_32;
  }

  v8 = CMGetAttachment(a3, @"StillSettings", 0);
  if (!v8)
  {
    FigCaptureGetFrameworkRadarComponent();
    v16 = OUTLINED_FUNCTION_9_66();
    if (OUTLINED_FUNCTION_8_4(v16))
    {
      v17 = v4;
    }

    else
    {
      v17 = v4 & 0xFFFFFFFE;
    }

    if (v17)
    {
      OUTLINED_FUNCTION_5_6();
      OUTLINED_FUNCTION_6_45();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    OUTLINED_FUNCTION_5_53();
    v18 = OUTLINED_FUNCTION_6_0();
    v19 = OUTLINED_FUNCTION_16_43();
    v26 = 319;
LABEL_32:
    FigCapturePleaseFileRadar(v19, v20, v21, v22, v23, v26, v24, v25, 0);
    free(v18);
    goto LABEL_33;
  }

  v9 = v8;
  if (!self->_currentStillImageSettings || (v10 = [v8 settingsID], v10 != -[BWStillImageSettings settingsID](self->_currentStillImageSettings, "settingsID")))
  {
    [(BWStillImageBravoDisparityNode *)self _configureCurrentCaptureRequestStateWithStillImageSettings:v9];
  }

  if (!self->_processingMode)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_33();
  if (v11 && !BWSampleBufferGetAttachedMedia(a3, 0x1F21AAB10))
  {
LABEL_33:
    [(BWStillImageBravoDisparityNode *)self _handleError:a3 duringProcessingOfSampleBuffer:a4 fromInput:?];
    goto LABEL_15;
  }

  if (self->_wideInput == a4)
  {
    v12 = CFRetain(a3);
    v13 = 216;
  }

  else
  {
    if (self->_telephotoInput != a4)
    {
      goto LABEL_15;
    }

    v12 = CFRetain(a3);
    v13 = 208;
  }

  *(&self->super.super.isa + v13) = v12;
LABEL_15:
  if (self->_processingMode)
  {
    [(BWStillImageBravoDisparityNode *)self _processBuffersForDisparityIfNecessary];
  }

  else
  {
    [(BWNodeOutput *)self->super._output emitSampleBuffer:a3];
    [(BWStillImageBravoDisparityNode *)self _clearCaptureRequestState];
  }
}

- (uint64_t)_configureCurrentCaptureRequestStateWithStillImageSettings:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    [(BWStillImageBravoDisparityNode *)result _clearCaptureRequestState];
    *(v3 + 184) = a2;
    *(v3 + 224) = 1;
    *(v3 + 225) = 0;
    if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_14_43() "requestedSettings")])
    {
      v4 = [objc_msgSend(OUTLINED_FUNCTION_14_43() "captureSettings")];
      OUTLINED_FUNCTION_43();
      v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
      if (v6)
      {
        v9 = v6;
        v10 = MEMORY[0];
        v11 = *off_1E798A0D8;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (MEMORY[0] != v10)
            {
              objc_enumerationMutation(v4);
            }

            if ([objc_msgSend(*(8 * i) "portType")])
            {
              v7 = 2;
              v8 = 3;
              goto LABEL_14;
            }
          }

          OUTLINED_FUNCTION_43();
          v9 = [v4 countByEnumeratingWithState:? objects:? count:?];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v7 = 7;
      v8 = 2;
LABEL_14:
      *(v3 + 224) = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_14_43() "requestedSettings")];
      *(v3 + 225) = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_14_43() "requestedSettings")];
    }

    return [(BWStillImageBravoDisparityNode *)v3 _resolveProcessingMode];
  }

  return result;
}

- (void)_handleError:(CMAttachmentBearerRef)target duringProcessingOfSampleBuffer:(uint64_t)a4 fromInput:
{
  if (result)
  {
    v5 = result;
    result = [BWNodeError newError:a2 sourceNode:v5 stillImageSettings:v5[23] metadata:CMGetAttachment(target, *off_1E798A3C8, 0)];
    if (v5[18] == a4)
    {
      v6 = &OBJC_IVAR___BWStillImageBravoDisparityNode__errorForWide;
    }

    else
    {
      v6 = &OBJC_IVAR___BWStillImageBravoDisparityNode__errorForTele;
    }

    *(v5 + *v6) = result;
  }

  return result;
}

- (void)_processBuffersForDisparityIfNecessary
{
  if (!a1)
  {
    return;
  }

  if (*(a1 + 200))
  {
    if (*(a1 + 136))
    {
      v2 = *(a1 + 240);
      if (!v2)
      {
        v5 = 0;
        goto LABEL_9;
      }

      if (!*(a1 + 216))
      {
        v3 = *(a1 + 232);
        v4 = v2;
        goto LABEL_8;
      }

      v18 = v2;
    }

    else
    {
      FigCaptureGetFrameworkRadarComponent();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7_0();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      OUTLINED_FUNCTION_5_53();
      v12 = OUTLINED_FUNCTION_6_0();
      v13 = OUTLINED_FUNCTION_17_26();
      FigCapturePleaseFileRadar(v13, v14, 0, 0, v15, 562, v16, v17, 0);
      free(v12);
      v18 = OUTLINED_FUNCTION_18_37(BWNodeError, 184);
    }

    v5 = v18;
    goto LABEL_29;
  }

  v3 = *(a1 + 240);
  v4 = v3;
LABEL_8:
  v5 = v4;
  if (v3)
  {
LABEL_29:
    [OUTLINED_FUNCTION_17_38() emitNodeError:v5];
    v10 = 0;
    LODWORD(v11) = 1;
LABEL_30:
    OUTLINED_FUNCTION_33();
    if (v7)
    {
      v19 = *(a1 + 216);
      if (v19)
      {
        BWSampleBufferRemoveAttachedMedia(v19, 0x1F21AAB10);
        [OUTLINED_FUNCTION_17_38() emitSampleBuffer:*(a1 + 216)];
      }

      else
      {
        v20 = *(a1 + 232);
        if (!v20)
        {
          v20 = OUTLINED_FUNCTION_18_37(BWNodeError, 184);
        }

        [OUTLINED_FUNCTION_17_38() emitNodeError:v20];
      }
    }

    goto LABEL_37;
  }

LABEL_9:
  v6 = *(a1 + 200);
  if ((v6 - 2) >= 2)
  {
    v7 = v6 == 1 || v6 == 4;
    if (!v7)
    {
      v10 = 0;
      LODWORD(v11) = 0;
      goto LABEL_37;
    }
  }

  v11 = *(a1 + 208);
  if (v11)
  {
    v8 = *(a1 + 216);
    if (v8)
    {
      [(BWStillImageBravoDisparityNode *)a1 _computeDisparityForTeleBuffer:v11 wideBuffer:v8 attachToOutputBuffer:v11];
      v10 = 1;
      goto LABEL_18;
    }

    v10 = 0;
    if (*(a1 + 232))
    {
LABEL_18:
      OUTLINED_FUNCTION_33();
      if (v7)
      {
        if (!*(a1 + 208))
        {
          fig_log_get_emitter();
          FigDebugAssert3();
        }

        BWSampleBufferRemoveAttachedMedia(v11, 0x1F21AAB10);
        [OUTLINED_FUNCTION_17_38() emitSampleBuffer:v11];
      }

      LODWORD(v11) = 0;
      goto LABEL_30;
    }

    LODWORD(v11) = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_37:
  if ((v10 & 1) != 0 || v11)
  {
    v21 = *(a1 + 208);
    if (v21)
    {
      CFRelease(v21);
      *(a1 + 208) = 0;
    }

    v22 = *(a1 + 216);
    if (v22)
    {
      CFRelease(v22);
      *(a1 + 216) = 0;
    }

    v23 = *(a1 + 240);
    if (v23)
    {
      CFRelease(v23);
      *(a1 + 240) = 0;
    }

    v24 = *(a1 + 232);
    if (v24)
    {
      CFRelease(v24);
      *(a1 + 232) = 0;
    }

    ++*(a1 + 196);
  }

  if (*(a1 + 192) == *(a1 + 196))
  {
    [(BWStillImageBravoDisparityNode *)a1 _clearCaptureRequestState];
  }
}

- (uint64_t)processorOptionsDictionary
{
  if (result)
  {
    v1 = result;
    v2 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters stereoDisparityParameters];
    if (!v2)
    {
      v13 = [(BWStillImageBravoDisparityNode *)v1 _sensorConfigurationWithPortraitTuningParameters];
      if (!v13 || (v2 = [objc_msgSend(v13 "sensorIDDictionary")]) == 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_6();
LABEL_17:
        FigDebugAssert3();
        return 0;
      }
    }

    v3 = v2;
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [*(v1 + 128) allValues];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [v4 setObject:objc_msgSend(*(*(&v17 + 1) + 8 * i) forKeyedSubscript:{"cameraInfo"), objc_msgSend(*(*(&v17 + 1) + 8 * i), "portType")}];
        }

        v7 = OUTLINED_FUNCTION_52(v10, v11, &v17, v16);
      }

      while (v7);
    }

    if (![v4 count])
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      goto LABEL_17;
    }

    v12 = *off_1E798A970;
    v14[0] = *off_1E798A9D0;
    v14[1] = v12;
    v15[0] = v3;
    v15[1] = v4;
    return [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  }

  return result;
}

- (void)_sensorConfigurationWithPortraitTuningParameters
{
  if (!a1)
  {
    return 0;
  }

  v2 = +[FigCaptureCameraParameters sharedInstance];
  if ([(FigCaptureCameraParameters *)v2 stereoDisparityParameters])
  {
    return 0;
  }

  v3 = [*(a1 + 128) allValues];
  OUTLINED_FUNCTION_43();
  v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = MEMORY[0];
LABEL_5:
  v8 = 0;
  while (1)
  {
    if (MEMORY[0] != v7)
    {
      objc_enumerationMutation(v3);
    }

    v9 = *(8 * v8);
    if (-[FigCaptureCameraParameters disparityVersionForPortType:sensorIDString:](v2, "disparityVersionForPortType:sensorIDString:", [v9 portType], objc_msgSend(v9, "sensorIDString")))
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      OUTLINED_FUNCTION_43();
      v6 = [v3 countByEnumeratingWithState:? objects:? count:?];
      if (v6)
      {
        goto LABEL_5;
      }

      return 0;
    }
  }
}

- (uint64_t)_computeDisparityForTeleBuffer:(void *)a3 wideBuffer:(void *)a4 attachToOutputBuffer:
{
  if (result)
  {
    v7 = result;
    v8 = [objc_msgSend(objc_msgSend(*(result + 16) mediaPropertiesForAttachedMediaKey:{@"Depth", "livePixelBufferPool"), "newPixelBuffer"}];
    if (v8)
    {
      v9 = v8;
      [OUTLINED_FUNCTION_2_121() setShouldComputeDisparityWhenCalibrationFails:?];
      if (([objc_msgSend(*(v7 + 184) "captureSettings")] & 0x20000) != 0)
      {
        [objc_msgSend(*(v7 + 184) "captureSettings")];
      }

      [OUTLINED_FUNCTION_2_121() setEqualizeTeleGainToMatchReference:?];
      OUTLINED_FUNCTION_33();
      if (v10)
      {
        AttachedMedia = BWSampleBufferGetAttachedMedia(AttachedMedia, 0x1F21AAB10);
        v11 = BWSampleBufferGetAttachedMedia(a3, 0x1F21AAB10);
      }

      else
      {
        v11 = a3;
      }

      [OUTLINED_FUNCTION_2_121() setReferenceSampleBuffer:AttachedMedia];
      [OUTLINED_FUNCTION_2_121() setAuxiliarySampleBuffer:v11];
      [OUTLINED_FUNCTION_2_121() setOutputShiftmap:v9];
      v12 = [OUTLINED_FUNCTION_2_121() process];
      v13 = v12 & 0xFFFFFFFE;
      if (!v12 || v13 == 2 && (OUTLINED_FUNCTION_33(), v10))
      {
        target = a3;
        [objc_msgSend(OUTLINED_FUNCTION_2_121() "metalContext")];
        v14 = CMGetAttachment(a4, *off_1E798A3C8, 0);
        v15 = [OUTLINED_FUNCTION_2_121() shiftMapMetadata];
        v16 = 0;
        if (v15)
        {
          [objc_msgSend(*(v7 + 128) objectForKeyedSubscript:{objc_msgSend(v14, "objectForKeyedSubscript:", *off_1E798B540)), "sensorIDDictionary"}];
          v16 = sidn_depthMetadataAttachmentDictionaryFromBravoDisparityMetadata(v15, a4, 1, v13 == 2);
        }

        cf = 0;
        if (!BWCMSampleBufferCreateCopyWithNewPixelBuffer(a4, v9, (v7 + 176), &cf))
        {
          BWSampleBufferSetAttachedMedia(a4, @"Depth", cf);
          if (cf)
          {
            CFRelease(cf);
          }
        }

        if ([OUTLINED_FUNCTION_2_121() disparityDiagnosticMetadata])
        {
          [v14 setObject:objc_msgSend(OUTLINED_FUNCTION_2_121() forKeyedSubscript:{"disparityDiagnosticMetadata"), @"Disparity"}];
        }

        if (v16)
        {
          CMSetAttachment(a4, *off_1E798D2B8, v16, 1u);
        }

        OUTLINED_FUNCTION_33();
        if (v10)
        {
          v19 = sidn_depthMetadataAttachmentDictionaryFromBravoDisparityMetadata(v15, target, 0, v13 == 2);
          if (v19)
          {
            CMSetAttachment(target, *off_1E798D2B8, v19, 1u);
          }
        }
      }

      v17 = +[BWAggdDataReporter sharedInstance];
      if (v12 > 3)
      {
        v18 = 4294949886;
      }

      else
      {
        v18 = dword_1AD056160[v12];
      }

      [(BWAggdDataReporter *)v17 reportSDOFSampleBufferProcessorProcessingStatus:v18];
      CFRelease(v9);
    }

    else
    {
      fig_log_get_emitter();
      FigDebugAssert3();
    }

    [OUTLINED_FUNCTION_2_121() setShouldComputeDisparityWhenCalibrationFails:0];
    [OUTLINED_FUNCTION_2_121() setEqualizeTeleGainToMatchReference:0];
    [OUTLINED_FUNCTION_2_121() setReferenceSampleBuffer:0];
    [OUTLINED_FUNCTION_2_121() setAuxiliarySampleBuffer:0];
    return [OUTLINED_FUNCTION_2_121() setOutputShiftmap:0];
  }

  return result;
}

- (uint64_t)_resolveProcessingMode
{
  if (result)
  {
    v1 = result;
    *(result + 200) = 0;
    result = [objc_msgSend(*(result + 184) "captureSettings")];
    if ((result & 0x800) != 0)
    {
      *(v1 + 200) = 1;
      *(v1 + 192) = 1;
      if ((*(v1 + 249) & 1) == 0 && ([objc_msgSend(OUTLINED_FUNCTION_12_53() "captureSettings")] == 3 || (objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_12_53(), "captureSettings"), "captureFlags") & 0x100000) != 0))
      {
        *(v1 + 200) = 3;
        result = [objc_msgSend(OUTLINED_FUNCTION_12_53() "captureSettings")];
        if (result)
        {
          *(v1 + 200) = 2;
          ++*(v1 + 192);
        }
      }

      else
      {
        result = [objc_msgSend(OUTLINED_FUNCTION_12_53() "captureSettings")];
        if (result == 7)
        {
          *(v1 + 200) = 4;
          result = [objc_msgSend(OUTLINED_FUNCTION_12_53() "requestedSettings")];
          *(v1 + 192) = result;
        }
      }
    }
  }

  return result;
}

- (uint64_t)prepareForCurrentConfigurationToBecomeLive
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (void)handleNodeError:(void *)a3 forInput:.cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 144) == a2)
  {
    *(a1 + 232) = a3;
  }

  if (*(a1 + 152) == a2)
  {

    *(a1 + 240) = a3;
  }

  [(BWStillImageBravoDisparityNode *)a1 _processBuffersForDisparityIfNecessary];
}

@end