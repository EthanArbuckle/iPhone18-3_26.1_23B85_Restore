@interface BWDeferredCaptureControllerInput
- (BWDeferredCaptureControllerInput)initWithSettings:(id)a3 configuration:(id)a4 sourceNodePixelBufferAttributes:(id)a5;
- (id)readyForProcessing;
- (uint64_t)_shouldDropSampleBufferIfNecessary:(uint64_t)a1;
- (uint64_t)_stashSampleBufferIfNecessary:(void *)a1;
- (void)_addDictionary:(id)a3 tag:(id)a4;
- (void)_addInference:(id)a3 inferenceAttachmentKey:(id)a4 portType:(id)a5;
- (void)_addInferenceBuffer:(__CVBuffer *)a3 metadata:(id)a4 inferenceAttachedMediaKey:(id)a5 portType:(id)a6;
- (void)_showDeferredCaptureTapToRadarPromptIfNecessaryForProcessingError:(uint64_t)a1;
- (void)addBuffer:(__CVBuffer *)a3 bufferType:(unint64_t)a4 captureFrameFlags:(unint64_t)a5 metadata:(id)a6 rawThumbnailsBuffer:(__CVBuffer *)a7 rawThumbnailsMetadata:(id)a8;
- (void)addDictionary:(id)a3 tag:(id)a4;
- (void)addPhotoDescriptor:(id)a3;
- (void)addSensorRawSampleBuffer:(opaqueCMSampleBuffer *)a3;
- (void)canProcessEnhancedResolution:(BOOL)a3 skipInferences:(BOOL)a4;
- (void)dealloc;
- (void)depthDataGenerationFailed;
- (void)encounteredProcessingError:(int)a3;
- (void)proxyReadyWithFPNREnabled:(BOOL)a3;
- (void)setLearnedFusionProxyGenerationUsedEVMinus:(BOOL)a3;
@end

@implementation BWDeferredCaptureControllerInput

- (BWDeferredCaptureControllerInput)initWithSettings:(id)a3 configuration:(id)a4 sourceNodePixelBufferAttributes:(id)a5
{
  v9 = [objc_msgSend(a3 "captureSettings")];
  v25.receiver = self;
  v25.super_class = BWDeferredCaptureControllerInput;
  v10 = [(BWStillImageProcessorControllerInput *)&v25 initWithSettings:a3 portType:v9];
  if (v10)
  {
    v10->_settings = a3;
    v10->_configuration = a4;
    if ([objc_msgSend(a3 "captureSettings")] == 12)
    {
      v11 = 1;
    }

    else
    {
      v11 = 1;
      if ([objc_msgSend(a3 "captureSettings")] != 13)
      {
        if (([objc_msgSend(a3 "captureSettings")] & 0x80) != 0)
        {
          v11 = 1;
        }

        else
        {
          v11 = 2;
        }
      }
    }

    v10->_compressionProfile = v11;
    v24 = 0;
    v12 = -[BWDeferredCaptureContainerManager createCaptureContainerWithApplicationID:captureRequestIdentifier:err:](+[BWDeferredCaptureContainerManager sharedInstance](BWDeferredCaptureContainerManager, "sharedInstance"), "createCaptureContainerWithApplicationID:captureRequestIdentifier:err:", [objc_msgSend(a3 "captureSettings")], objc_msgSend(objc_msgSend(a3, "requestedSettings"), "captureRequestIdentifier"), &v24);
    v10->_captureContainer = v12;
    if (v12)
    {
      [+[BWDeferredCaptureContainerManager sharedInstance](BWDeferredCaptureContainerManager addCaptureContainer:"addCaptureContainer:", v10->_captureContainer];
      [(BWDeferredCaptureContainer *)v10->_captureContainer commitStillImageSettings:a3];
      -[BWDeferredCaptureContainer commitDictionary:tag:](v10->_captureContainer, "commitDictionary:tag:", [-[NSDictionary objectForKeyedSubscript:](-[BWStillImageProcessorControllerConfiguration sensorConfigurationsByPortType](v10->_configuration "sensorConfigurationsByPortType")], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@-%@", BWDeferredIntermediateTagCameraInfoByPortTypePrefix, v9));
      if (([objc_msgSend(a3 "captureSettings")] & 0x4000000000) != 0)
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v13 = [objc_msgSend(a3 "captureSettings")];
        v14 = [v13 countByEnumeratingWithState:&v20 objects:v19 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v21;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v21 != v16)
              {
                objc_enumerationMutation(v13);
              }

              -[BWDeferredCaptureContainer commitDictionary:tag:](v10->_captureContainer, "commitDictionary:tag:", [-[NSDictionary objectForKeyedSubscript:](-[BWStillImageProcessorControllerConfiguration sensorConfigurationsByPortType](v10->_configuration "sensorConfigurationsByPortType")], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@-%@", BWDeferredIntermediateTagCameraInfoByPortTypePrefix, *(*(&v20 + 1) + 8 * i)));
            }

            v15 = [v13 countByEnumeratingWithState:&v20 objects:v19 count:16];
          }

          while (v15);
        }
      }

      [(BWDeferredCaptureContainer *)v10->_captureContainer commitDictionary:a5 tag:BWDeferredIntermediateTagSourceNodePixelBufferAttributes];
    }
  }

  return v10;
}

- (void)dealloc
{
  stashedLearnedFusionEVMinus = self->_stashedLearnedFusionEVMinus;
  if (stashedLearnedFusionEVMinus)
  {
    CFRelease(stashedLearnedFusionEVMinus);
  }

  stashedLearnedFusionErrorRecovery = self->_stashedLearnedFusionErrorRecovery;
  if (stashedLearnedFusionErrorRecovery)
  {
    CFRelease(stashedLearnedFusionErrorRecovery);
  }

  v5.receiver = self;
  v5.super_class = BWDeferredCaptureControllerInput;
  [(BWStillImageProcessorControllerInput *)&v5 dealloc];
}

- (void)addPhotoDescriptor:(id)a3
{
  [(BWDeferredCaptureContainer *)self->_captureContainer commitPhotoDescriptor:a3];
  v4 = [(BWStillImageProcessorControllerInput *)self delegate];

  [(BWStillImageProcessorControllerInputUpdatesDelegate *)v4 inputReceivedIntermediate:self];
}

- (void)addBuffer:(__CVBuffer *)a3 bufferType:(unint64_t)a4 captureFrameFlags:(unint64_t)a5 metadata:(id)a6 rawThumbnailsBuffer:(__CVBuffer *)a7 rawThumbnailsMetadata:(id)a8
{
  v25 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
  if (a6)
  {
    v13 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (a8)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v13 = 0;
  if (!a7)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
  if (!a8)
  {
    goto LABEL_7;
  }

LABEL_4:
  v15 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
LABEL_8:
  v16 = [(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)self captureStreamSettings] portType];
  if ((-[BWStillImageCaptureSettings captureFlags](-[BWStillImageProcessorControllerInput captureSettings](self, "captureSettings"), "captureFlags") & 4) != 0 && [objc_msgSend(a6 objectForKeyedSubscript:{*off_1E798B588), "intValue"}] == 1)
  {
    [(BWDeferredPipelineParameters *)[(BWDeferredCaptureControllerInput *)self pipelineParameters] setQuadraProcessingSupportEnabled:1];
  }

  v17 = [(BWDeferredCaptureContainer *)self->_captureContainer commitBuffer:a3 tag:v25 bufferType:a4 captureFrameFlags:a5 compressionProfile:self->_compressionProfile metadataTag:v13 rawThumbnailsBufferTag:v14 rawThumbnailsMetadataTag:v15 mainRawThumbnailBufferTag:0 mainRawThumbnailMetadataTag:0 sifrRawThumbnailBufferTag:0 sifrRawThumbnailMetadataTag:0 portType:v16];
  if (v17)
  {
    v22 = v17;
    [BWDeferredCaptureControllerInput addBuffer:bufferType:captureFrameFlags:metadata:rawThumbnailsBuffer:rawThumbnailsMetadata:];
  }

  else if (a6 && (v18 = [(BWDeferredCaptureContainer *)self->_captureContainer commitMetadata:a6 tag:v13 bufferTag:v25], v18))
  {
    v22 = v18;
    [BWDeferredCaptureControllerInput addBuffer:bufferType:captureFrameFlags:metadata:rawThumbnailsBuffer:rawThumbnailsMetadata:];
  }

  else if (a7 && (v19 = [(BWDeferredCaptureContainer *)self->_captureContainer commitBuffer:a7 tag:v14 bufferType:37 captureFrameFlags:0 compressionProfile:self->_compressionProfile metadataTag:v15 portType:v16], v19))
  {
    v22 = v19;
    [BWDeferredCaptureControllerInput addBuffer:bufferType:captureFrameFlags:metadata:rawThumbnailsBuffer:rawThumbnailsMetadata:];
  }

  else
  {
    if (!a8 || (v20 = [(BWDeferredCaptureContainer *)self->_captureContainer commitMetadata:a8 tag:v15 bufferTag:v25], !v20))
    {
      v21 = [(BWStillImageProcessorControllerInput *)self delegate];

      [(BWStillImageProcessorControllerInputUpdatesDelegate *)v21 inputReceivedIntermediate:self];
      return;
    }

    v22 = v20;
    [BWDeferredCaptureControllerInput addBuffer:bufferType:captureFrameFlags:metadata:rawThumbnailsBuffer:rawThumbnailsMetadata:];
  }

  [(BWDeferredCaptureControllerInput *)self encounteredProcessingError:v22];
}

- (void)addSensorRawSampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v4 = &v38;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  if (!a3)
  {
    goto LABEL_39;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  v7 = ImageBuffer;
  if (!ImageBuffer)
  {
LABEL_38:
    v4 = v39;
LABEL_39:
    v28 = 0;
    v29 = 0;
    v21 = 0;
    v22 = 0;
    *(v4 + 6) = -12780;

    goto LABEL_32;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
  if (!FigCapturePixelFormatIsVersatileRaw(PixelFormatType))
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
LABEL_31:
    v21 = 0;
    v22 = 0;

    goto LABEL_32;
  }

  if (([(BWDeferredCaptureControllerInput *)self _shouldDropSampleBufferIfNecessary:a3]& 1) != 0)
  {
    v28 = 0;
    v29 = 0;
    v21 = 0;
    v22 = 1;
  }

  else
  {
    if (([(BWDeferredCaptureControllerInput *)self _stashSampleBufferIfNecessary:a3]& 1) == 0)
    {
      v9 = *off_1E798A3C8;
      v31 = CMGetAttachment(a3, *off_1E798A3C8, 0);
      if (v31)
      {
        v23 = BWStillImageCaptureFrameFlagsForSampleBuffer(a3);
        v27 = [v31 objectForKeyedSubscript:*off_1E798B540];
        v10 = [v27 isEqualToString:{-[BWStillImageProcessorControllerInput portType](self, "portType")}];
        if (v10 & 1 | ([(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)self captureSettings] captureFlags]>> 38) & 1)
        {
          buffer = CMGetAttachment(a3, *off_1E798A458, 0);
          v30 = CVBufferCopyAttachment(buffer, v9, 0);
          v25 = CMGetAttachment(a3, *off_1E798A3C0, 0);
          v29 = CVBufferCopyAttachment(v25, v9, 0);
          v11 = CMGetAttachment(a3, *off_1E798A470, 0);
          v28 = CVBufferCopyAttachment(v11, v9, 0);
          v24 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
          v12 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
          if (buffer)
          {
            v13 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
          }

          else
          {
            v13 = 0;
          }

          if (v30)
          {
            v14 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
          }

          else
          {
            v14 = 0;
          }

          if (v25)
          {
            v15 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
          }

          else
          {
            v15 = 0;
          }

          if (v29)
          {
            v16 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
            if (v11)
            {
LABEL_19:
              v17 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
LABEL_22:
              if (v28)
              {
                v18 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
              }

              else
              {
                v18 = 0;
              }

              if ((-[BWStillImageCaptureSettings captureFlags](-[BWStillImageProcessorControllerInput captureSettings](self, "captureSettings"), "captureFlags") & 4) != 0 && [objc_msgSend(v31 objectForKeyedSubscript:{*off_1E798B588), "intValue"}] == 1)
              {
                [(BWDeferredPipelineParameters *)[(BWDeferredCaptureControllerInput *)self pipelineParameters] setQuadraProcessingSupportEnabled:1];
              }

              v19 = [(BWDeferredCaptureContainer *)self->_captureContainer commitBuffer:v7 tag:v24 bufferType:1 captureFrameFlags:v23 compressionProfile:self->_compressionProfile metadataTag:v12 rawThumbnailsBufferTag:v13 rawThumbnailsMetadataTag:v14 mainRawThumbnailBufferTag:v15 mainRawThumbnailMetadataTag:v16 sifrRawThumbnailBufferTag:v17 sifrRawThumbnailMetadataTag:v18 portType:v27];
              *(v39 + 6) = v19;
              if (v19 || (v20 = [(BWDeferredCaptureContainer *)self->_captureContainer commitMetadata:v31 tag:v12 bufferTag:v24], (*(v39 + 6) = v20) != 0))
              {
                FigDebugAssert3();
              }

              else
              {
                v32[0] = MEMORY[0x1E69E9820];
                v32[1] = 3221225472;
                v33 = __61__BWDeferredCaptureControllerInput_addSensorRawSampleBuffer___block_invoke;
                v34 = &unk_1E799DB88;
                v37 = &v38;
                v35 = self;
                v36 = v27;
                __61__BWDeferredCaptureControllerInput_addSensorRawSampleBuffer___block_invoke(v32, 37, buffer, v13, v30, v14);
                v33(v32, 37, v25, v15, v29, v16);
                v33(v32, 37, v11, v17, v28, v18);
              }

              goto LABEL_31;
            }
          }

          else
          {
            v16 = 0;
            if (v11)
            {
              goto LABEL_19;
            }
          }

          v17 = 0;
          goto LABEL_22;
        }
      }

      goto LABEL_38;
    }

    v28 = 0;
    v29 = 0;
    v22 = 0;
    v21 = 1;
  }

LABEL_32:

  if (((v21 | v22) & 1) == 0)
  {
    if (*(v39 + 6))
    {
      [(BWDeferredCaptureControllerInput *)self encounteredProcessingError:?];
    }

    else if (self)
    {
      [(BWStillImageProcessorControllerInputUpdatesDelegate *)[(BWStillImageProcessorControllerInput *)self delegate] inputReceivedIntermediate:self];
    }
  }

  _Block_object_dispose(&v38, 8);
}

uint64_t __61__BWDeferredCaptureControllerInput_addSensorRawSampleBuffer___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!a3)
  {
    if (!a5)
    {
      return result;
    }

    goto LABEL_6;
  }

  result = [*(*(result + 32) + 56) commitBuffer:a3 tag:a4 bufferType:a2 captureFrameFlags:0 compressionProfile:*(*(result + 32) + 64) metadataTag:a6 portType:*(result + 40)];
  *(*(*(v9 + 48) + 8) + 24) = result;
  if (a5 && !*(*(*(v9 + 48) + 8) + 24))
  {
LABEL_6:
    result = [*(*(v9 + 32) + 56) commitMetadata:a5 tag:a6 bufferTag:a4];
    *(*(*(v9 + 48) + 8) + 24) = result;
  }

  return result;
}

- (void)proxyReadyWithFPNREnabled:(BOOL)a3
{
  v3 = a3;
  self->_proxyBufferReady = 1;
  if (![(BWDeferredContainer *)self->_captureContainer hasTag:BWDeferredIntermediateTagModuleCalibrationByPortType])
  {
    v5 = [-[NSDictionary objectForKeyedSubscript:](-[BWStillImageProcessorControllerConfiguration sensorConfigurationsByPortType](self->_configuration "sensorConfigurationsByPortType")];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 copy];
      [objc_msgSend(v7 "blacklevelShadingCorrectionThumbnails")];
      if (v3)
      {
        if ([objc_msgSend(v6 "shadingFPNCorrectionImage")] && objc_msgSend(objc_msgSend(v6, "shadingFPNCorrectionImage"), "metadataFileSystemLocation"))
        {
          [objc_msgSend(v7 "shadingFPNCorrectionImage")];
        }

        else
        {
          v16 = 0;
          v15 = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        [v7 setShadingFPNCorrectionImage:0];
      }

      v13 = [(BWStillImageProcessorControllerInput *)self portType:v11];
      v14 = v7;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      [(BWDeferredCaptureContainer *)self->_captureContainer commitDictionary:v10 tag:BWDeferredIntermediateTagModuleCalibrationByPortType];
    }

    else if (v3)
    {
      v16 = 0;
      v15 = 0;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  [(BWStillImageProcessorControllerInputUpdatesDelegate *)[(BWStillImageProcessorControllerInput *)self delegate:v11] inputReceivedIntermediate:self];
}

- (void)depthDataGenerationFailed
{
  self->_depthDataGenerationFailed = 1;
  v3 = [(BWStillImageProcessorControllerInput *)self delegate];

  [(BWStillImageProcessorControllerInputUpdatesDelegate *)v3 inputReceivedIntermediate:self];
}

- (void)canProcessEnhancedResolution:(BOOL)a3 skipInferences:(BOOL)a4
{
  v5 = a3;
  [(BWDeferredPipelineParameters *)[(BWDeferredCaptureControllerInput *)self pipelineParameters] setCanProcessEnhancedResolution:a3];
  self->_skipInferences = a4;
  self->_canProcessEnhancedResolution = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v5];
  v7 = [(BWStillImageProcessorControllerInput *)self delegate];

  [(BWStillImageProcessorControllerInputUpdatesDelegate *)v7 inputReceivedIntermediate:self];
}

- (void)setLearnedFusionProxyGenerationUsedEVMinus:(BOOL)a3
{
  self->_learnedFusionProxyGenerationUsedEVMinus = [MEMORY[0x1E696AD98] numberWithBool:a3];
  stashedLearnedFusionEVMinus = self->_stashedLearnedFusionEVMinus;
  if (stashedLearnedFusionEVMinus)
  {
    if (dword_1EB58E320)
    {
      v17 = 0;
      v16 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      stashedLearnedFusionEVMinus = self->_stashedLearnedFusionEVMinus;
    }

    [(BWDeferredCaptureControllerInput *)self addSensorRawSampleBuffer:stashedLearnedFusionEVMinus, v12, v13];
    v6 = self->_stashedLearnedFusionEVMinus;
    if (v6)
    {
      CFRelease(v6);
      self->_stashedLearnedFusionEVMinus = 0;
    }
  }

  stashedLearnedFusionErrorRecovery = self->_stashedLearnedFusionErrorRecovery;
  if (stashedLearnedFusionErrorRecovery)
  {
    if (dword_1EB58E320)
    {
      v17 = 0;
      v16 = OS_LOG_TYPE_DEFAULT;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v9 = v17;
      if (os_log_type_enabled(v8, v16))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        v14 = 136315138;
        v15 = "[BWDeferredCaptureControllerInput setLearnedFusionProxyGenerationUsedEVMinus:]";
        LODWORD(v13) = 12;
        v12 = &v14;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      stashedLearnedFusionErrorRecovery = self->_stashedLearnedFusionErrorRecovery;
    }

    [(BWDeferredCaptureControllerInput *)self addSensorRawSampleBuffer:stashedLearnedFusionErrorRecovery, v12, v13];
    v11 = self->_stashedLearnedFusionErrorRecovery;
    if (v11)
    {
      CFRelease(v11);
      self->_stashedLearnedFusionErrorRecovery = 0;
    }
  }

  [(BWStillImageProcessorControllerInputUpdatesDelegate *)[(BWStillImageProcessorControllerInput *)self delegate] inputReceivedIntermediate:self];
}

- (uint64_t)_shouldDropSampleBufferIfNecessary:(uint64_t)a1
{
  if (a1)
  {
    v3 = target;
    v5 = CMGetAttachment(target, @"StillSettings", 0);
    if (*(a1 + 96))
    {
      if (bwdcc_learnedFusionErrorRecoveryPossible([v5 captureSettings]))
      {
        v6 = BWStillImageCaptureFrameFlagsForSampleBuffer(v3);
        if ((v6 & 4) != 0 && ([*(a1 + 96) BOOLValue] & 1) == 0)
        {
          if (dword_1EB58E320)
          {
            v9 = OUTLINED_FUNCTION_1_131();
            OUTLINED_FUNCTION_8_5(v9);
            OUTLINED_FUNCTION_4_97();
            if (v2)
            {
LABEL_15:
              BWStillImageSampleBufferToDisplayString(v3);
              OUTLINED_FUNCTION_1_17();
              OUTLINED_FUNCTION_9_14();
              _os_log_send_and_compose_impl();
            }

LABEL_17:
            OUTLINED_FUNCTION_5_89();
            return v3;
          }

          return 1;
        }

        if ((v6 & 0x200) != 0 && [*(a1 + 96) BOOLValue])
        {
          if (dword_1EB58E320)
          {
            v7 = OUTLINED_FUNCTION_1_131();
            OUTLINED_FUNCTION_8_5(v7);
            OUTLINED_FUNCTION_4_97();
            if (v2)
            {
              goto LABEL_15;
            }

            goto LABEL_17;
          }

          return 1;
        }
      }
    }
  }

  return 0;
}

- (uint64_t)_stashSampleBufferIfNecessary:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = target;
  v5 = CMGetAttachment(target, @"StillSettings", 0);
  if (a1[12] || !bwdcc_learnedFusionErrorRecoveryPossible([v5 captureSettings]))
  {
    return 0;
  }

  v6 = BWStillImageCaptureFrameFlagsForSampleBuffer(v3);
  if ((v6 & 4) != 0)
  {
    if (v3)
    {
      v8 = CFRetain(v3);
    }

    else
    {
      v8 = 0;
    }

    a1[10] = v8;
    if (dword_1EB58E320)
    {
      v10 = OUTLINED_FUNCTION_1_131();
      OUTLINED_FUNCTION_8_5(v10);
      OUTLINED_FUNCTION_4_97();
      if (v2)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    return 1;
  }

  if ((v6 & 0x200) != 0)
  {
    if (v3)
    {
      v9 = CFRetain(v3);
    }

    else
    {
      v9 = 0;
    }

    a1[11] = v9;
    if (dword_1EB58E320)
    {
      v11 = OUTLINED_FUNCTION_1_131();
      OUTLINED_FUNCTION_8_5(v11);
      OUTLINED_FUNCTION_4_97();
      if (v2)
      {
LABEL_19:
        BWStillImageSampleBufferToDisplayString(v3);
        OUTLINED_FUNCTION_1_17();
        OUTLINED_FUNCTION_9_14();
        _os_log_send_and_compose_impl();
      }

LABEL_21:
      OUTLINED_FUNCTION_5_89();
      return v3;
    }

    return 1;
  }

  return 0;
}

- (void)addDictionary:(id)a3 tag:(id)a4
{
  [(BWDeferredCaptureControllerInput *)self _addDictionary:a3 tag:a4];
  if (self)
  {
    v5 = [(BWStillImageProcessorControllerInput *)self delegate];

    [(BWStillImageProcessorControllerInputUpdatesDelegate *)v5 inputReceivedIntermediate:self];
  }
}

- (void)_addInferenceBuffer:(__CVBuffer *)a3 metadata:(id)a4 inferenceAttachedMediaKey:(id)a5 portType:(id)a6
{
  if (a3)
  {
    v11 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    if (a4)
    {
      v12 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
    }

    else
    {
      v12 = 0;
    }

    [(BWDeferredCaptureContainer *)self->_captureContainer commitInferenceBuffer:a3 tag:v11 metadataTag:v12 inferenceAttachedMediaKey:a5 compressionProfile:self->_compressionProfile portType:a6];
    if (a4)
    {
      if ([(BWDeferredCaptureContainer *)self->_captureContainer commitMetadata:a4 tag:v12 bufferTag:v11])
      {
        OUTLINED_FUNCTION_1_5();
        FigDebugAssert3();
      }
    }
  }
}

- (void)_addInference:(id)a3 inferenceAttachmentKey:(id)a4 portType:(id)a5
{
  if (a3)
  {
    captureContainer = self->_captureContainer;
    v9 = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];

    [(BWDeferredCaptureContainer *)captureContainer commitInference:a3 tag:v9 inferenceAttachmentKey:a4 portType:a5];
  }
}

- (void)_addDictionary:(id)a3 tag:(id)a4
{
  if (a3 && ![(BWDeferredContainer *)self->_captureContainer hasTag:a4])
  {
    captureContainer = self->_captureContainer;

    [(BWDeferredCaptureContainer *)captureContainer commitDictionary:a3 tag:a4];
  }
}

- (void)_showDeferredCaptureTapToRadarPromptIfNecessaryForProcessingError:(uint64_t)a1
{
  if (a1 && FigDebugIsInternalBuild() && a2 != -73439 && a2 != -17401)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [objc_msgSend(OUTLINED_FUNCTION_8_63() "captureSettings")];
    [objc_msgSend(OUTLINED_FUNCTION_8_63() "requestedSettings")];
    v6 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v6, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWDeferredCaptureController.m", 417, @"LastShownDate:BWDeferredCaptureController.m:417", @"LastShownBuild:BWDeferredCaptureController.m:417", 0);
    free(v6);
  }
}

- (void)encounteredProcessingError:(int)a3
{
  v3 = *&a3;
  [(BWDeferredCaptureControllerInput *)self _showDeferredCaptureTapToRadarPromptIfNecessaryForProcessingError:a3];
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  [+[BWDeferredCaptureContainerManager sharedInstance](BWDeferredCaptureContainerManager abortContainer:"abortContainer:error:" error:[(FigCaptureStillImageSettings *)[(BWStillImageSettings *)self->_settings requestedSettings] captureRequestIdentifier], v3];
  [(BWStillImageProcessorControllerInputUpdatesDelegate *)[(BWStillImageProcessorControllerInput *)self delegate] input:self encounteredProcessingError:v3];
}

- (id)readyForProcessing
{
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(result "captureStreamSettings")];
    v3 = [objc_msgSend(v1 "captureStreamSettings")];
    v4 = [objc_msgSend(v1 "captureStreamSettings")];
    v5 = [v1 captureStreamSettings];
    v6 = v4 == 13 || v3 == 12;
    if (!v6 || (v2 & 4) == 0)
    {
      if ([v5 captureType] == 12)
      {
        v10 = [MEMORY[0x1E695DFA8] setWithArray:&unk_1F224A128];
        v11 = v10;
        if ((v2 & 0x400000) != 0)
        {
          [v10 addObject:&unk_1F2247470];
        }

        v12 = [MEMORY[0x1E695DFA8] set];
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v54 = v1;
        v13 = [v1[7] intermediates];
        v14 = [v13 countByEnumeratingWithState:&v61 objects:v60 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v62;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v62 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v61 + 1) + 8 * i);
              if ([v18 isMemberOfClass:objc_opt_class()])
              {
                v19 = [v18 bufferType];
                [v18 captureFrameFlags];
                if (([v11 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", v19)}] & 1) == 0)
                {
                  [v11 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", v19)}];
                }

                [v12 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", v19)}];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v61 objects:v60 count:16];
          }

          while (v15);
        }

        v20 = [v11 isEqualToSet:v12];
        v21 = 1;
        v1 = v54;
      }

      else
      {
        if ((v2 & 0x84) == 0x84)
        {
          v22 = [objc_msgSend(v1 "captureStreamSettings")];
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v23 = [v1[7] intermediates];
          v24 = [v23 countByEnumeratingWithState:&v56 objects:v55 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = 0;
            v27 = *v57;
            do
            {
              for (j = 0; j != v25; ++j)
              {
                if (*v57 != v27)
                {
                  objc_enumerationMutation(v23);
                }

                v29 = *(*(&v56 + 1) + 8 * j);
                if ([v29 isMemberOfClass:objc_opt_class()])
                {
                  v26 += ([v29 captureFrameFlags] >> 1) & 1;
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v56 objects:v55 count:16];
            }

            while (v25);
          }

          else
          {
            v26 = 0;
          }

          v20 = v26 == v22;
        }

        else
        {
          v20 = 0;
        }

        v21 = 1;
      }

      goto LABEL_83;
    }

    v7 = [v5 expectedEVZeroFrameCount];
    if (bwdcc_learnedFusionErrorRecoveryPossible([v1 captureSettings]))
    {
      v8 = v1[12];
      v9 = v7;
      if (v8)
      {
        v9 = v7 - ([v8 BOOLValue] & 1);
      }
    }

    else
    {
      v9 = v7;
    }

    if (v7)
    {
      v30 = v9;
    }

    else
    {
      v30 = 0;
    }

    v31 = [objc_msgSend(v1 "captureStreamSettings")];
    v45 = [objc_msgSend(v1 "captureStreamSettings")];
    if ((v2 & 0x200000000) != 0)
    {
      v32 = v1[9];
      if (!v32)
      {
        v49 = 0;
LABEL_45:
        v48 = v30;
        v47 = [objc_msgSend(v1 "captureSettings")];
        if (bwdcc_learnedFusionErrorRecoveryPossible([v1 captureSettings]) && (v33 = v1[12]) != 0)
        {
          v46 = [v33 BOOLValue];
        }

        else
        {
          v46 = 1;
        }

        v34 = BWDepthDataTypeSupportsDeferredDepthGeneration([objc_msgSend(v1 "pipelineParameters")]);
        v35 = [objc_msgSend(v1 "captureSettings")];
        v36 = 1;
        if ((v35 & 0x800) != 0 && !v34)
        {
          v36 = *(v1 + 69);
        }

        v44 = v36;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v37 = [v1[7] intermediates];
        v38 = [v37 countByEnumeratingWithState:&v66 objects:v65 count:16];
        if (v38)
        {
          v39 = v38;
          OUTLINED_FUNCTION_7_81();
          v40 = *v67;
          do
          {
            for (k = 0; k != v39; ++k)
            {
              if (*v67 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v66 + 1) + 8 * k);
              if ([v42 isMemberOfClass:objc_opt_class()])
              {
                v43 = [v42 captureFrameFlags];
                if ([objc_msgSend(v1 "portType")])
                {
                  if ((v43 & 2) != 0)
                  {
                    ++v53;
                  }

                  else if ((v43 & 8) != 0)
                  {
                    ++v52;
                  }

                  else if ((v43 & 4) != 0)
                  {
                    v50 = 1;
                  }

                  else
                  {
                    v51 |= [v42 bufferType] == 2001;
                  }
                }

                else if ((v43 & 0x14) != 0)
                {
                  ++v30;
                }
              }
            }

            v39 = [v37 countByEnumeratingWithState:&v66 objects:v65 count:16];
          }

          while (v39);
        }

        else
        {
          OUTLINED_FUNCTION_7_81();
        }

        v20 = 0;
        if (v53 == v48)
        {
          v21 = v49;
          if (!(((v47 & 0x100000) != 0) & v46) | v50 & 1 && v52 == v31)
          {
            v20 = (v44 | v51) & (v30 == ((v45 >> 38) & 1));
          }
        }

        else
        {
          v21 = v49;
        }

LABEL_83:
        if (*(v1 + 68) == 1)
        {
          return (v21 & v20);
        }

        else
        {
          return 0;
        }
      }

      v30 -= [v32 BOOLValue] ^ 1;
    }

    v49 = 1;
    goto LABEL_45;
  }

  return result;
}

@end