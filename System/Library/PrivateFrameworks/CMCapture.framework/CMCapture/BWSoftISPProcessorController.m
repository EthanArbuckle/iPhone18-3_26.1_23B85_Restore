@interface BWSoftISPProcessorController
- (BOOL)_faceDetectionEnabledForFrame:(_BOOL8)result processingMode:(const void *)a2 captureType:(int)a3 captureFlags:(int)a4;
- (BOOL)_gnuEnabledForFrame:(unsigned int)a3 processingMode:(uint64_t)a4 captureFlags:(uint64_t)a5 tuningType:;
- (BOOL)_opcEnabledForFrame:(uint64_t)a3 processingMode:(uint64_t)a4 captureFlags:(uint64_t)a5 tuningType:;
- (BOOL)_rnfEnabledForFrame:(int)a3 processingMode:(char)a4 captureFlags:;
- (BWSoftISPProcessorController)initWithConfiguration:(id)a3;
- (__CVBuffer)newOutputAuxiliaryPixelBufferForUniqueID:(unint64_t)a3 pixelFormat:(unsigned int)a4 width:(unint64_t)a5 height:(unint64_t)a6 alignment:(unint64_t)a7;
- (__CVBuffer)newOutputPixelBufferForUniqueID:(unint64_t)a3 pixelFormat:(unsigned int)a4 width:(unint64_t)a5 height:(unint64_t)a6;
- (double)_awbRegionOfInterestWithinSensorCropRectForFrame:(int)a3 processingMode:(unint64_t)a4 captureFlags:;
- (double)_inputBufferRectWithinSensorCropRectForFrame:(uint64_t)a1;
- (id)_lossyCompressionLevelByPipelineType;
- (id)_prepareDescriptorByPipelineTypeForResolutionFlavors:(char)a3 perFrameProcessing:;
- (id)_prepareDescriptorWithDimensions:(id)result;
- (id)externalMemoryDescriptorForResolutionFlavors:(id)a3;
- (id)requestForInput:(id)a3 delegate:(id)a4 errOut:(int *)a5;
- (int)prepare;
- (uint64_t)_addFrame:(id *)a1;
- (uint64_t)_awbModeForFrame:(int)a3 processingMode:(int)a4 captureType:(unint64_t)a5 captureFlags:(unint64_t)a6 captureFrameFlags:;
- (uint64_t)_awbPurgeResourcesForFrameCount:(unint64_t)a3 captureFlags:;
- (uint64_t)_hrEnabledForFrame:(unsigned int)a3 processingMode:(int)a4 captureType:(uint64_t)a5 captureFlags:(char)a6 captureFrameFlags:(int)a7 deliverDeferredPhotoProxyImage:;
- (uint64_t)_loadAndSetupSoftISPProcessor;
- (uint64_t)_ltmModeForFrame:(unsigned int)a3 processingMode:(int)a4 captureType:(unint64_t)a5 captureFlags:(unsigned int)a6 captureFrameFlags:(char)a7 deliverDeferredPhotoProxyImage:;
- (uint64_t)_pipelineTypeForCaptureType:(uint64_t)a3 captureFlags:(int)a4 processingMode:(int)a5 gdcEnabled:(int)a6 isQuadra:;
- (uint64_t)_rawMBNREnabledForFrame:(int)a3 processingMode:(uint64_t)a4 captureType:(uint64_t)a5 captureFlags:(uint64_t)a6 tuningType:;
- (uint64_t)_sfhrEnabledForFrame:(unsigned int)a3 processingMode:(int)a4 captureType:(uint64_t)a5 captureFlags:(char)a6 captureFrameFlags:(uint64_t)a7 tuningType:;
- (uint64_t)_tuningTypeForFrame:(int)a3 processingMode:(int)a4 captureType:(uint64_t)a5 captureFlags:(char)a6 captureFrameFlags:(int)a7 deliverDeferredPhotoProxyImage:;
- (unsigned)outputPixelFormatForCaptureType:(int)a3 captureFlags:(unint64_t)a4 processingMode:(int)a5 isQuadra:(BOOL)a6;
- (unsigned)outputPixelFormatForInput:(id)a3;
- (void)_allowUnclampedOutputsForFrame:(int)a3 processingMode:;
- (void)_auxiliaryTypesForFrame:(int)a3 captureType:(uint64_t)a4 captureFlags:(char)a5 deliverDeferredPhotoProxyImage:;
- (void)_outputBufferRectWithinSensorCropRectForFrame:(void *)a1;
- (void)dealloc;
- (void)input:(id)a3 addFrame:(opaqueCMSampleBuffer *)a4 resolutionFlavor:(int)a5;
- (void)outputFrameEnqueued:(id)a3;
- (void)reset;
@end

@implementation BWSoftISPProcessorController

- (BWSoftISPProcessorController)initWithConfiguration:(id)a3
{
  v9.receiver = self;
  v9.super_class = BWSoftISPProcessorController;
  v4 = [(BWStillImageProcessorController *)&v9 initWithName:@"SoftISP" type:12 configuration:a3];
  if (v4)
  {
    v5 = [a3 inputDimensions];
    if (v5 < 1 || SHIDWORD(v5) < 1 || ![a3 sensorRawPixelFormat] || (v6 = objc_autoreleasePoolPush(), v7 = -[BWSoftISPProcessorController _loadAndSetupSoftISPProcessor](v4), objc_autoreleasePoolPop(v6), v7))
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  [(BWSoftISPProcessorController *)self reset];

  inputFormatDescription = self->_inputFormatDescription;
  if (inputFormatDescription)
  {
    CFRelease(inputFormatDescription);
  }

  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  lscFormatDescription = self->_lscFormatDescription;
  if (lscFormatDescription)
  {
    CFRelease(lscFormatDescription);
  }

  flashLSCFormatDescription = self->_flashLSCFormatDescription;
  if (flashLSCFormatDescription)
  {
    CFRelease(flashLSCFormatDescription);
  }

  auxSashimiRawFormatDescription = self->_auxSashimiRawFormatDescription;
  if (auxSashimiRawFormatDescription)
  {
    CFRelease(auxSashimiRawFormatDescription);
  }

  auxFocusPixelH0FormatDescription = self->_auxFocusPixelH0FormatDescription;
  if (auxFocusPixelH0FormatDescription)
  {
    CFRelease(auxFocusPixelH0FormatDescription);
  }

  auxFocusPixelH1FormatDescription = self->_auxFocusPixelH1FormatDescription;
  if (auxFocusPixelH1FormatDescription)
  {
    CFRelease(auxFocusPixelH1FormatDescription);
  }

  v10.receiver = self;
  v10.super_class = BWSoftISPProcessorController;
  [(BWStillImageProcessorController *)&v10 dealloc];
}

- (unsigned)outputPixelFormatForCaptureType:(int)a3 captureFlags:(unint64_t)a4 processingMode:(int)a5 isQuadra:(BOOL)a6
{
  v7 = [(BWSoftISPProcessorController *)self _pipelineTypeForCaptureType:a3 captureFlags:a4 processingMode:a5 gdcEnabled:0 isQuadra:a6];
  processor = self->_processor;
  v9 = [(BWStillImageProcessorControllerConfiguration *)[(BWStillImageProcessorController *)self configuration] sensorRawPixelFormat];

  return [(SoftISPProcessor *)processor outputPixelFormatForPipeline:v7 inputPixelFormat:v9];
}

- (unsigned)outputPixelFormatForInput:(id)a3
{
  v5 = [objc_msgSend(CMGetAttachment(objc_msgSend(a3 "frame")] == 1;
  v6 = [objc_msgSend(a3 "captureStreamSettings")];
  v7 = [objc_msgSend(a3 "captureStreamSettings")];
  v8 = [a3 processingMode];

  return [(BWSoftISPProcessorController *)self outputPixelFormatForCaptureType:v6 captureFlags:v7 processingMode:v8 isQuadra:v5];
}

- (void)reset
{
  [(SoftISPProcessor *)self->_processor resetState];
  processor = self->_processor;

  [(SoftISPProcessor *)processor setDelegate:0];
}

- (id)requestForInput:(id)a3 delegate:(id)a4 errOut:(int *)a5
{
  v6 = [[BWSoftISPProcessorControllerRequest alloc] initWithInput:a3 delegate:a4];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -12786;
  }

  if (a5)
  {
    *a5 = v7;
  }

  return v6;
}

- (int)prepare
{
  v3 = [(BWStillImageProcessorController *)self currentRequest];
  [(SoftISPProcessor *)self->_processor setDelegate:self];
  v4 = [(BWStillImageProcessorControllerRequest *)v3 input];
  if ([(BWStillImageProcessorControllerInput *)v4 frame])
  {
    [(BWStillImageProcessorControllerInputUpdatesDelegate *)[(BWStillImageProcessorControllerInput *)v4 delegate] input:v4 addFrame:[(BWStillImageProcessorControllerInput *)v4 frame] resolutionFlavor:[(BWStillImageProcessorControllerInput *)v4 resolutionFlavor]];
  }

  return 0;
}

- (__CVBuffer)newOutputPixelBufferForUniqueID:(unint64_t)a3 pixelFormat:(unsigned int)a4 width:(unint64_t)a5 height:(unint64_t)a6
{
  v6 = a6;
  v7 = a5;
  v9 = [(BWStillImageProcessorController *)self currentRequest:a3];
  v10 = [(BWStillImageProcessorControllerRequest *)v9 delegate];
  v11 = [(BWStillImageProcessorControllerRequest *)v9 input];

  return [(BWStillImageProcessorControllerDelegate *)v10 processorController:self newOutputPixelBufferForProcessorInput:v11 type:1 dimensions:v7 | (v6 << 32)];
}

- (__CVBuffer)newOutputAuxiliaryPixelBufferForUniqueID:(unint64_t)a3 pixelFormat:(unsigned int)a4 width:(unint64_t)a5 height:(unint64_t)a6 alignment:(unint64_t)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = *&a4;
  v12 = [(BWStillImageProcessorController *)self currentRequest];
  LODWORD(v14) = v7;
  return [(BWStillImageProcessorControllerDelegate *)[(BWStillImageProcessorControllerRequest *)v12 delegate] processorController:self newOutputPixelBufferForProcessorInput:[(BWStillImageProcessorControllerRequest *)v12 input] type:28 attachedMediaKey:0 pixelFormat:v10 dimensions:v9 | (v8 << 32) dimensionAlignment:v14];
}

- (uint64_t)_loadAndSetupSoftISPProcessor
{
  if (a1)
  {
    v1 = a1;
    v2 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
    if (!a1[8])
    {
      v3 = [a1 configuration];
      v4 = [MEMORY[0x1E695DF90] dictionary];
      v41 = [MEMORY[0x1E695DF90] dictionary];
      v5 = [MEMORY[0x1E695DF90] dictionary];
      v43 = [MEMORY[0x1E695DF90] dictionary];
      v42 = [MEMORY[0x1E695DF90] dictionary];
      v6 = [MEMORY[0x1E695DF90] dictionary];
      [v6 setObject:-[FigCaptureCameraParameters commonNRFParameters](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters forKeyedSubscript:{"sharedInstance"), "commonNRFParameters"), @"NRFParameters"}];
      [v4 setObject:v6 forKeyedSubscript:@"Common"];
      v44 = v4;
      [v4 setObject:v5 forKeyedSubscript:@"DefaultSensorIDs"];
      v7 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters nrfVersion];
      if (v7)
      {
        v37 = v7;
        v38 = v1;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        obj = [v3 sensorConfigurationsByPortType];
        v8 = [obj countByEnumeratingWithState:&v60 objects:v59 count:16];
        if (v8)
        {
          v9 = v8;
          v40 = *v61;
          v10 = MEMORY[0x1E695E0F8];
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v61 != v40)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v60 + 1) + 8 * i);
              v13 = v3;
              v14 = [objc_msgSend(v3 "sensorConfigurationsByPortType")];
              v15 = [v14 sensorIDString];
              [v41 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", +[FigCaptureCameraParameters sensorIDFromSensorIDString:](FigCaptureCameraParameters, "sensorIDFromSensorIDString:", v15)), v12}];
              [v5 setObject:v15 forKeyedSubscript:v12];
              v16 = [objc_msgSend(v14 "sensorIDDictionary")];
              if (v16)
              {
                v17 = v16;
              }

              else
              {
                v17 = v10;
              }

              v18 = [objc_msgSend(v14 "sensorIDDictionary")];
              if (v18)
              {
                v19 = v18;
              }

              else
              {
                v19 = v10;
              }

              v56[1] = v19;
              v57 = v15;
              v55[0] = @"SoftISPTuning";
              v55[1] = @"ModuleConfig";
              v56[0] = v17;
              v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];
              [v44 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v58, &v57, 1), v12}];
              [v42 setObject:objc_msgSend(v14 forKeyedSubscript:{"cameraInfo"), v12}];
              v20 = v14;
              v3 = v13;
              [v43 setObject:objc_msgSend(v20 forKeyedSubscript:{"moduleCalibration"), v12}];
            }

            v9 = [obj countByEnumeratingWithState:&v60 objects:v59 count:16];
          }

          while (v9);
        }

        if (![v44 count])
        {
          v35 = 4294954516;
          v1 = v38;
          v2 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
          goto LABEL_44;
        }

        v21 = BWLoadProcessorBundle(@"NRF", v37);
        v1 = v38;
        v2 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
        if (v21)
        {
          v22 = objc_alloc_init([v21 classNamed:@"SoftISPProcessor"]);
          v38[8] = v22;
          if (v22)
          {
            v23 = BWAllStillImageResolutionFlavors();
            v24 = [-[BWSoftISPProcessorController _prepareDescriptorByPipelineTypeForResolutionFlavors:perFrameProcessing:](v38 v23];
            if ([v24 count])
            {
              OUTLINED_FUNCTION_5_34();
              if (objc_opt_respondsToSelector())
              {
                [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters deviceGeneration];
                [OUTLINED_FUNCTION_5_34() setDeviceGeneration:?];
              }

              [OUTLINED_FUNCTION_5_34() setCameraInfoByPortType:v42];
              [OUTLINED_FUNCTION_5_34() setModuleCalibrationByPortType:v43];
              [OUTLINED_FUNCTION_5_34() setTuningParameters:v44];
              [v3 metalCommandQueue];
              [OUTLINED_FUNCTION_5_34() setMetalCommandQueue:?];
              [OUTLINED_FUNCTION_5_34() setSupportedPipelineTypes:v24];
              [(BWSoftISPProcessorController *)v38 _lossyCompressionLevelByPipelineType];
              [OUTLINED_FUNCTION_5_34() setOutputCompressionLevelByPipeline:?];
              v25 = [OUTLINED_FUNCTION_5_34() setup];
              if (!v25)
              {
                v38[9] = [v41 copy];
                v51 = 0u;
                v52 = 0u;
                v53 = 0u;
                v54 = 0u;
                v26 = [v3 inputDimensionsByResolutionFlavorByPortType];
                v27 = [v26 countByEnumeratingWithState:&v51 objects:v50 count:16];
                if (v27)
                {
                  v28 = v27;
                  v29 = *v52;
                  do
                  {
                    for (j = 0; j != v28; ++j)
                    {
                      if (*v52 != v29)
                      {
                        objc_enumerationMutation(v26);
                      }

                      v31 = [objc_msgSend(v3 "inputDimensionsByResolutionFlavorByPortType")];
                      v46 = 0u;
                      v47 = 0u;
                      v48 = 0u;
                      v49 = 0u;
                      v32 = [v31 countByEnumeratingWithState:&v46 objects:v45 count:16];
                      if (v32)
                      {
                        v33 = v32;
                        v34 = *v47;
                        while (1)
                        {
                          if (*v47 != v34)
                          {
                            objc_enumerationMutation(v31);
                          }

                          if (!--v33)
                          {
                            v33 = [v31 countByEnumeratingWithState:&v46 objects:v45 count:16];
                            if (!v33)
                            {
                              break;
                            }
                          }
                        }
                      }
                    }

                    v28 = [v26 countByEnumeratingWithState:&v51 objects:v50 count:16];
                  }

                  while (v28);
                }

                return 0;
              }

              v35 = v25;
            }

            else
            {
              v35 = 4294954516;
            }

LABEL_44:

            *(v1 + v2[345]) = 0;
            return v35;
          }
        }
      }

      else
      {
        FigDebugAssert3();
      }

      v35 = 4294954510;
      goto LABEL_44;
    }
  }

  return 0;
}

- (uint64_t)_pipelineTypeForCaptureType:(uint64_t)a3 captureFlags:(int)a4 processingMode:(int)a5 gdcEnabled:(int)a6 isQuadra:
{
  if (result)
  {
    switch(a4)
    {
      case 0:
      case 7:
        v6 = 0;
        v7 = 1;
        switch(a2)
        {
          case 1:
            if (a5)
            {
              v6 = 19;
            }

            else
            {
              v6 = 16;
            }

            v7 = (a3 & 0x80) == 0;
            if ((a3 & 0x80) != 0)
            {
              v6 = 0;
            }

            goto LABEL_22;
          case 2:
          case 7:
          case 10:
            goto LABEL_4;
          case 11:
            if (a5)
            {
              v6 = 19;
            }

            else
            {
              v6 = 16;
            }

            if ((a3 & 0x800000000) != 0)
            {
              v6 = 26;
            }

            goto LABEL_21;
          case 12:
          case 13:
            if (a5)
            {
              goto LABEL_39;
            }

            v8 = a6 == 0;
            v6 = 20;
            v9 = 24;
            break;
          default:
            goto LABEL_22;
        }

        goto LABEL_19;
      case 1:
LABEL_4:
        v8 = a5 == 0;
        v6 = 16;
        v9 = 19;
LABEL_19:
        if (!v8)
        {
          v6 = v9;
        }

        goto LABEL_21;
      case 2:
        if (a5)
        {
          goto LABEL_39;
        }

        v7 = 1;
        v6 = 16;
        goto LABEL_22;
      case 3:
        if (a5)
        {
LABEL_39:
          result = 0;
        }

        else
        {
          v7 = 1;
          v6 = 21;
LABEL_22:
          v10 = v7 | a5;
          if (a6)
          {
            v11 = 24;
          }

          else
          {
            v11 = 20;
          }

          if (v10)
          {
            result = v6;
          }

          else
          {
            result = v11;
          }
        }

        break;
      case 4:
        result = 0;
        if (!a6 || (a5 & 1) != 0)
        {
          return result;
        }

        v7 = 1;
        v6 = 51;
        goto LABEL_22;
      case 5:
        result = 0;
        if (!a6 || (a5 & 1) != 0)
        {
          return result;
        }

        v7 = 1;
        v6 = 52;
        goto LABEL_22;
      case 6:
        v6 = 0;
        v7 = 0;
        goto LABEL_22;
      default:
        v6 = 0;
LABEL_21:
        v7 = 1;
        goto LABEL_22;
    }
  }

  return result;
}

- (void)input:(id)a3 addFrame:(opaqueCMSampleBuffer *)a4 resolutionFlavor:(int)a5
{
  if (a4 && (v6 = *&a5, v9 = [objc_msgSend(CMGetAttachment(a4 *off_1E798A3C8] == 1, v10 = objc_msgSend(objc_msgSend(a3, "captureStreamSettings"), "captureType"), v11 = objc_msgSend(objc_msgSend(a3, "captureStreamSettings"), "captureFlags"), v12 = objc_msgSend(a3, "processingMode"), v13 = -[BWSoftISPProcessorController _pipelineTypeForCaptureType:captureFlags:processingMode:gdcEnabled:isQuadra:](self, v10, v11, v12, objc_msgSend(a3, "gdcEnabled"), v9), v29 = objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v6), (v14 = objc_msgSend(-[BWSoftISPProcessorController _prepareDescriptorByPipelineTypeForResolutionFlavors:perFrameProcessing:](self, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v29, 1), 1), "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v13))) != 0))
  {
    v15 = v14;
    [v14 setSensorID:{objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_sensorIDByPortType, "objectForKeyedSubscript:", objc_msgSend(a3, "portType")), "unsignedIntValue")}];
    [v15 setInputPixelFormat:-[BWStillImageProcessorControllerConfiguration sensorRawPixelFormat](-[BWStillImageProcessorController configuration](self, "configuration"), "sensorRawPixelFormat")];
    if ([(BWStillImageProcessorControllerConfiguration *)[(BWStillImageProcessorController *)self configuration] cmiResourceEnabled])
    {
      v16 = [objc_msgSend(a3 "captureStreamSettings")] == 12 || objc_msgSend(objc_msgSend(a3, "captureStreamSettings"), "captureType") == 13;
    }

    else
    {
      v16 = 0;
    }

    [v15 setCmiResourceEnabled:v16];
    v17 = [(SoftISPProcessor *)self->_processor prepareToProcess:v13 prepareDescriptor:v15];
    if (v17)
    {
      v19 = v17;
      v28 = 0;
      v27 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_37_1();
      if (v12)
      {
        v21 = [(BWStillImageProcessorController *)self name];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%d)", v13];
        BWPhotoEncoderStringFromEncodingScheme(v6);
        *v24 = 136316419;
        *&v24[4] = "[BWSoftISPProcessorController input:addFrame:resolutionFlavor:]";
        *&v24[12] = 2113;
        *&v24[14] = v21;
        OUTLINED_FUNCTION_8_21();
        v25 = 1026;
        v26 = v19;
        LODWORD(v23) = 58;
        v22 = v24;
        OUTLINED_FUNCTION_10_16();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_12_18();
    }

    else
    {
      if (dword_1EB58E320)
      {
        v28 = 0;
        v27 = 0;
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest:v22] delegate];
      if (objc_opt_respondsToSelector())
      {
        [(BWStillImageProcessorControllerDelegate *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] delegate] processorController:self willAddSampleBuffer:a4 processorInput:a3];
      }

      v19 = [(BWSoftISPProcessorController *)&self->super.super.isa _addFrame:a4];
    }
  }

  else
  {
    v19 = 4294954516;
  }

  [(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest:v22] setErr:v19];
  [(BWStillImageProcessorController *)self currentRequestChanged];
}

- (id)_prepareDescriptorByPipelineTypeForResolutionFlavors:(char)a3 perFrameProcessing:
{
  if (result)
  {
    v4 = result;
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [v4 configuration];
    if ([a2 containsObject:&unk_1F22432E8])
    {
      v7 = [objc_msgSend(v4 "configuration")];
      v59 = v7 & 0xFFFFFFFF00000000;
      v56 = v7;
    }

    else
    {
      v59 = 0;
      v56 = 0;
    }

    if ([a2 containsObject:&unk_1F2243300])
    {
      v8 = BWDimensionsWithResolutionFlavor([v6 inputDimensionsByResolutionFlavorByPortType], 1);
      v9 = FigCaptureLargestDimensionsFromDimensionsArray(v8);
      v54 = v9 & 0xFFFFFFFF00000000;
      v10 = v9;
    }

    else
    {
      v54 = 0;
      v10 = 0;
    }

    if ([a2 containsObject:&unk_1F22432D0])
    {
      v11 = BWDimensionsWithResolutionFlavor([v6 inputDimensionsByResolutionFlavorByPortType], 3);
      v12 = FigCaptureLargestDimensionsFromDimensionsArray(v11);
      v55 = v12 & 0xFFFFFFFF00000000;
      v13 = v12;
    }

    else
    {
      v55 = 0;
      v13 = 0;
    }

    if ([a2 containsObject:&unk_1F2243318])
    {
      v14 = BWDimensionsWithResolutionFlavor([v6 inputDimensionsByResolutionFlavorByPortType], 4);
      v15 = FigCaptureLargestDimensionsFromDimensionsArray(v14);
      v16 = v15 & 0xFFFFFFFF00000000;
      v17 = v15;
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }

    v57 = v4;
    if ([a2 containsObject:&unk_1F2243330])
    {
      v18 = BWDimensionsWithResolutionFlavor([v6 inputDimensionsByResolutionFlavorByPortType], 6);
      v19 = FigCaptureLargestDimensionsFromDimensionsArray(v18);
      v20 = v19 & 0xFFFFFFFF00000000;
      v21 = v19;
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }

    v58 = v5;
    v22 = [a2 containsObject:&unk_1F2243348];
    v23 = v13;
    if (v22)
    {
      v24 = BWDimensionsWithResolutionFlavor([v6 inputDimensionsByResolutionFlavorByPortType], 2);
      v25 = FigCaptureLargestDimensionsFromDimensionsArray(v24);
      v52 = v25;
      v53 = v25 & 0xFFFFFFFF00000000;
    }

    else
    {
      v52 = 0;
      v53 = 0;
    }

    v26 = [MEMORY[0x1E695DF70] array];
    v27 = [MEMORY[0x1E695DF70] array];
    v28 = v56 | v59;
    v29 = v56 < 1 || SHIDWORD(v59) < 1;
    v60 = v56 | v59;
    if (!v29)
    {
      FigCaptureDictionaryRepresentationForDimensions(v60);
      [OUTLINED_FUNCTION_4() addObject:?];
      v30 = FigCaptureDictionaryRepresentationForDimensions(v60);
      OUTLINED_FUNCTION_15_10(v30);
      v28 = v60;
    }

    if (v28 != (v10 | v54) && v10 >= 1 && SHIDWORD(v54) >= 1)
    {
      FigCaptureDictionaryRepresentationForDimensions(v10 | v54);
      [OUTLINED_FUNCTION_4() addObject:?];
      v33 = FigCaptureDictionaryRepresentationForDimensions(v10 | v54);
      OUTLINED_FUNCTION_15_10(v33);
    }

    if (v23 >= 1 && SHIDWORD(v55) >= 1)
    {
      FigCaptureDictionaryRepresentationForDimensions(v23 | v55);
      [OUTLINED_FUNCTION_4() addObject:?];
      v35 = FigCaptureDictionaryRepresentationForDimensions(v23 | v55);
      OUTLINED_FUNCTION_15_10(v35);
    }

    if (v17 >= 1 && SHIDWORD(v16) >= 1)
    {
      FigCaptureDictionaryRepresentationForDimensions(v16 | v17);
      [OUTLINED_FUNCTION_4() addObject:?];
      v37 = FigCaptureDictionaryRepresentationForDimensions(v16 | v17);
      OUTLINED_FUNCTION_15_10(v37);
    }

    if (v21 >= 1 && SHIDWORD(v20) >= 1)
    {
      FigCaptureDictionaryRepresentationForDimensions(v20 | v21);
      [OUTLINED_FUNCTION_4() addObject:?];
      v39 = FigCaptureDictionaryRepresentationForDimensions(v20 | v21);
      OUTLINED_FUNCTION_15_10(v39);
    }

    if (v52 >= 1 && SHIDWORD(v53) >= 1)
    {
      FigCaptureDictionaryRepresentationForDimensions(v53 | v52);
      [OUTLINED_FUNCTION_4() addObject:?];
    }

    if ([v6 standardYUVProcessingEnabled])
    {
      v49 = FigCaptureLargestDimensionsFromDimensionsArray(v27);
      [v58 setObject:-[BWSoftISPProcessorController _prepareDescriptorWithDimensions:](v57 forKeyedSubscript:{v49), &unk_1F2243360}];
      if ([v6 gdcEnabled])
      {
        [v58 setObject:-[BWSoftISPProcessorController _prepareDescriptorWithDimensions:](v57 forKeyedSubscript:{v49), &unk_1F2243378}];
      }
    }

    if ([v6 rawNightModeEnabled])
    {
      v50 = FigCaptureLargestDimensionsFromDimensionsArray(v27);
      [v58 setObject:-[BWSoftISPProcessorController _prepareDescriptorWithDimensions:](v57 forKeyedSubscript:{v50), &unk_1F2243390}];
    }

    if (([v6 deepFusionEnabled] & 1) != 0 || (objc_msgSend(v6, "learnedFusionEnabled") & 1) != 0 || objc_msgSend(v6, "learnedNREnabled"))
    {
      v45 = FigCaptureLargestDimensionsFromDimensionsArray(v27);
      [v58 setObject:-[BWSoftISPProcessorController _prepareDescriptorWithDimensions:](v57 forKeyedSubscript:{v45), &unk_1F22433A8}];
      if ([v6 quadraProcessingEnabled])
      {
        v46 = [objc_msgSend(objc_msgSend(v57 "configuration")];
        v47 = v27;
        if (v46)
        {
          if ([v6 qBinProcessingMode])
          {
            v47 = v27;
          }

          else
          {
            v47 = v26;
          }
        }

        v48 = FigCaptureLargestDimensionsFromDimensionsArray(v47);
        [v58 setObject:-[BWSoftISPProcessorController _prepareDescriptorWithDimensions:](v57 forKeyedSubscript:{v48), &unk_1F22433C0}];
      }
    }

    if ([v6 qBinProcessingMode])
    {
      v41 = FigCaptureLargestDimensionsFromDimensionsArray(v27);
      v42 = (v41 << a3);
      v43 = (HIDWORD(v41) << a3);
      if ([v6 qBinProcessingMode])
      {
        [v58 setObject:-[BWSoftISPProcessorController _prepareDescriptorWithDimensions:](v57 forKeyedSubscript:{v42 | (v43 << 32)), &unk_1F22433D8}];
      }

      if (([v6 qBinProcessingMode] & 2) != 0)
      {
        [v58 setObject:-[BWSoftISPProcessorController _prepareDescriptorWithDimensions:](v57 forKeyedSubscript:{v42 | (v43 << 32)), &unk_1F22433F0}];
      }
    }

    if ([v6 linearRGBForDisparityEnabled])
    {
      [v58 setObject:-[BWSoftISPProcessorController _prepareDescriptorWithDimensions:](v57 forKeyedSubscript:{v60), &unk_1F2243408}];
    }

    v44 = [v58 copy];

    return v44;
  }

  return result;
}

- (uint64_t)_addFrame:(id *)a1
{
  if (!a1)
  {
    return 0;
  }

  v8 = [a1 currentRequest];
  v9 = [objc_msgSend(objc_msgSend(v8 "input")];
  v10 = [objc_msgSend(objc_msgSend(v8 "input")];
  BWStillImageCaptureFrameFlagsForSampleBuffer(a2);
  v11 = [objc_msgSend(v8 "input")];
  v109 = v8;
  v12 = [objc_msgSend(objc_msgSend(v8 "input")];
  v13 = OUTLINED_FUNCTION_0_37();
  v19 = [(BWSoftISPProcessorController *)v13 _tuningTypeForFrame:v14 processingMode:v15 captureType:v16 captureFlags:v17 captureFrameFlags:v18 deliverDeferredPhotoProxyImage:v12];
  v20 = OUTLINED_FUNCTION_1_43();
  v95 = [(BWSoftISPProcessorController *)v20 _rnfEnabledForFrame:v21 processingMode:v22 captureFlags:v10];
  v23 = OUTLINED_FUNCTION_0_37();
  v29 = [(BWSoftISPProcessorController *)v23 _hrEnabledForFrame:v24 processingMode:v25 captureType:v26 captureFlags:v27 captureFrameFlags:v28 deliverDeferredPhotoProxyImage:v12];
  if (v29)
  {
    v97 = 0;
  }

  else
  {
    v30 = OUTLINED_FUNCTION_0_37();
    v97 = [(BWSoftISPProcessorController *)v30 _sfhrEnabledForFrame:v31 processingMode:v32 captureType:v33 captureFlags:v34 captureFrameFlags:v35 tuningType:v19];
  }

  v36 = (v10 >> 15) & 1;
  v37 = OUTLINED_FUNCTION_1_43();
  v96 = [(BWSoftISPProcessorController *)v37 _rawMBNREnabledForFrame:v38 processingMode:v39 captureType:v40 captureFlags:v10 tuningType:v19];
  v41 = OUTLINED_FUNCTION_0_37();
  v99 = [(BWSoftISPProcessorController *)v41 _awbModeForFrame:v42 processingMode:v43 captureType:v44 captureFlags:v45 captureFrameFlags:v46];
  v98 = -[BWSoftISPProcessorController _awbPurgeResourcesForFrameCount:captureFlags:](a1, [objc_msgSend(objc_msgSend(objc_msgSend(v109 "input")], v10);
  v47 = OUTLINED_FUNCTION_1_43();
  [(BWSoftISPProcessorController *)v47 _awbRegionOfInterestWithinSensorCropRectForFrame:v48 processingMode:v49 captureFlags:v10];
  v50 = OUTLINED_FUNCTION_0_37();
  v100 = [(BWSoftISPProcessorController *)v50 _ltmModeForFrame:v51 processingMode:v52 captureType:v53 captureFlags:v54 captureFrameFlags:v55 deliverDeferredPhotoProxyImage:v12];
  v56 = OUTLINED_FUNCTION_1_43();
  v59 = [BWSoftISPProcessorController _faceDetectionEnabledForFrame:v56 processingMode:v57 captureType:v58 captureFlags:v9];
  v61 = v9 == 11 && v11 != 1;
  v101 = v59;
  v102 = v61;
  v62 = OUTLINED_FUNCTION_1_43();
  v103 = [(BWSoftISPProcessorController *)v62 _gnuEnabledForFrame:v63 processingMode:v64 captureFlags:v10 tuningType:v19];
  v65 = OUTLINED_FUNCTION_2_42();
  v104 = [(BWSoftISPProcessorController *)v65 _opcEnabledForFrame:v66 processingMode:v67 captureFlags:v68 tuningType:v19];
  v70 = [(BWSoftISPProcessorController *)a1 _allowUnclampedOutputsForFrame:v69 processingMode:v11];
  v71 = OUTLINED_FUNCTION_2_42();
  [(BWSoftISPProcessorController *)v71 _inputBufferRectWithinSensorCropRectForFrame:v72];
  OUTLINED_FUNCTION_26_2();
  v73 = OUTLINED_FUNCTION_2_42();
  [(BWSoftISPProcessorController *)v73 _outputBufferRectWithinSensorCropRectForFrame:v74];
  v107 = v76;
  v108 = v75;
  v105 = v78;
  v106 = v77;
  v79 = OUTLINED_FUNCTION_2_42();
  v81 = [(BWSoftISPProcessorController *)v79 _auxiliaryTypesForFrame:v80 captureType:v9 captureFlags:v10 deliverDeferredPhotoProxyImage:v12];
  v82 = [MEMORY[0x1E695DF90] dictionary];
  [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", 1), @"PDC"}];
  [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v36), @"CAR"}];
  [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v95), @"RNF"}];
  [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v29), @"HR"}];
  [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v70), @"AllowUnclampedOutputs"}];
  [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v97 & (v70 ^ 1)), @"SFHR"}];
  [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v96), @"RawMBNR"}];
  [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v11 == 2), @"Aux"}];
  [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v99), @"AWBMode"}];
  [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v98), @"AWBPurgeResources"}];
  v110.origin.x = OUTLINED_FUNCTION_3();
  if (!CGRectIsNull(v110))
  {
    v111.origin.x = OUTLINED_FUNCTION_3();
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v111);
    [v82 setObject:CFAutorelease(DictionaryRepresentation) forKeyedSubscript:@"AWBRegionOfInterestRectWithinSensorCropRect"];
  }

  [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v100), @"LTMMode"}];
  v84 = MEMORY[0x1E696AD98];
  v85 = [objc_msgSend(a1 "configuration")];
  if (v100)
  {
    v86 = v85;
  }

  else
  {
    v86 = 0;
  }

  [v82 setObject:objc_msgSend(v84 forKeyedSubscript:{"numberWithInt:", v86), @"LTMHDRCurves"}];
  [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v101), @"VSN"}];
  [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v102), @"SSC"}];
  [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v103), @"GNU"}];
  [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v104), @"OPC"}];
  [v82 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v19), @"TuningType"}];
  v112.origin.x = v2;
  v112.origin.y = v3;
  v112.size.width = v4;
  v112.size.height = v5;
  v87 = CGRectCreateDictionaryRepresentation(v112);
  [v82 setObject:CFAutorelease(v87) forKeyedSubscript:@"InputBufferRectWithinSensorCropRect"];
  v113.origin.y = v107;
  v113.origin.x = v108;
  v113.size.height = v105;
  v113.size.width = v106;
  v88 = CGRectCreateDictionaryRepresentation(v113);
  [v82 setObject:CFAutorelease(v88) forKeyedSubscript:@"OutputBufferRectWithinSensorCropRect"];
  [v82 setObject:v81 forKeyedSubscript:@"SoftISPAuxiliaryType"];
  v89 = [a1[8] addFrame:a2 uniqueID:objc_msgSend(v109 processingOptions:{"uniqueID"), v82}];
  if (!v89)
  {
    if (dword_1EB58E320)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  v91 = v89;
  v93 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT);
  OUTLINED_FUNCTION_37_1();
  if (v36)
  {
    [a1 name];
    v94 = OUTLINED_FUNCTION_18_0();
    BWStillImageSampleBufferToShortDisplayString(v94);
    [v109 uniqueID];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v11];
    BWSoftISPProcessorOptionsToShortString(v82);
    OUTLINED_FUNCTION_6_27();
    OUTLINED_FUNCTION_19_10();
    OUTLINED_FUNCTION_10_16();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_12_18();
  return v91;
}

- (uint64_t)_tuningTypeForFrame:(int)a3 processingMode:(int)a4 captureType:(uint64_t)a5 captureFlags:(char)a6 captureFrameFlags:(int)a7 deliverDeferredPhotoProxyImage:
{
  if (result)
  {
    v12 = result;
    v13 = OUTLINED_FUNCTION_4_12(a2, *off_1E798A3C8);
    v14 = [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
    if (v14 == 1)
    {
      [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
      v16 = v15 > 1.0;
    }

    else
    {
      v16 = 0;
    }

    switch(a3)
    {
      case 0:
      case 5:
      case 7:
        if ((a5 & 0x80) != 0)
        {
          goto LABEL_17;
        }

        goto LABEL_7;
      case 1:
      case 2:
      case 3:
        if (v16)
        {
          return 100;
        }

        else
        {
          return 1;
        }

      case 4:
        if ((a5 & 0x200000000) != 0)
        {
          v18 = 142;
        }

        else
        {
          v18 = 22;
        }

        if ((a6 & 8) == 0)
        {
          v18 = 0;
        }

        if ((a5 & 0x200000000) != 0)
        {
          v21 = 141;
        }

        else
        {
          v21 = 21;
        }

        if ((a6 & 4) != 0)
        {
          v18 = v21;
        }

        if ((a5 & 0x200000000) != 0)
        {
          v20 = 140;
        }

        else
        {
          v20 = 20;
        }

LABEL_70:
        v19 = (a6 & 2) == 0;
        goto LABEL_71;
      case 6:
LABEL_17:
        if (v16)
        {
          v18 = 100;
        }

        else
        {
          v18 = 1;
        }

        v19 = (a5 & 0x100000000) == 0;
        v20 = 190;
        goto LABEL_71;
      default:
LABEL_7:
        result = 0;
        switch(a4)
        {
          case 1:
          case 7:
            if (v16)
            {
              v17 = 100;
            }

            else
            {
              v17 = 1;
            }

            if ((a5 & 0x100000000) != 0)
            {
              return 100;
            }

            else
            {
              return v17;
            }

          case 2:
            if ([objc_msgSend(objc_msgSend(objc_msgSend(v12 "currentRequest")] && objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v12, "currentRequest"), "input"), "stillImageSettings"), "requestedSettings"), "constantColorEnabled"))
            {
              if (v16)
              {
                return 172;
              }

              else
              {
                return 171;
              }
            }

            v20 = 180;
            if (v16)
            {
              v18 = 180;
            }

            else
            {
              v18 = 170;
            }

            v19 = (a5 & 0x100000000) == 0;
            break;
          case 10:
            if (v16)
            {
              v18 = 103;
            }

            else
            {
              v18 = 4;
            }

            if ((a6 & 8) == 0)
            {
              v18 = 0;
            }

            if (v16)
            {
              v25 = 102;
            }

            else
            {
              v25 = 3;
            }

            if ((a6 & 4) != 0)
            {
              v18 = v25;
            }

            v23 = !v16;
            v20 = 2;
            v24 = 101;
            goto LABEL_68;
          case 11:
            if (v16)
            {
              v18 = 110;
            }

            else
            {
              v18 = 10;
            }

            if (v16)
            {
              v20 = 160;
            }

            else
            {
              v20 = 150;
            }

            v19 = (a5 & 0x800000000) == 0;
            break;
          case 12:
            if ((a5 & 0x200000000) != 0)
            {
              if (v14 == 1)
              {
                return 143;
              }

              if ((a6 & 2) != 0)
              {
                return 140;
              }

              if ((a6 & 4) != 0)
              {
                return 141;
              }

              if ((a6 & 8) != 0)
              {
                return 142;
              }

              return 0;
            }

            if ((a6 & 2) != 0)
            {
              if (v16)
              {
                v18 = 120;
              }

              else
              {
                v18 = 20;
              }

              v19 = (a5 & 0x100000000) == 0;
              v20 = 130;
            }

            else if ((a6 & 4) != 0)
            {
              if (v16)
              {
                v18 = 121;
              }

              else
              {
                v18 = 21;
              }

              v19 = (a5 & 0x100000000) == 0;
              v20 = 131;
            }

            else
            {
              if ((a6 & 8) == 0)
              {
                return 0;
              }

              if (v16)
              {
                v18 = 122;
              }

              else
              {
                v18 = 22;
              }

              v19 = (a5 & 0x100000000) == 0;
              v20 = 132;
            }

            break;
          case 13:
            if (!v16)
            {
              return 0;
            }

            if ((a6 & 8) != 0)
            {
              v18 = 212;
            }

            else
            {
              v18 = 0;
            }

            if (a7)
            {
              v22 = 214;
            }

            else
            {
              v22 = 211;
            }

            if ((a6 & 4) != 0)
            {
              v18 = v22;
            }

            v23 = a7 == 0;
            v20 = 210;
            v24 = 213;
LABEL_68:
            if (!v23)
            {
              v20 = v24;
            }

            goto LABEL_70;
          default:
            return result;
        }

LABEL_71:
        if (v19)
        {
          result = v18;
        }

        else
        {
          result = v20;
        }

        break;
    }
  }

  return result;
}

- (BOOL)_rnfEnabledForFrame:(int)a3 processingMode:(char)a4 captureFlags:
{
  if (result)
  {
    v6 = [objc_msgSend(OUTLINED_FUNCTION_4_12(a2 *off_1E798A3C8)];
    result = v6 != 1;
    if (a3 != 7)
    {
      if (a3 == 6)
      {
        return 0;
      }

      if (a3)
      {
        return result;
      }
    }

    return (a4 & 0x80) == 0 && v6 != 1;
  }

  return result;
}

- (uint64_t)_hrEnabledForFrame:(unsigned int)a3 processingMode:(int)a4 captureType:(uint64_t)a5 captureFlags:(char)a6 captureFrameFlags:(int)a7 deliverDeferredPhotoProxyImage:
{
  if (result)
  {
    v12 = OUTLINED_FUNCTION_22_6(result, *off_1E798A3C8);
    v13 = [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B5E8), "BOOLValue"}];
    if (v13)
    {
      return 0;
    }

    else
    {
      v14 = OUTLINED_FUNCTION_22_6(v13, *off_1E798A458);
      v15 = OUTLINED_FUNCTION_22_6(v14, *off_1E798A3C0);
      v16 = OUTLINED_FUNCTION_22_6(v15, *off_1E798A470);
      if (v14 || (v17 = v16, result = 0, v15) && v17)
      {
        result = 0;
        if (a3 <= 7)
        {
          if (((1 << a3) & 0xE2) != 0)
          {
            return 1;
          }

          else if (((1 << a3) & 0x11) != 0)
          {
            v18 = [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
            v20 = (a5 & 0x200000000) == 0 || v18 != 1;
            result = 1;
            if (a5 & 0x100000 | a6 & 8 && v20)
            {
              if ((a6 & 8) != 0)
              {
                return 0;
              }

              else
              {
                return (a4 == 13) & ~a7;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

- (uint64_t)_sfhrEnabledForFrame:(unsigned int)a3 processingMode:(int)a4 captureType:(uint64_t)a5 captureFlags:(char)a6 captureFrameFlags:(uint64_t)a7 tuningType:
{
  if (!a1)
  {
    goto LABEL_28;
  }

  v13 = CMGetAttachment(target, *off_1E798A3C8, 0);
  v14 = [objc_msgSend(a1 "configuration")];
  v15 = [objc_msgSend(a1 "configuration")];
  LOBYTE(v16) = 0;
  if ((a5 & 0x1000000) != 0)
  {
    return v16 & 1;
  }

  v17 = v15;
  if (((v14 | v15) & 1) == 0)
  {
    return v16 & 1;
  }

  v18 = [*(a1 + 64) tuningFlagForProcessingOption:@"SFHR" tuningType:a7 metadata:v13];
  if (!v18)
  {
    if ((a5 & 0x60000100000) == 0)
    {
      LOBYTE(v16) = 0;
      if (a3 > 7 || ((1 << a3) & 0xF3) == 0)
      {
        return v16 & 1;
      }

      if ((a6 & 8) != 0 || ((v14 & (a5 >> 3) | v17) & 1) == 0)
      {
        LOBYTE(v16) = 0;
      }

      else
      {
        LOBYTE(v16) = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(a1 "currentRequest")] ^ 1;
      }

      goto LABEL_6;
    }

    if ((a6 & 4) != 0)
    {
      LOBYTE(v16) = 0;
      if (a3 <= 7 && ((1 << a3) & 0xD1) != 0)
      {
        if ((a4 & 0xFFFFFFFE) == 0xC)
        {
          v19 = v14;
        }

        else
        {
          v19 = 0;
        }

        if (v19)
        {
          LOBYTE(v16) = 1;
          return v16 & 1;
        }

        v16 = ((a4 == 10) | (a5 >> 7)) & v14;
      }

      goto LABEL_6;
    }

LABEL_28:
    LOBYTE(v16) = 0;
    return v16 & 1;
  }

  LOBYTE(v16) = v18 == 1;
LABEL_6:
  if (!a3 && a4 == 11)
  {
    if ([objc_msgSend(objc_msgSend(objc_msgSend(a1 "currentRequest")])
    {
      *(a1 + 172) = v16;
    }

    else
    {
      LOBYTE(v16) = *(a1 + 172);
    }
  }

  return v16 & 1;
}

- (uint64_t)_rawMBNREnabledForFrame:(int)a3 processingMode:(uint64_t)a4 captureType:(uint64_t)a5 captureFlags:(uint64_t)a6 tuningType:
{
  if (result)
  {
    v9 = result;
    v10 = OUTLINED_FUNCTION_4_12(a2, *off_1E798A3C8);
    v11 = [objc_msgSend(v10 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
    result = [*(v9 + 64) tuningFlagForProcessingOption:@"RawMBNR" tuningType:a6 metadata:v10];
    if (result != 1)
    {
      if (result == 2)
      {
        return 0;
      }

      if ((a3 - 1) >= 5)
      {
        if (a3 != 7 && a3 || (a5 & 0x80) != 0)
        {
          return 0;
        }

        return (a5 & 0x200000000) == 0 || v11 != 1;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

- (uint64_t)_awbModeForFrame:(int)a3 processingMode:(int)a4 captureType:(unint64_t)a5 captureFlags:(unint64_t)a6 captureFrameFlags:
{
  if (result)
  {
    v11 = result;
    v12 = OUTLINED_FUNCTION_47_1();
    v15 = CMGetAttachment(v12, v13, v14);
    v16 = [objc_msgSend(v15 objectForKeyedSubscript:{*off_1E798B118), "BOOLValue"}];
    if (a4 != 11 && (v16 & 1) != 0)
    {
      return 0;
    }

    else
    {
      result = 0;
      switch(a3)
      {
        case 0:
        case 4:
        case 7:
          if (a4 == 11)
          {
            if ([objc_msgSend(objc_msgSend(objc_msgSend(v11 "currentRequest")])
            {
              if ((a5 & 0x800000000) != 0)
              {
                result = 3;
              }

              else
              {
                result = 2;
              }
            }

            else
            {
              [v15 addEntriesFromDictionary:v11[18]];
              result = BWIsLastAdaptiveBracketingFrame(a2);
              if (result)
              {

                result = 0;
                v11[18] = 0;
              }
            }
          }

          else if (a4 == 2)
          {
            result = [objc_msgSend(v15 objectForKeyedSubscript:{*off_1E798B150), "BOOLValue"}] ^ 1;
          }

          else
          {
            v17 = (a6 >> 4) & 1;
            if (a4 == 1)
            {
              LODWORD(v17) = 1;
            }

            if ((a5 & 0x8000000000) != 0)
            {
              result = v17;
            }

            else
            {
              result = 0;
            }
          }

          break;
        case 1:
        case 5:
          result = (a5 >> 39) & 1;
          break;
        case 2:
          result = 1;
          break;
        case 6:
          if ((a5 & 0x4000000000) == 0)
          {
            return 0;
          }

          result = FigCapturePlatformIdentifier() < 12;
          break;
        default:
          return result;
      }
    }
  }

  return result;
}

- (uint64_t)_awbPurgeResourcesForFrameCount:(unint64_t)a3 captureFlags:
{
  if (result)
  {
    v5 = result;
    if ([objc_msgSend(result "configuration")])
    {
      return 0;
    }

    v6 = BWStillImageAutoWhiteBalanceReflowMaximumFrameCount();
    if (v6 < 1)
    {
      return 0;
    }

    *(v5 + 136) |= (a3 >> 39) & (v6 > a2);
    if (*(v5 + 136) != 1 || v6 > a2)
    {
      return 0;
    }

    else
    {
      *(v5 + 136) = 0;
      return 1;
    }
  }

  return result;
}

- (double)_awbRegionOfInterestWithinSensorCropRectForFrame:(int)a3 processingMode:(unint64_t)a4 captureFlags:
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_21_9();
  }

  v8 = MEMORY[0x1E695F050];
  v14 = *MEMORY[0x1E695F050];
  *v15 = *MEMORY[0x1E695F050];
  *&v15[16] = *(MEMORY[0x1E695F050] + 16);
  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  CVPixelBufferGetWidth(ImageBuffer);
  CVPixelBufferGetHeight(ImageBuffer);
  v10 = CMGetAttachment(sbuf, *off_1E798A3C8, 0);
  if (a3 == 6 && (a4 & 0x4000000000) != 0)
  {
    [objc_msgSend(objc_msgSend(a1 "currentRequest")];
    if (([a4 isEqualToString:{objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_18_0(), "captureSettings"), "masterPortType")}] & 1) == 0)
    {
      FigCFDictionaryGetCGRectIfPresent();
    }
  }

  if (CGRectIsNull(*v15))
  {
    return *v8;
  }

  v11 = *off_1E798B588;
  if ([v10 objectForKeyedSubscript:*off_1E798B588])
  {
    v12 = [objc_msgSend(v10 objectForKeyedSubscript:{v11), "intValue"}];
  }

  else
  {
    v12 = 1.0;
  }

  FigCFDictionaryGetCGRectIfPresent();
  return v12 * (*&v14 + *v15);
}

- (uint64_t)_ltmModeForFrame:(unsigned int)a3 processingMode:(int)a4 captureType:(unint64_t)a5 captureFlags:(unsigned int)a6 captureFrameFlags:(char)a7 deliverDeferredPhotoProxyImage:
{
  if (result)
  {
    v13 = result;
    v14 = OUTLINED_FUNCTION_47_1();
    v17 = CMGetAttachment(v14, v15, v16);
    v18 = [objc_msgSend(v17 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
    result = 1;
    if (a3 <= 7)
    {
      if (((1 << a3) & 0x91) != 0)
      {
        switch(a4)
        {
          case 2:
            if ([objc_msgSend(v17 objectForKeyedSubscript:{*off_1E798B150), "BOOLValue"}])
            {
              result = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v13 "currentRequest")];
              if (result)
              {
                result = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v13 "currentRequest")];
              }
            }

            else
            {
              result = 1;
            }

            break;
          case 10:
          case 13:
            result = (a6 & 0x14) != 0;
            break;
          case 11:
            if (([objc_msgSend(objc_msgSend(objc_msgSend(v13 "currentRequest")] & 0x80000000) != 0)
            {
              if (([objc_msgSend(objc_msgSend(objc_msgSend(v13 "currentRequest")] & 1) == 0)
              {
                [objc_msgSend(v17 objectForKeyedSubscript:{*off_1E798B2A8), "doubleValue"}];
                FigCaptureComputeImageGainFromMetadata();
              }

              result = 2;
            }

            else
            {
              result = (a6 >> 3) & 2;
            }

            break;
          case 12:
            if ((a6 & 0x14) != 0)
            {
              v19 = [v13[8] deviceGeneration] < 200;
              result = v19;
              if (!v19 && (a7 & 1) == 0)
              {
                result = [objc_msgSend(v13 "configuration")] ^ 1;
              }
            }

            else
            {
              result = (a5 >> 33) & (v18 == 1);
            }

            break;
          default:
            return result;
        }
      }

      else
      {
        return ((1 << a3) & 0xC) == 0;
      }
    }
  }

  return result;
}

- (BOOL)_faceDetectionEnabledForFrame:(_BOOL8)result processingMode:(const void *)a2 captureType:(int)a3 captureFlags:(int)a4
{
  if (result)
  {
    v6 = result;
    v7 = OUTLINED_FUNCTION_4_12(a2, *off_1E798A3C8);
    result = 0;
    if (!a3 && a4 == 11)
    {
      if (([objc_msgSend(objc_msgSend(objc_msgSend(v6 "currentRequest")] & 0x80000000) != 0)
      {
        v8 = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798A538), "intValue"}];
        v9 = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B1B8), "intValue"}];
        return v8 == 1 && v9 < 7;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (BOOL)_gnuEnabledForFrame:(unsigned int)a3 processingMode:(uint64_t)a4 captureFlags:(uint64_t)a5 tuningType:
{
  if (!a1)
  {
    return 0;
  }

  v9 = OUTLINED_FUNCTION_4_12(a2, *off_1E798A3C8);
  v10 = [objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
  v11 = v10 != 1;
  v12 = [*(a1 + 64) tuningFlagForProcessingOption:@"GNU" tuningType:a5 metadata:v9];
  if (v12)
  {
    return v12 == 1;
  }

  if (a3 > 7)
  {
    return 0;
  }

  if (((1 << a3) & 0x2E) == 0)
  {
    if (((1 << a3) & 0x81) != 0)
    {
      return (a4 & 0x800000080) == 0 && v10 != 1;
    }

    else
    {
      return a3 == 4;
    }
  }

  return v11;
}

- (BOOL)_opcEnabledForFrame:(uint64_t)a3 processingMode:(uint64_t)a4 captureFlags:(uint64_t)a5 tuningType:
{
  if (result)
  {
    return [*(result + 64) tuningFlagForProcessingOption:@"OPC" tuningType:a5 metadata:{OUTLINED_FUNCTION_4_12(a2, *off_1E798A3C8)}] == 1;
  }

  return result;
}

- (void)_allowUnclampedOutputsForFrame:(int)a3 processingMode:
{
  if (result)
  {
    LODWORD(result) = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(result "currentRequest")];
    if (a3 == 2)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return result;
}

- (double)_inputBufferRectWithinSensorCropRectForFrame:(uint64_t)a1
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_21_9();
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  CVPixelBufferGetWidth(ImageBuffer);
  CVPixelBufferGetHeight(ImageBuffer);
  v3 = OUTLINED_FUNCTION_47_1();
  v6 = CMGetAttachment(v3, v4, v5);
  v7 = *off_1E798B588;
  if ([v6 objectForKeyedSubscript:*off_1E798B588])
  {
    v8 = [objc_msgSend(v6 objectForKeyedSubscript:{v7), "intValue"}];
  }

  else
  {
    v8 = 1;
  }

  SensorReadoutRect = FigCaptureMetadataUtilitiesGetSensorReadoutRect();
  FigCaptureMetadataUtilitiesGetValidBufferRect();
  v11 = *MEMORY[0x1E695F058];
  FigCFDictionaryGetCGRectIfPresent();
  return (SensorReadoutRect + *&v11) * v8;
}

- (void)_outputBufferRectWithinSensorCropRectForFrame:(void *)a1
{
  if (!a1)
  {
    goto LABEL_60;
  }

  v4 = [a1 currentRequest];
  v5 = [objc_msgSend(v4 "input")];
  v6 = [objc_msgSend(v4 "input")];
  v7 = CMGetAttachment(a2, *off_1E798A3C8, 0);
  v8 = *off_1E798B588;
  v107 = v7;
  if ([v7 objectForKeyedSubscript:*off_1E798B588])
  {
    v9 = [objc_msgSend(v7 objectForKeyedSubscript:{v8), "intValue"}];
  }

  else
  {
    v9 = 1;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  LODWORD(v11) = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(ImageBuffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
  HasRegroupedLayoutDownscale = FigCapturePixelFormatHasRegroupedLayoutDownscale(PixelFormatType);
  v15 = (Height << HasRegroupedLayoutDownscale);
  v16 = (v11 << HasRegroupedLayoutDownscale);
  v17 = [objc_msgSend(a1 "configuration")];
  var0 = v17;
  v19 = HIDWORD(v17);
  v110 = a1;
  if (v9 == 1)
  {
    v11 = FigCaptureDimensionsFromDictionaryRepresentation([objc_msgSend(objc_msgSend(objc_msgSend(a1 "configuration")]);
    v20 = FigCaptureDimensionsFromDictionaryRepresentation([objc_msgSend(objc_msgSend(a1 "configuration")]);
    v21 = v16 | (v15 << 32);
    if (v21 == v11)
    {
      v19 = HIDWORD(v20);
    }

    else
    {
      v19 = v19;
    }

    if (v21 == v11)
    {
      var0 = v20;
    }

    v22 = v19;
    if (v6 <= 6)
    {
      v23 = v4;
      if (((1 << v6) & 0x5A) != 0)
      {
        v11 = [objc_msgSend(v110 "configuration")];
        v24 = FigCaptureDimensionsFromDictionaryRepresentation([v11 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v6)}]);
        if ([objc_msgSend(objc_msgSend(v4 "input")])
        {
          v25 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters softISPCropDimensionsForOptimizedLearnedFusionForSuperwide];
          v22 = HIDWORD(*&v25);
          var0 = v25.var0;
        }

        else
        {
          v26 = v24 > 0;
          v27 = SHIDWORD(v24) > 0;
          if (v26 && v27)
          {
            v22 = HIDWORD(v24);
          }

          else
          {
            v22 = v22;
          }

          if (v26 && v27)
          {
            var0 = v24;
          }
        }
      }

      goto LABEL_22;
    }
  }

  else
  {
    v21 = v16 | (v15 << 32);
    v22 = HIDWORD(v17);
  }

  v23 = v4;
LABEL_22:
  SensorReadoutRect = FigCaptureMetadataUtilitiesGetSensorReadoutRect();
  v109 = v28;
  ValidBufferRect = FigCaptureMetadataUtilitiesGetValidBufferRect();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect();
  FigCaptureMetadataUtilitiesDenormalizeCropRect(FinalCropRect, v37, v38, v39);
  FigCaptureMetadataUtilitiesRoundRectToEvenCoordinates();
  v41 = v40;
  v102 = v43;
  v103 = v42;
  v101 = v44;
  rect1 = FigCaptureMetadataUtilitiesGetMinimumValidBufferRectForGDC();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v111 = *MEMORY[0x1E695F058];
  FigCFDictionaryGetCGRectIfPresent();
  v98 = ValidBufferRect;
  v99 = v33;
  v97 = v35;
  r2 = v31;
  v100 = v41;
  if ([objc_msgSend(objc_msgSend(v23 "input")])
  {
    if ([objc_msgSend(v23 "input")])
    {
      [objc_msgSend(v23 "input")];
      v51 = v35;
      v52 = v33;
      v53 = r2;
    }

    else
    {
      CenteredRectWithDimensionsInsideDimensions = FigCaptureMakeCenteredRectWithDimensionsInsideDimensions(var0 | (v22 << 32), v21);
      v66 = v65;
      v95 = v68;
      v96 = v67;
      v114.origin.x = rect1;
      v114.origin.y = v46;
      v114.size.width = v48;
      v114.size.height = v50;
      IsNull = CGRectIsNull(v114);
      v94 = v48;
      if (IsNull)
      {
        v70 = v101;
      }

      else
      {
        v70 = v50;
      }

      if (IsNull)
      {
        v71 = v102;
      }

      else
      {
        v71 = v48;
      }

      if (IsNull)
      {
        v72 = v103;
      }

      else
      {
        v72 = v46;
      }

      if (IsNull)
      {
        v73 = v41;
      }

      else
      {
        v73 = rect1;
      }

      v93 = CenteredRectWithDimensionsInsideDimensions;
      v122.origin.x = CenteredRectWithDimensionsInsideDimensions;
      v122.origin.y = v66;
      v122.size.height = v95;
      v122.size.width = v96;
      v115 = CGRectIntersection(*(&v70 - 3), v122);
      LODWORD(v74) = llround(v115.size.width);
      LODWORD(v75) = llround(v115.size.height);
      v76 = v74 | (v75 << 32);
      if (v76 == (var0 | (v22 << 32)))
      {
        v51 = v35;
        ValidBufferRect = v98;
        v52 = v99;
        v53 = r2;
      }

      else
      {
        x = v115.origin.x;
        y = v115.origin.y;
        width = v115.size.width;
        v80 = v115.size.height;
        v81 = FigCaptureAspectRatioForDimensions(var0 | (v22 << 32));
        v82 = FigCaptureAspectRatioForDimensions(v76);
        if (v81 <= v82)
        {
          v83 = 1.0;
        }

        else
        {
          v83 = v81 / v82;
        }

        v89 = FigCaptureMetadataUtilitiesScaleRect2D(x, y, width, v80, v83);
        v48 = v94;
        FigCaptureMetadataUtilitiesScaleRect(v89, v90, v91, v92, 1.01);
        FigCaptureMetadataUtilitiesRoundRectToMultipleOf();
        v124.size.height = v97;
        v124.origin.x = v98;
        v124.origin.y = r2;
        v124.size.width = v99;
        v119 = CGRectIntersection(v118, v124);
        v125.origin.y = v66;
        v125.origin.x = v93;
        v125.size.height = v95;
        v125.size.width = v96;
        v120 = CGRectIntersection(v119, v125);
        ValidBufferRect = v120.origin.x;
        v53 = v120.origin.y;
        v52 = v120.size.width;
        v51 = v120.size.height;
        var0 = llround(v120.size.width);
      }
    }
  }

  else
  {
    v54 = v31;
    v51 = v35;
    v52 = v33;
    v53 = v54;
  }

  v55 = v9;
  if ([objc_msgSend(objc_msgSend(v23 "input")])
  {
    v112.origin.x = rect1;
    v112.origin.y = v46;
    v112.size.width = v48;
    v112.size.height = v50;
    v56 = CGRectIsNull(v112);
    v57 = v100;
    v58 = v101;
    if (!v56)
    {
      v57 = rect1;
    }

    v60 = v102;
    v59 = v103;
    if (!v56)
    {
      v59 = v46;
      v60 = v48;
      v58 = v50;
    }

    v113.origin.x = FigCaptureUpdateRectSizeAndMaintainCenter(v57, v59, v60, v58, var0);
    ValidBufferRect = v113.origin.x;
    v52 = v113.size.width;
    v61 = v113.origin.y;
    v104 = v113.size.height;
    v121.origin.x = rect1;
    v121.origin.y = v46;
    v121.size.width = v48;
    v121.size.height = v50;
    if (CGRectContainsRect(v113, v121) || !dword_1EB58E320)
    {
      v53 = v61;
      v51 = v104;
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_37_1();
      v53 = v61;
      if (v11)
      {
        BWStringFromCGRect(rect1, v46, v48, v50);
        v63 = v61;
        v51 = v104;
        BWStringFromCGRect(ValidBufferRect, v63, v52, v104);
        OUTLINED_FUNCTION_10_16();
        _os_log_send_and_compose_impl();
      }

      else
      {
        v51 = v104;
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  FigCaptureRectMidPoint((ValidBufferRect + SensorReadoutRect + *&v111) * v55, (v53 + v109 + *(&v111 + 1)) * v55, v52 * v55, v51 * v55);
  [objc_msgSend(v110 "configuration")];
  v86 = v85;
  v87 = v84;
  v88 = v85 == *MEMORY[0x1E695EFF8] && v84 == *(MEMORY[0x1E695EFF8] + 8);
  if (!v88 && ([objc_msgSend(objc_msgSend(v23 "input")] & 1) == 0)
  {
    v116.origin.x = OUTLINED_FUNCTION_3_1();
    CGRectOffset(v116, v86, v87);
    FigCaptureMetadataUtilitiesRoundDenormalizedRectToRawSensorCFABoundary(v107);
    OUTLINED_FUNCTION_26_2();
    v117.origin.y = (r2 + v109 + *(&v111 + 1)) * v55;
    v117.origin.x = (v98 + SensorReadoutRect + *&v111) * v55;
    v117.size.width = v99 * v55;
    v117.size.height = v97 * v55;
    v123.origin.x = v87;
    v123.origin.y = v86;
    v123.size.width = v9;
    v123.size.height = SensorReadoutRect;
    CGRectContainsRect(v117, v123);
  }

LABEL_60:
  OUTLINED_FUNCTION_3_1();
}

- (void)_auxiliaryTypesForFrame:(int)a3 captureType:(uint64_t)a4 captureFlags:(char)a5 deliverDeferredPhotoProxyImage:
{
  if (!a1)
  {
    return 0;
  }

  v10 = [MEMORY[0x1E695DF70] array];
  v11 = &unk_1F2243450;
  switch(a3)
  {
    case 10:
      if ((a4 & 0x100000) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 11:
      goto LABEL_14;
    case 12:
      if (a4 & 0x100000) != 0 && (a5)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 13:
      goto LABEL_13;
    default:
      if (a3 != 1 || (a4 & 0x40000000000) == 0 && ((a4 & 0x80) == 0 || ![objc_msgSend(a1 configuration] || (a5 & 1) != 0))
      {
        goto LABEL_15;
      }

LABEL_13:
      v11 = &unk_1F2243438;
LABEL_14:
      [v10 addObject:v11];
LABEL_15:
      if ([objc_msgSend(a1 configuration])
      {
        v12 = CMGetAttachment(a2, *off_1E798A3C8, 0);
        v13 = BWStillImageCaptureFrameFlagsForSampleBuffer(a2);
        v14 = [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B350), "BOOLValue"}];
        if ((a4 & 0x800) != 0)
        {
          v15 = (a4 & 0x80) == 0 && a3 == 1;
          v16 = v15;
          if (a3 == 7 || v16 || ((v13 & 0x14) != 0) | v14 & 1)
          {
            [v10 addObjectsFromArray:&unk_1F2248418];
          }
        }
      }

      if (![v10 count])
      {
        [v10 addObject:&unk_1F2243420];
      }

      break;
  }

  return v10;
}

- (id)externalMemoryDescriptorForResolutionFlavors:(id)a3
{
  v6 = @"PrepareDescriptorByPipelineType";
  v7 = [(BWSoftISPProcessorController *)self _prepareDescriptorByPipelineTypeForResolutionFlavors:a3 perFrameProcessing:0];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = objc_alloc(MEMORY[0x1E69916C8]);
  [(BWStillImageProcessorControllerConfiguration *)[(BWStillImageProcessorController *)self configuration] cmiResourceEnabled];
  return -[SoftISPProcessor externalMemoryDescriptorForConfiguration:](self->_processor, "externalMemoryDescriptorForConfiguration:", [OUTLINED_FUNCTION_47_1() initWithMaxInputDimensions:? inputPixelFormat:? maxOutputDimensions:? cmiResourceEnabled:? processorSpecificOptions:?]);
}

- (void)outputFrameEnqueued:(id)a3
{
  sbuf = 0;
  v5 = [(BWStillImageProcessorController *)self currentRequest];
  v6 = [a3 pixelBuffer];
  Width = CVPixelBufferGetWidth(v6);
  Height = CVPixelBufferGetHeight(v6);
  if ([objc_msgSend(objc_msgSend(a3 "processingOptions")] && (objc_msgSend(objc_msgSend(objc_msgSend(a3, "metadata"), "objectForKeyedSubscript:", *off_1E798B5E8), "BOOLValue") & 1) != 0 || (-[BWStillImageProcessorControllerInput frame](-[BWStillImageProcessorControllerRequest input](v5, "input"), "frame"), v9 = objc_msgSend(OUTLINED_FUNCTION_18_0(), "pixelBuffer"), -[BWStillImageProcessorControllerRequest setErr:](v5, "setErr:", BWCMSampleBufferCreateCopyWithNewPixelBuffer(v6, v9, &self->_outputFormatDescription, &sbuf)), -[BWStillImageProcessorControllerRequest err](v5, "err")))
  {
    v11 = 0;
  }

  else
  {
    if ([a3 resource])
    {
      ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
      CVBufferSetAttachment(ImageBuffer, *off_1E798A0B8, [a3 resource], kCVAttachmentMode_ShouldPropagate);
    }

    v11 = [objc_msgSend(a3 "metadata")];
    if ([(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v5 input] captureStreamSettings] isFirstAdaptiveBracketingFrame:[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v5 input] frame]])
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      BWCopyWhiteBalanceMetadata(v11, v12);

      self->_digitalFlashAWBMetadata = v12;
      v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      BWCopyLTMMetadata(v11, v13);

      self->_digitalFlashLTMMetadata = v13;
      [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B2A8), "doubleValue"}];
      self->_digitalFlashLTMExposureTime = v14;
      FigCaptureComputeImageGainFromMetadata();
    }

    CMSetAttachment(sbuf, *off_1E798A3C8, v11, 1u);
    v15 = [a3 getAuxiliaryPixelBufferForAuxiliaryType:1];
    if (v15)
    {
      v23 = OUTLINED_FUNCTION_14_12(v15, v16, v17, v18, v19, v20, v21, v22, v72, *(&v72 + 1), *&v73.width, *&v73.height, *&size.width, *&size.height, v75, sbuf);
      CMSetAttachment(v23, *off_1E798A358, v24, 1u);
    }

    v25 = [a3 getAuxiliaryPixelBufferForAuxiliaryType:3];
    if (v25)
    {
      v33 = OUTLINED_FUNCTION_14_12(v25, v26, v27, v28, v29, v30, v31, v32, v72, *(&v72 + 1), *&v73.width, *&v73.height, *&size.width, *&size.height, v75, sbuf);
      OUTLINED_FUNCTION_7_2(v33, 0x1F21AAB10, v34, &self->_auxSashimiRawFormatDescription);
    }

    v35 = [a3 getAuxiliaryPixelBufferForAuxiliaryType:4];
    if (v35)
    {
      v43 = OUTLINED_FUNCTION_14_12(v35, v36, v37, v38, v39, v40, v41, v42, v72, *(&v72 + 1), *&v73.width, *&v73.height, *&size.width, *&size.height, v75, sbuf);
      OUTLINED_FUNCTION_7_2(v43, 0x1F21AAB70, v44, &self->_auxFocusPixelH0FormatDescription);
    }

    v45 = [a3 getAuxiliaryPixelBufferForAuxiliaryType:5];
    if (v45)
    {
      v53 = OUTLINED_FUNCTION_14_12(v45, v46, v47, v48, v49, v50, v51, v52, v72, *(&v72 + 1), *&v73.width, *&v73.height, *&size.width, *&size.height, v75, sbuf);
      OUTLINED_FUNCTION_7_2(v53, 0x1F21AAB90, v54, &self->_auxFocusPixelH1FormatDescription);
    }

    if ([a3 lscPixelBuffer] && !OUTLINED_FUNCTION_7_2(sbuf, 0x1F21AAE70, objc_msgSend(a3, "lscPixelBuffer"), &self->_lscFormatDescription) && objc_msgSend(objc_msgSend(a3, "lscParameters"), "count"))
    {
      AttachedMedia = BWSampleBufferGetAttachedMedia(sbuf, 0x1F21AAE70);
      CMSetAttachment(AttachedMedia, *off_1E798A3B0, [MEMORY[0x1E695DF20] dictionaryWithDictionary:{objc_msgSend(a3, "lscParameters")}], 1u);
      CMSetAttachment(sbuf, *off_1E798A3A8, AttachedMedia, 1u);
    }

    if ([a3 flashLSCPixelBuffer])
    {
      OUTLINED_FUNCTION_7_2(sbuf, 0x1F21AAE90, [a3 flashLSCPixelBuffer], &self->_flashLSCFormatDescription);
    }

    v56 = [(SoftISPProcessor *)self->_processor pipelineType];
    if (self && v56 == 19)
    {
      [v11 setObject:&unk_1F22432D0 forKeyedSubscript:*off_1E798A698];
      [OUTLINED_FUNCTION_47_1() setObject:? forKeyedSubscript:?];
    }

    size = *MEMORY[0x1E695F060];
    v57 = CMGetAttachment(sbuf, @"OriginalCameraIntrinsicMatrixReferenceDimensions", 0);
    if (v57 && CGSizeMakeWithDictionaryRepresentation(v57, &size))
    {
      v77.width = Width;
      v77.height = Height;
      v58 = CGSizeCreateDictionaryRepresentation(v77);
      v66 = OUTLINED_FUNCTION_14_12(v58, v59, v60, v61, v62, v63, v64, v65, v72, *(&v72 + 1), *&v73.width, *&v73.height, *&size.width, *&size.height, v75, sbuf);
      CMSetAttachment(v66, @"OriginalCameraIntrinsicMatrixReferenceDimensions", v67, 1u);
      v72 = *MEMORY[0x1E695F050];
      v73 = *(MEMORY[0x1E695F050] + 16);
      [a3 processingOptions];
      if (FigCFDictionaryGetCGRectIfPresent())
      {
        v69 = *(&v72 + 1);
        v68 = *&v72;
        v71 = v73.height;
        v70 = v73.width;
      }

      else
      {
        v70 = size.width;
        v71 = size.height;
        v72 = 0uLL;
        v73 = size;
        v69 = 0.0;
        v68 = 0.0;
      }

      BWUpdateCameraIntrinsicsMatrixOnSampleBuffer(sbuf, @"OriginalCameraIntrinsicMatrix", 0, 0, v68, v69, v70, v71, 0.0, 0.0, Width, Height);
    }

    [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)v5 input:v72] setFrame:0];
    [(BWStillImageProcessorControllerRequest *)v5 setOutputFrame:sbuf];
  }

  if (sbuf)
  {
    CFRelease(sbuf);
  }
}

- (id)_lossyCompressionLevelByPipelineType
{
  if (result)
  {
    v1 = result;
    v2 = [MEMORY[0x1E695DF90] dictionary];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = BWAllStillImageResolutionFlavors();
    v4 = [-[BWSoftISPProcessorController _prepareDescriptorByPipelineTypeForResolutionFlavors:perFrameProcessing:](v1 v3];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          switch([v9 intValue])
          {
            case 0x10u:
            case 0x13u:
              v12 = [objc_msgSend(v1 "configuration")];
              if ((v12 - 1) < 3)
              {
                v13 = (v12 + 1);
              }

              else
              {
                v13 = 0;
              }

              [MEMORY[0x1E696AD98] numberWithUnsignedInt:v13];
              v10 = OUTLINED_FUNCTION_4();
              break;
            default:
              v10 = v2;
              v11 = &unk_1F2243420;
              break;
          }

          [v10 setObject:v11 forKeyedSubscript:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v6);
    }

    return [v2 copy];
  }

  return result;
}

- (id)_prepareDescriptorWithDimensions:(id)result
{
  if (result)
  {
    v3 = result;
    v4 = objc_alloc_init(NSClassFromString(&cfstr_Softispprepare.isa));
    [v4 setMaximumWidth:a2];
    [v4 setMaximumHeight:a2 >> 32];
    [v4 setInputPixelFormat:objc_msgSend(objc_msgSend(v3, "configuration"), "sensorRawPixelFormat")];
    [v4 setStageConfigMode:1];

    return v4;
  }

  return result;
}

@end