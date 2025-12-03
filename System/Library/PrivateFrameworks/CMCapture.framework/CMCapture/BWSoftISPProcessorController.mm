@interface BWSoftISPProcessorController
- (BOOL)_faceDetectionEnabledForFrame:(_BOOL8)result processingMode:(const void *)mode captureType:(int)type captureFlags:(int)flags;
- (BOOL)_gnuEnabledForFrame:(unsigned int)frame processingMode:(uint64_t)mode captureFlags:(uint64_t)flags tuningType:;
- (BOOL)_opcEnabledForFrame:(uint64_t)frame processingMode:(uint64_t)mode captureFlags:(uint64_t)flags tuningType:;
- (BOOL)_rnfEnabledForFrame:(int)frame processingMode:(char)mode captureFlags:;
- (BWSoftISPProcessorController)initWithConfiguration:(id)configuration;
- (__CVBuffer)newOutputAuxiliaryPixelBufferForUniqueID:(unint64_t)d pixelFormat:(unsigned int)format width:(unint64_t)width height:(unint64_t)height alignment:(unint64_t)alignment;
- (__CVBuffer)newOutputPixelBufferForUniqueID:(unint64_t)d pixelFormat:(unsigned int)format width:(unint64_t)width height:(unint64_t)height;
- (double)_awbRegionOfInterestWithinSensorCropRectForFrame:(int)frame processingMode:(unint64_t)mode captureFlags:;
- (double)_inputBufferRectWithinSensorCropRectForFrame:(uint64_t)frame;
- (id)_lossyCompressionLevelByPipelineType;
- (id)_prepareDescriptorByPipelineTypeForResolutionFlavors:(char)flavors perFrameProcessing:;
- (id)_prepareDescriptorWithDimensions:(id)result;
- (id)externalMemoryDescriptorForResolutionFlavors:(id)flavors;
- (id)requestForInput:(id)input delegate:(id)delegate errOut:(int *)out;
- (int)prepare;
- (uint64_t)_addFrame:(id *)frame;
- (uint64_t)_awbModeForFrame:(int)frame processingMode:(int)mode captureType:(unint64_t)type captureFlags:(unint64_t)flags captureFrameFlags:;
- (uint64_t)_awbPurgeResourcesForFrameCount:(unint64_t)count captureFlags:;
- (uint64_t)_hrEnabledForFrame:(unsigned int)frame processingMode:(int)mode captureType:(uint64_t)type captureFlags:(char)flags captureFrameFlags:(int)frameFlags deliverDeferredPhotoProxyImage:;
- (uint64_t)_loadAndSetupSoftISPProcessor;
- (uint64_t)_ltmModeForFrame:(unsigned int)frame processingMode:(int)mode captureType:(unint64_t)type captureFlags:(unsigned int)flags captureFrameFlags:(char)frameFlags deliverDeferredPhotoProxyImage:;
- (uint64_t)_pipelineTypeForCaptureType:(uint64_t)type captureFlags:(int)flags processingMode:(int)mode gdcEnabled:(int)enabled isQuadra:;
- (uint64_t)_rawMBNREnabledForFrame:(int)frame processingMode:(uint64_t)mode captureType:(uint64_t)type captureFlags:(uint64_t)flags tuningType:;
- (uint64_t)_sfhrEnabledForFrame:(unsigned int)frame processingMode:(int)mode captureType:(uint64_t)type captureFlags:(char)flags captureFrameFlags:(uint64_t)frameFlags tuningType:;
- (uint64_t)_tuningTypeForFrame:(int)frame processingMode:(int)mode captureType:(uint64_t)type captureFlags:(char)flags captureFrameFlags:(int)frameFlags deliverDeferredPhotoProxyImage:;
- (unsigned)outputPixelFormatForCaptureType:(int)type captureFlags:(unint64_t)flags processingMode:(int)mode isQuadra:(BOOL)quadra;
- (unsigned)outputPixelFormatForInput:(id)input;
- (void)_allowUnclampedOutputsForFrame:(int)frame processingMode:;
- (void)_auxiliaryTypesForFrame:(int)frame captureType:(uint64_t)type captureFlags:(char)flags deliverDeferredPhotoProxyImage:;
- (void)_outputBufferRectWithinSensorCropRectForFrame:(void *)frame;
- (void)dealloc;
- (void)input:(id)input addFrame:(opaqueCMSampleBuffer *)frame resolutionFlavor:(int)flavor;
- (void)outputFrameEnqueued:(id)enqueued;
- (void)reset;
@end

@implementation BWSoftISPProcessorController

- (BWSoftISPProcessorController)initWithConfiguration:(id)configuration
{
  v9.receiver = self;
  v9.super_class = BWSoftISPProcessorController;
  v4 = [(BWStillImageProcessorController *)&v9 initWithName:@"SoftISP" type:12 configuration:configuration];
  if (v4)
  {
    inputDimensions = [configuration inputDimensions];
    if (inputDimensions < 1 || SHIDWORD(inputDimensions) < 1 || ![configuration sensorRawPixelFormat] || (v6 = objc_autoreleasePoolPush(), v7 = -[BWSoftISPProcessorController _loadAndSetupSoftISPProcessor](v4), objc_autoreleasePoolPop(v6), v7))
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

- (unsigned)outputPixelFormatForCaptureType:(int)type captureFlags:(unint64_t)flags processingMode:(int)mode isQuadra:(BOOL)quadra
{
  v7 = [(BWSoftISPProcessorController *)self _pipelineTypeForCaptureType:type captureFlags:flags processingMode:mode gdcEnabled:0 isQuadra:quadra];
  processor = self->_processor;
  sensorRawPixelFormat = [(BWStillImageProcessorControllerConfiguration *)[(BWStillImageProcessorController *)self configuration] sensorRawPixelFormat];

  return [(SoftISPProcessor *)processor outputPixelFormatForPipeline:v7 inputPixelFormat:sensorRawPixelFormat];
}

- (unsigned)outputPixelFormatForInput:(id)input
{
  v5 = [objc_msgSend(CMGetAttachment(objc_msgSend(input "frame")] == 1;
  v6 = [objc_msgSend(input "captureStreamSettings")];
  v7 = [objc_msgSend(input "captureStreamSettings")];
  processingMode = [input processingMode];

  return [(BWSoftISPProcessorController *)self outputPixelFormatForCaptureType:v6 captureFlags:v7 processingMode:processingMode isQuadra:v5];
}

- (void)reset
{
  [(SoftISPProcessor *)self->_processor resetState];
  processor = self->_processor;

  [(SoftISPProcessor *)processor setDelegate:0];
}

- (id)requestForInput:(id)input delegate:(id)delegate errOut:(int *)out
{
  v6 = [[BWSoftISPProcessorControllerRequest alloc] initWithInput:input delegate:delegate];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -12786;
  }

  if (out)
  {
    *out = v7;
  }

  return v6;
}

- (int)prepare
{
  currentRequest = [(BWStillImageProcessorController *)self currentRequest];
  [(SoftISPProcessor *)self->_processor setDelegate:self];
  input = [(BWStillImageProcessorControllerRequest *)currentRequest input];
  if ([(BWStillImageProcessorControllerInput *)input frame])
  {
    [(BWStillImageProcessorControllerInputUpdatesDelegate *)[(BWStillImageProcessorControllerInput *)input delegate] input:input addFrame:[(BWStillImageProcessorControllerInput *)input frame] resolutionFlavor:[(BWStillImageProcessorControllerInput *)input resolutionFlavor]];
  }

  return 0;
}

- (__CVBuffer)newOutputPixelBufferForUniqueID:(unint64_t)d pixelFormat:(unsigned int)format width:(unint64_t)width height:(unint64_t)height
{
  heightCopy = height;
  widthCopy = width;
  v9 = [(BWStillImageProcessorController *)self currentRequest:d];
  delegate = [(BWStillImageProcessorControllerRequest *)v9 delegate];
  input = [(BWStillImageProcessorControllerRequest *)v9 input];

  return [(BWStillImageProcessorControllerDelegate *)delegate processorController:self newOutputPixelBufferForProcessorInput:input type:1 dimensions:widthCopy | (heightCopy << 32)];
}

- (__CVBuffer)newOutputAuxiliaryPixelBufferForUniqueID:(unint64_t)d pixelFormat:(unsigned int)format width:(unint64_t)width height:(unint64_t)height alignment:(unint64_t)alignment
{
  alignmentCopy = alignment;
  heightCopy = height;
  widthCopy = width;
  v10 = *&format;
  currentRequest = [(BWStillImageProcessorController *)self currentRequest];
  LODWORD(v14) = alignmentCopy;
  return [(BWStillImageProcessorControllerDelegate *)[(BWStillImageProcessorControllerRequest *)currentRequest delegate] processorController:self newOutputPixelBufferForProcessorInput:[(BWStillImageProcessorControllerRequest *)currentRequest input] type:28 attachedMediaKey:0 pixelFormat:v10 dimensions:widthCopy | (heightCopy << 32) dimensionAlignment:v14];
}

- (uint64_t)_loadAndSetupSoftISPProcessor
{
  if (self)
  {
    selfCopy = self;
    v2 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
    if (!self[8])
    {
      configuration = [self configuration];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      dictionary3 = [MEMORY[0x1E695DF90] dictionary];
      dictionary4 = [MEMORY[0x1E695DF90] dictionary];
      dictionary5 = [MEMORY[0x1E695DF90] dictionary];
      dictionary6 = [MEMORY[0x1E695DF90] dictionary];
      [dictionary6 setObject:-[FigCaptureCameraParameters commonNRFParameters](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters forKeyedSubscript:{"sharedInstance"), "commonNRFParameters"), @"NRFParameters"}];
      [dictionary setObject:dictionary6 forKeyedSubscript:@"Common"];
      v44 = dictionary;
      [dictionary setObject:dictionary3 forKeyedSubscript:@"DefaultSensorIDs"];
      nrfVersion = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters nrfVersion];
      if (nrfVersion)
      {
        v37 = nrfVersion;
        v38 = selfCopy;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        obj = [configuration sensorConfigurationsByPortType];
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
              v13 = configuration;
              v14 = [objc_msgSend(configuration "sensorConfigurationsByPortType")];
              sensorIDString = [v14 sensorIDString];
              [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", +[FigCaptureCameraParameters sensorIDFromSensorIDString:](FigCaptureCameraParameters, "sensorIDFromSensorIDString:", sensorIDString)), v12}];
              [dictionary3 setObject:sensorIDString forKeyedSubscript:v12];
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
              v57 = sensorIDString;
              v55[0] = @"SoftISPTuning";
              v55[1] = @"ModuleConfig";
              v56[0] = v17;
              v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];
              [v44 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v58, &v57, 1), v12}];
              [dictionary5 setObject:objc_msgSend(v14 forKeyedSubscript:{"cameraInfo"), v12}];
              v20 = v14;
              configuration = v13;
              [dictionary4 setObject:objc_msgSend(v20 forKeyedSubscript:{"moduleCalibration"), v12}];
            }

            v9 = [obj countByEnumeratingWithState:&v60 objects:v59 count:16];
          }

          while (v9);
        }

        if (![v44 count])
        {
          v35 = 4294954516;
          selfCopy = v38;
          v2 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
          goto LABEL_44;
        }

        v21 = BWLoadProcessorBundle(@"NRF", v37);
        selfCopy = v38;
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

              [OUTLINED_FUNCTION_5_34() setCameraInfoByPortType:dictionary5];
              [OUTLINED_FUNCTION_5_34() setModuleCalibrationByPortType:dictionary4];
              [OUTLINED_FUNCTION_5_34() setTuningParameters:v44];
              [configuration metalCommandQueue];
              [OUTLINED_FUNCTION_5_34() setMetalCommandQueue:?];
              [OUTLINED_FUNCTION_5_34() setSupportedPipelineTypes:v24];
              [(BWSoftISPProcessorController *)v38 _lossyCompressionLevelByPipelineType];
              [OUTLINED_FUNCTION_5_34() setOutputCompressionLevelByPipeline:?];
              setup = [OUTLINED_FUNCTION_5_34() setup];
              if (!setup)
              {
                v38[9] = [dictionary2 copy];
                v51 = 0u;
                v52 = 0u;
                v53 = 0u;
                v54 = 0u;
                inputDimensionsByResolutionFlavorByPortType = [configuration inputDimensionsByResolutionFlavorByPortType];
                v27 = [inputDimensionsByResolutionFlavorByPortType countByEnumeratingWithState:&v51 objects:v50 count:16];
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
                        objc_enumerationMutation(inputDimensionsByResolutionFlavorByPortType);
                      }

                      v31 = [objc_msgSend(configuration "inputDimensionsByResolutionFlavorByPortType")];
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

                    v28 = [inputDimensionsByResolutionFlavorByPortType countByEnumeratingWithState:&v51 objects:v50 count:16];
                  }

                  while (v28);
                }

                return 0;
              }

              v35 = setup;
            }

            else
            {
              v35 = 4294954516;
            }

LABEL_44:

            *(selfCopy + v2[345]) = 0;
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

- (uint64_t)_pipelineTypeForCaptureType:(uint64_t)type captureFlags:(int)flags processingMode:(int)mode gdcEnabled:(int)enabled isQuadra:
{
  if (result)
  {
    switch(flags)
    {
      case 0:
      case 7:
        v6 = 0;
        v7 = 1;
        switch(a2)
        {
          case 1:
            if (mode)
            {
              v6 = 19;
            }

            else
            {
              v6 = 16;
            }

            v7 = (type & 0x80) == 0;
            if ((type & 0x80) != 0)
            {
              v6 = 0;
            }

            goto LABEL_22;
          case 2:
          case 7:
          case 10:
            goto LABEL_4;
          case 11:
            if (mode)
            {
              v6 = 19;
            }

            else
            {
              v6 = 16;
            }

            if ((type & 0x800000000) != 0)
            {
              v6 = 26;
            }

            goto LABEL_21;
          case 12:
          case 13:
            if (mode)
            {
              goto LABEL_39;
            }

            v8 = enabled == 0;
            v6 = 20;
            v9 = 24;
            break;
          default:
            goto LABEL_22;
        }

        goto LABEL_19;
      case 1:
LABEL_4:
        v8 = mode == 0;
        v6 = 16;
        v9 = 19;
LABEL_19:
        if (!v8)
        {
          v6 = v9;
        }

        goto LABEL_21;
      case 2:
        if (mode)
        {
          goto LABEL_39;
        }

        v7 = 1;
        v6 = 16;
        goto LABEL_22;
      case 3:
        if (mode)
        {
LABEL_39:
          result = 0;
        }

        else
        {
          v7 = 1;
          v6 = 21;
LABEL_22:
          v10 = v7 | mode;
          if (enabled)
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
        if (!enabled || (mode & 1) != 0)
        {
          return result;
        }

        v7 = 1;
        v6 = 51;
        goto LABEL_22;
      case 5:
        result = 0;
        if (!enabled || (mode & 1) != 0)
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

- (void)input:(id)input addFrame:(opaqueCMSampleBuffer *)frame resolutionFlavor:(int)flavor
{
  if (frame && (v6 = *&flavor, v9 = [objc_msgSend(CMGetAttachment(frame *off_1E798A3C8] == 1, v10 = objc_msgSend(objc_msgSend(input, "captureStreamSettings"), "captureType"), v11 = objc_msgSend(objc_msgSend(input, "captureStreamSettings"), "captureFlags"), v12 = objc_msgSend(input, "processingMode"), v13 = -[BWSoftISPProcessorController _pipelineTypeForCaptureType:captureFlags:processingMode:gdcEnabled:isQuadra:](self, v10, v11, v12, objc_msgSend(input, "gdcEnabled"), v9), v29 = objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v6), (v14 = objc_msgSend(-[BWSoftISPProcessorController _prepareDescriptorByPipelineTypeForResolutionFlavors:perFrameProcessing:](self, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v29, 1), 1), "objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v13))) != 0))
  {
    v15 = v14;
    [v14 setSensorID:{objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_sensorIDByPortType, "objectForKeyedSubscript:", objc_msgSend(input, "portType")), "unsignedIntValue")}];
    [v15 setInputPixelFormat:-[BWStillImageProcessorControllerConfiguration sensorRawPixelFormat](-[BWStillImageProcessorController configuration](self, "configuration"), "sensorRawPixelFormat")];
    if ([(BWStillImageProcessorControllerConfiguration *)[(BWStillImageProcessorController *)self configuration] cmiResourceEnabled])
    {
      v16 = [objc_msgSend(input "captureStreamSettings")] == 12 || objc_msgSend(objc_msgSend(input, "captureStreamSettings"), "captureType") == 13;
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
        name = [(BWStillImageProcessorController *)self name];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%d)", v13];
        BWPhotoEncoderStringFromEncodingScheme(v6);
        *v24 = 136316419;
        *&v24[4] = "[BWSoftISPProcessorController input:addFrame:resolutionFlavor:]";
        *&v24[12] = 2113;
        *&v24[14] = name;
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
        [(BWStillImageProcessorControllerDelegate *)[(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest] delegate] processorController:self willAddSampleBuffer:frame processorInput:input];
      }

      v19 = [(BWSoftISPProcessorController *)&self->super.super.isa _addFrame:frame];
    }
  }

  else
  {
    v19 = 4294954516;
  }

  [(BWStillImageProcessorControllerRequest *)[(BWStillImageProcessorController *)self currentRequest:v22] setErr:v19];
  [(BWStillImageProcessorController *)self currentRequestChanged];
}

- (id)_prepareDescriptorByPipelineTypeForResolutionFlavors:(char)flavors perFrameProcessing:
{
  if (result)
  {
    v4 = result;
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    configuration = [v4 configuration];
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
      v8 = BWDimensionsWithResolutionFlavor([configuration inputDimensionsByResolutionFlavorByPortType], 1);
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
      v11 = BWDimensionsWithResolutionFlavor([configuration inputDimensionsByResolutionFlavorByPortType], 3);
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
      v14 = BWDimensionsWithResolutionFlavor([configuration inputDimensionsByResolutionFlavorByPortType], 4);
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
      v18 = BWDimensionsWithResolutionFlavor([configuration inputDimensionsByResolutionFlavorByPortType], 6);
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
      v24 = BWDimensionsWithResolutionFlavor([configuration inputDimensionsByResolutionFlavorByPortType], 2);
      v25 = FigCaptureLargestDimensionsFromDimensionsArray(v24);
      v52 = v25;
      v53 = v25 & 0xFFFFFFFF00000000;
    }

    else
    {
      v52 = 0;
      v53 = 0;
    }

    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
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

    if ([configuration standardYUVProcessingEnabled])
    {
      v49 = FigCaptureLargestDimensionsFromDimensionsArray(array2);
      [v58 setObject:-[BWSoftISPProcessorController _prepareDescriptorWithDimensions:](v57 forKeyedSubscript:{v49), &unk_1F2243360}];
      if ([configuration gdcEnabled])
      {
        [v58 setObject:-[BWSoftISPProcessorController _prepareDescriptorWithDimensions:](v57 forKeyedSubscript:{v49), &unk_1F2243378}];
      }
    }

    if ([configuration rawNightModeEnabled])
    {
      v50 = FigCaptureLargestDimensionsFromDimensionsArray(array2);
      [v58 setObject:-[BWSoftISPProcessorController _prepareDescriptorWithDimensions:](v57 forKeyedSubscript:{v50), &unk_1F2243390}];
    }

    if (([configuration deepFusionEnabled] & 1) != 0 || (objc_msgSend(configuration, "learnedFusionEnabled") & 1) != 0 || objc_msgSend(configuration, "learnedNREnabled"))
    {
      v45 = FigCaptureLargestDimensionsFromDimensionsArray(array2);
      [v58 setObject:-[BWSoftISPProcessorController _prepareDescriptorWithDimensions:](v57 forKeyedSubscript:{v45), &unk_1F22433A8}];
      if ([configuration quadraProcessingEnabled])
      {
        v46 = [objc_msgSend(objc_msgSend(v57 "configuration")];
        v47 = array2;
        if (v46)
        {
          if ([configuration qBinProcessingMode])
          {
            v47 = array2;
          }

          else
          {
            v47 = array;
          }
        }

        v48 = FigCaptureLargestDimensionsFromDimensionsArray(v47);
        [v58 setObject:-[BWSoftISPProcessorController _prepareDescriptorWithDimensions:](v57 forKeyedSubscript:{v48), &unk_1F22433C0}];
      }
    }

    if ([configuration qBinProcessingMode])
    {
      v41 = FigCaptureLargestDimensionsFromDimensionsArray(array2);
      v42 = (v41 << flavors);
      v43 = (HIDWORD(v41) << flavors);
      if ([configuration qBinProcessingMode])
      {
        [v58 setObject:-[BWSoftISPProcessorController _prepareDescriptorWithDimensions:](v57 forKeyedSubscript:{v42 | (v43 << 32)), &unk_1F22433D8}];
      }

      if (([configuration qBinProcessingMode] & 2) != 0)
      {
        [v58 setObject:-[BWSoftISPProcessorController _prepareDescriptorWithDimensions:](v57 forKeyedSubscript:{v42 | (v43 << 32)), &unk_1F22433F0}];
      }
    }

    if ([configuration linearRGBForDisparityEnabled])
    {
      [v58 setObject:-[BWSoftISPProcessorController _prepareDescriptorWithDimensions:](v57 forKeyedSubscript:{v60), &unk_1F2243408}];
    }

    v44 = [v58 copy];

    return v44;
  }

  return result;
}

- (uint64_t)_addFrame:(id *)frame
{
  if (!frame)
  {
    return 0;
  }

  currentRequest = [frame currentRequest];
  v9 = [objc_msgSend(objc_msgSend(currentRequest "input")];
  v10 = [objc_msgSend(objc_msgSend(currentRequest "input")];
  BWStillImageCaptureFrameFlagsForSampleBuffer(a2);
  v11 = [objc_msgSend(currentRequest "input")];
  v109 = currentRequest;
  v12 = [objc_msgSend(objc_msgSend(currentRequest "input")];
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
  v98 = -[BWSoftISPProcessorController _awbPurgeResourcesForFrameCount:captureFlags:](frame, [objc_msgSend(objc_msgSend(objc_msgSend(v109 "input")], v10);
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
  v70 = [(BWSoftISPProcessorController *)frame _allowUnclampedOutputsForFrame:v69 processingMode:v11];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", 1), @"PDC"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v36), @"CAR"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v95), @"RNF"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v29), @"HR"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v70), @"AllowUnclampedOutputs"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v97 & (v70 ^ 1)), @"SFHR"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v96), @"RawMBNR"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v11 == 2), @"Aux"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v99), @"AWBMode"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v98), @"AWBPurgeResources"}];
  v110.origin.x = OUTLINED_FUNCTION_3();
  if (!CGRectIsNull(v110))
  {
    v111.origin.x = OUTLINED_FUNCTION_3();
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v111);
    [dictionary setObject:CFAutorelease(DictionaryRepresentation) forKeyedSubscript:@"AWBRegionOfInterestRectWithinSensorCropRect"];
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v100), @"LTMMode"}];
  v84 = MEMORY[0x1E696AD98];
  v85 = [objc_msgSend(frame "configuration")];
  if (v100)
  {
    v86 = v85;
  }

  else
  {
    v86 = 0;
  }

  [dictionary setObject:objc_msgSend(v84 forKeyedSubscript:{"numberWithInt:", v86), @"LTMHDRCurves"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v101), @"VSN"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v102), @"SSC"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v103), @"GNU"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v104), @"OPC"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v19), @"TuningType"}];
  v112.origin.x = v2;
  v112.origin.y = v3;
  v112.size.width = v4;
  v112.size.height = v5;
  v87 = CGRectCreateDictionaryRepresentation(v112);
  [dictionary setObject:CFAutorelease(v87) forKeyedSubscript:@"InputBufferRectWithinSensorCropRect"];
  v113.origin.y = v107;
  v113.origin.x = v108;
  v113.size.height = v105;
  v113.size.width = v106;
  v88 = CGRectCreateDictionaryRepresentation(v113);
  [dictionary setObject:CFAutorelease(v88) forKeyedSubscript:@"OutputBufferRectWithinSensorCropRect"];
  [dictionary setObject:v81 forKeyedSubscript:@"SoftISPAuxiliaryType"];
  v89 = [frame[8] addFrame:a2 uniqueID:objc_msgSend(v109 processingOptions:{"uniqueID"), dictionary}];
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
    [frame name];
    v94 = OUTLINED_FUNCTION_18_0();
    BWStillImageSampleBufferToShortDisplayString(v94);
    [v109 uniqueID];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v11];
    BWSoftISPProcessorOptionsToShortString(dictionary);
    OUTLINED_FUNCTION_6_27();
    OUTLINED_FUNCTION_19_10();
    OUTLINED_FUNCTION_10_16();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_12_18();
  return v91;
}

- (uint64_t)_tuningTypeForFrame:(int)frame processingMode:(int)mode captureType:(uint64_t)type captureFlags:(char)flags captureFrameFlags:(int)frameFlags deliverDeferredPhotoProxyImage:
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

    switch(frame)
    {
      case 0:
      case 5:
      case 7:
        if ((type & 0x80) != 0)
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
        if ((type & 0x200000000) != 0)
        {
          v18 = 142;
        }

        else
        {
          v18 = 22;
        }

        if ((flags & 8) == 0)
        {
          v18 = 0;
        }

        if ((type & 0x200000000) != 0)
        {
          v21 = 141;
        }

        else
        {
          v21 = 21;
        }

        if ((flags & 4) != 0)
        {
          v18 = v21;
        }

        if ((type & 0x200000000) != 0)
        {
          v20 = 140;
        }

        else
        {
          v20 = 20;
        }

LABEL_70:
        v19 = (flags & 2) == 0;
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

        v19 = (type & 0x100000000) == 0;
        v20 = 190;
        goto LABEL_71;
      default:
LABEL_7:
        result = 0;
        switch(mode)
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

            if ((type & 0x100000000) != 0)
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

            v19 = (type & 0x100000000) == 0;
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

            if ((flags & 8) == 0)
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

            if ((flags & 4) != 0)
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

            v19 = (type & 0x800000000) == 0;
            break;
          case 12:
            if ((type & 0x200000000) != 0)
            {
              if (v14 == 1)
              {
                return 143;
              }

              if ((flags & 2) != 0)
              {
                return 140;
              }

              if ((flags & 4) != 0)
              {
                return 141;
              }

              if ((flags & 8) != 0)
              {
                return 142;
              }

              return 0;
            }

            if ((flags & 2) != 0)
            {
              if (v16)
              {
                v18 = 120;
              }

              else
              {
                v18 = 20;
              }

              v19 = (type & 0x100000000) == 0;
              v20 = 130;
            }

            else if ((flags & 4) != 0)
            {
              if (v16)
              {
                v18 = 121;
              }

              else
              {
                v18 = 21;
              }

              v19 = (type & 0x100000000) == 0;
              v20 = 131;
            }

            else
            {
              if ((flags & 8) == 0)
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

              v19 = (type & 0x100000000) == 0;
              v20 = 132;
            }

            break;
          case 13:
            if (!v16)
            {
              return 0;
            }

            if ((flags & 8) != 0)
            {
              v18 = 212;
            }

            else
            {
              v18 = 0;
            }

            if (frameFlags)
            {
              v22 = 214;
            }

            else
            {
              v22 = 211;
            }

            if ((flags & 4) != 0)
            {
              v18 = v22;
            }

            v23 = frameFlags == 0;
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

- (BOOL)_rnfEnabledForFrame:(int)frame processingMode:(char)mode captureFlags:
{
  if (result)
  {
    v6 = [objc_msgSend(OUTLINED_FUNCTION_4_12(a2 *off_1E798A3C8)];
    result = v6 != 1;
    if (frame != 7)
    {
      if (frame == 6)
      {
        return 0;
      }

      if (frame)
      {
        return result;
      }
    }

    return (mode & 0x80) == 0 && v6 != 1;
  }

  return result;
}

- (uint64_t)_hrEnabledForFrame:(unsigned int)frame processingMode:(int)mode captureType:(uint64_t)type captureFlags:(char)flags captureFrameFlags:(int)frameFlags deliverDeferredPhotoProxyImage:
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
        if (frame <= 7)
        {
          if (((1 << frame) & 0xE2) != 0)
          {
            return 1;
          }

          else if (((1 << frame) & 0x11) != 0)
          {
            v18 = [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
            v20 = (type & 0x200000000) == 0 || v18 != 1;
            result = 1;
            if (type & 0x100000 | flags & 8 && v20)
            {
              if ((flags & 8) != 0)
              {
                return 0;
              }

              else
              {
                return (mode == 13) & ~frameFlags;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

- (uint64_t)_sfhrEnabledForFrame:(unsigned int)frame processingMode:(int)mode captureType:(uint64_t)type captureFlags:(char)flags captureFrameFlags:(uint64_t)frameFlags tuningType:
{
  if (!self)
  {
    goto LABEL_28;
  }

  v13 = CMGetAttachment(target, *off_1E798A3C8, 0);
  v14 = [objc_msgSend(self "configuration")];
  v15 = [objc_msgSend(self "configuration")];
  LOBYTE(v16) = 0;
  if ((type & 0x1000000) != 0)
  {
    return v16 & 1;
  }

  v17 = v15;
  if (((v14 | v15) & 1) == 0)
  {
    return v16 & 1;
  }

  v18 = [*(self + 64) tuningFlagForProcessingOption:@"SFHR" tuningType:frameFlags metadata:v13];
  if (!v18)
  {
    if ((type & 0x60000100000) == 0)
    {
      LOBYTE(v16) = 0;
      if (frame > 7 || ((1 << frame) & 0xF3) == 0)
      {
        return v16 & 1;
      }

      if ((flags & 8) != 0 || ((v14 & (type >> 3) | v17) & 1) == 0)
      {
        LOBYTE(v16) = 0;
      }

      else
      {
        LOBYTE(v16) = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(self "currentRequest")] ^ 1;
      }

      goto LABEL_6;
    }

    if ((flags & 4) != 0)
    {
      LOBYTE(v16) = 0;
      if (frame <= 7 && ((1 << frame) & 0xD1) != 0)
      {
        if ((mode & 0xFFFFFFFE) == 0xC)
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

        v16 = ((mode == 10) | (type >> 7)) & v14;
      }

      goto LABEL_6;
    }

LABEL_28:
    LOBYTE(v16) = 0;
    return v16 & 1;
  }

  LOBYTE(v16) = v18 == 1;
LABEL_6:
  if (!frame && mode == 11)
  {
    if ([objc_msgSend(objc_msgSend(objc_msgSend(self "currentRequest")])
    {
      *(self + 172) = v16;
    }

    else
    {
      LOBYTE(v16) = *(self + 172);
    }
  }

  return v16 & 1;
}

- (uint64_t)_rawMBNREnabledForFrame:(int)frame processingMode:(uint64_t)mode captureType:(uint64_t)type captureFlags:(uint64_t)flags tuningType:
{
  if (result)
  {
    v9 = result;
    v10 = OUTLINED_FUNCTION_4_12(a2, *off_1E798A3C8);
    v11 = [objc_msgSend(v10 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
    result = [*(v9 + 64) tuningFlagForProcessingOption:@"RawMBNR" tuningType:flags metadata:v10];
    if (result != 1)
    {
      if (result == 2)
      {
        return 0;
      }

      if ((frame - 1) >= 5)
      {
        if (frame != 7 && frame || (type & 0x80) != 0)
        {
          return 0;
        }

        return (type & 0x200000000) == 0 || v11 != 1;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

- (uint64_t)_awbModeForFrame:(int)frame processingMode:(int)mode captureType:(unint64_t)type captureFlags:(unint64_t)flags captureFrameFlags:
{
  if (result)
  {
    v11 = result;
    v12 = OUTLINED_FUNCTION_47_1();
    v15 = CMGetAttachment(v12, v13, v14);
    v16 = [objc_msgSend(v15 objectForKeyedSubscript:{*off_1E798B118), "BOOLValue"}];
    if (mode != 11 && (v16 & 1) != 0)
    {
      return 0;
    }

    else
    {
      result = 0;
      switch(frame)
      {
        case 0:
        case 4:
        case 7:
          if (mode == 11)
          {
            if ([objc_msgSend(objc_msgSend(objc_msgSend(v11 "currentRequest")])
            {
              if ((type & 0x800000000) != 0)
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

          else if (mode == 2)
          {
            result = [objc_msgSend(v15 objectForKeyedSubscript:{*off_1E798B150), "BOOLValue"}] ^ 1;
          }

          else
          {
            v17 = (flags >> 4) & 1;
            if (mode == 1)
            {
              LODWORD(v17) = 1;
            }

            if ((type & 0x8000000000) != 0)
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
          result = (type >> 39) & 1;
          break;
        case 2:
          result = 1;
          break;
        case 6:
          if ((type & 0x4000000000) == 0)
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

- (uint64_t)_awbPurgeResourcesForFrameCount:(unint64_t)count captureFlags:
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

    *(v5 + 136) |= (count >> 39) & (v6 > a2);
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

- (double)_awbRegionOfInterestWithinSensorCropRectForFrame:(int)frame processingMode:(unint64_t)mode captureFlags:
{
  if (!self)
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
  if (frame == 6 && (mode & 0x4000000000) != 0)
  {
    [objc_msgSend(objc_msgSend(self "currentRequest")];
    if (([mode isEqualToString:{objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_18_0(), "captureSettings"), "masterPortType")}] & 1) == 0)
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

- (uint64_t)_ltmModeForFrame:(unsigned int)frame processingMode:(int)mode captureType:(unint64_t)type captureFlags:(unsigned int)flags captureFrameFlags:(char)frameFlags deliverDeferredPhotoProxyImage:
{
  if (result)
  {
    v13 = result;
    v14 = OUTLINED_FUNCTION_47_1();
    v17 = CMGetAttachment(v14, v15, v16);
    v18 = [objc_msgSend(v17 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
    result = 1;
    if (frame <= 7)
    {
      if (((1 << frame) & 0x91) != 0)
      {
        switch(mode)
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
            result = (flags & 0x14) != 0;
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
              result = (flags >> 3) & 2;
            }

            break;
          case 12:
            if ((flags & 0x14) != 0)
            {
              v19 = [v13[8] deviceGeneration] < 200;
              result = v19;
              if (!v19 && (frameFlags & 1) == 0)
              {
                result = [objc_msgSend(v13 "configuration")] ^ 1;
              }
            }

            else
            {
              result = (type >> 33) & (v18 == 1);
            }

            break;
          default:
            return result;
        }
      }

      else
      {
        return ((1 << frame) & 0xC) == 0;
      }
    }
  }

  return result;
}

- (BOOL)_faceDetectionEnabledForFrame:(_BOOL8)result processingMode:(const void *)mode captureType:(int)type captureFlags:(int)flags
{
  if (result)
  {
    v6 = result;
    v7 = OUTLINED_FUNCTION_4_12(mode, *off_1E798A3C8);
    result = 0;
    if (!type && flags == 11)
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

- (BOOL)_gnuEnabledForFrame:(unsigned int)frame processingMode:(uint64_t)mode captureFlags:(uint64_t)flags tuningType:
{
  if (!self)
  {
    return 0;
  }

  v9 = OUTLINED_FUNCTION_4_12(a2, *off_1E798A3C8);
  v10 = [objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
  v11 = v10 != 1;
  v12 = [*(self + 64) tuningFlagForProcessingOption:@"GNU" tuningType:flags metadata:v9];
  if (v12)
  {
    return v12 == 1;
  }

  if (frame > 7)
  {
    return 0;
  }

  if (((1 << frame) & 0x2E) == 0)
  {
    if (((1 << frame) & 0x81) != 0)
    {
      return (mode & 0x800000080) == 0 && v10 != 1;
    }

    else
    {
      return frame == 4;
    }
  }

  return v11;
}

- (BOOL)_opcEnabledForFrame:(uint64_t)frame processingMode:(uint64_t)mode captureFlags:(uint64_t)flags tuningType:
{
  if (result)
  {
    return [*(result + 64) tuningFlagForProcessingOption:@"OPC" tuningType:flags metadata:{OUTLINED_FUNCTION_4_12(a2, *off_1E798A3C8)}] == 1;
  }

  return result;
}

- (void)_allowUnclampedOutputsForFrame:(int)frame processingMode:
{
  if (result)
  {
    LODWORD(result) = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(result "currentRequest")];
    if (frame == 2)
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

- (double)_inputBufferRectWithinSensorCropRectForFrame:(uint64_t)frame
{
  if (!frame)
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

- (void)_outputBufferRectWithinSensorCropRectForFrame:(void *)frame
{
  if (!frame)
  {
    goto LABEL_60;
  }

  currentRequest = [frame currentRequest];
  v5 = [objc_msgSend(currentRequest "input")];
  v6 = [objc_msgSend(currentRequest "input")];
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
  v17 = [objc_msgSend(frame "configuration")];
  var0 = v17;
  v19 = HIDWORD(v17);
  frameCopy = frame;
  if (v9 == 1)
  {
    v11 = FigCaptureDimensionsFromDictionaryRepresentation([objc_msgSend(objc_msgSend(objc_msgSend(frame "configuration")]);
    v20 = FigCaptureDimensionsFromDictionaryRepresentation([objc_msgSend(objc_msgSend(frame "configuration")]);
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
      v23 = currentRequest;
      if (((1 << v6) & 0x5A) != 0)
      {
        v11 = [objc_msgSend(frameCopy "configuration")];
        v24 = FigCaptureDimensionsFromDictionaryRepresentation([v11 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v6)}]);
        if ([objc_msgSend(objc_msgSend(currentRequest "input")])
        {
          softISPCropDimensionsForOptimizedLearnedFusionForSuperwide = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters softISPCropDimensionsForOptimizedLearnedFusionForSuperwide];
          v22 = HIDWORD(*&softISPCropDimensionsForOptimizedLearnedFusionForSuperwide);
          var0 = softISPCropDimensionsForOptimizedLearnedFusionForSuperwide.var0;
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

  v23 = currentRequest;
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
  [objc_msgSend(frameCopy "configuration")];
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

- (void)_auxiliaryTypesForFrame:(int)frame captureType:(uint64_t)type captureFlags:(char)flags deliverDeferredPhotoProxyImage:
{
  if (!self)
  {
    return 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  v11 = &unk_1F2243450;
  switch(frame)
  {
    case 10:
      if ((type & 0x100000) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 11:
      goto LABEL_14;
    case 12:
      if (type & 0x100000) != 0 && (flags)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 13:
      goto LABEL_13;
    default:
      if (frame != 1 || (type & 0x40000000000) == 0 && ((type & 0x80) == 0 || ![objc_msgSend(self configuration] || (flags & 1) != 0))
      {
        goto LABEL_15;
      }

LABEL_13:
      v11 = &unk_1F2243438;
LABEL_14:
      [array addObject:v11];
LABEL_15:
      if ([objc_msgSend(self configuration])
      {
        v12 = CMGetAttachment(a2, *off_1E798A3C8, 0);
        v13 = BWStillImageCaptureFrameFlagsForSampleBuffer(a2);
        v14 = [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798B350), "BOOLValue"}];
        if ((type & 0x800) != 0)
        {
          v15 = (type & 0x80) == 0 && frame == 1;
          v16 = v15;
          if (frame == 7 || v16 || ((v13 & 0x14) != 0) | v14 & 1)
          {
            [array addObjectsFromArray:&unk_1F2248418];
          }
        }
      }

      if (![array count])
      {
        [array addObject:&unk_1F2243420];
      }

      break;
  }

  return array;
}

- (id)externalMemoryDescriptorForResolutionFlavors:(id)flavors
{
  v6 = @"PrepareDescriptorByPipelineType";
  v7 = [(BWSoftISPProcessorController *)self _prepareDescriptorByPipelineTypeForResolutionFlavors:flavors perFrameProcessing:0];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v4 = objc_alloc(MEMORY[0x1E69916C8]);
  [(BWStillImageProcessorControllerConfiguration *)[(BWStillImageProcessorController *)self configuration] cmiResourceEnabled];
  return -[SoftISPProcessor externalMemoryDescriptorForConfiguration:](self->_processor, "externalMemoryDescriptorForConfiguration:", [OUTLINED_FUNCTION_47_1() initWithMaxInputDimensions:? inputPixelFormat:? maxOutputDimensions:? cmiResourceEnabled:? processorSpecificOptions:?]);
}

- (void)outputFrameEnqueued:(id)enqueued
{
  sbuf = 0;
  currentRequest = [(BWStillImageProcessorController *)self currentRequest];
  pixelBuffer = [enqueued pixelBuffer];
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  if ([objc_msgSend(objc_msgSend(enqueued "processingOptions")] && (objc_msgSend(objc_msgSend(objc_msgSend(enqueued, "metadata"), "objectForKeyedSubscript:", *off_1E798B5E8), "BOOLValue") & 1) != 0 || (-[BWStillImageProcessorControllerInput frame](-[BWStillImageProcessorControllerRequest input](currentRequest, "input"), "frame"), v9 = objc_msgSend(OUTLINED_FUNCTION_18_0(), "pixelBuffer"), -[BWStillImageProcessorControllerRequest setErr:](currentRequest, "setErr:", BWCMSampleBufferCreateCopyWithNewPixelBuffer(pixelBuffer, v9, &self->_outputFormatDescription, &sbuf)), -[BWStillImageProcessorControllerRequest err](currentRequest, "err")))
  {
    v11 = 0;
  }

  else
  {
    if ([enqueued resource])
    {
      ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
      CVBufferSetAttachment(ImageBuffer, *off_1E798A0B8, [enqueued resource], kCVAttachmentMode_ShouldPropagate);
    }

    v11 = [objc_msgSend(enqueued "metadata")];
    if ([(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)currentRequest input] captureStreamSettings] isFirstAdaptiveBracketingFrame:[(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)currentRequest input] frame]])
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
    v15 = [enqueued getAuxiliaryPixelBufferForAuxiliaryType:1];
    if (v15)
    {
      v23 = OUTLINED_FUNCTION_14_12(v15, v16, v17, v18, v19, v20, v21, v22, v72, *(&v72 + 1), *&v73.width, *&v73.height, *&size.width, *&size.height, v75, sbuf);
      CMSetAttachment(v23, *off_1E798A358, v24, 1u);
    }

    v25 = [enqueued getAuxiliaryPixelBufferForAuxiliaryType:3];
    if (v25)
    {
      v33 = OUTLINED_FUNCTION_14_12(v25, v26, v27, v28, v29, v30, v31, v32, v72, *(&v72 + 1), *&v73.width, *&v73.height, *&size.width, *&size.height, v75, sbuf);
      OUTLINED_FUNCTION_7_2(v33, 0x1F21AAB10, v34, &self->_auxSashimiRawFormatDescription);
    }

    v35 = [enqueued getAuxiliaryPixelBufferForAuxiliaryType:4];
    if (v35)
    {
      v43 = OUTLINED_FUNCTION_14_12(v35, v36, v37, v38, v39, v40, v41, v42, v72, *(&v72 + 1), *&v73.width, *&v73.height, *&size.width, *&size.height, v75, sbuf);
      OUTLINED_FUNCTION_7_2(v43, 0x1F21AAB70, v44, &self->_auxFocusPixelH0FormatDescription);
    }

    v45 = [enqueued getAuxiliaryPixelBufferForAuxiliaryType:5];
    if (v45)
    {
      v53 = OUTLINED_FUNCTION_14_12(v45, v46, v47, v48, v49, v50, v51, v52, v72, *(&v72 + 1), *&v73.width, *&v73.height, *&size.width, *&size.height, v75, sbuf);
      OUTLINED_FUNCTION_7_2(v53, 0x1F21AAB90, v54, &self->_auxFocusPixelH1FormatDescription);
    }

    if ([enqueued lscPixelBuffer] && !OUTLINED_FUNCTION_7_2(sbuf, 0x1F21AAE70, objc_msgSend(enqueued, "lscPixelBuffer"), &self->_lscFormatDescription) && objc_msgSend(objc_msgSend(enqueued, "lscParameters"), "count"))
    {
      AttachedMedia = BWSampleBufferGetAttachedMedia(sbuf, 0x1F21AAE70);
      CMSetAttachment(AttachedMedia, *off_1E798A3B0, [MEMORY[0x1E695DF20] dictionaryWithDictionary:{objc_msgSend(enqueued, "lscParameters")}], 1u);
      CMSetAttachment(sbuf, *off_1E798A3A8, AttachedMedia, 1u);
    }

    if ([enqueued flashLSCPixelBuffer])
    {
      OUTLINED_FUNCTION_7_2(sbuf, 0x1F21AAE90, [enqueued flashLSCPixelBuffer], &self->_flashLSCFormatDescription);
    }

    pipelineType = [(SoftISPProcessor *)self->_processor pipelineType];
    if (self && pipelineType == 19)
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
      [enqueued processingOptions];
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

    [(BWStillImageProcessorControllerInput *)[(BWStillImageProcessorControllerRequest *)currentRequest input:v72] setFrame:0];
    [(BWStillImageProcessorControllerRequest *)currentRequest setOutputFrame:sbuf];
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
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
              v10 = dictionary;
              v11 = &unk_1F2243420;
              break;
          }

          [v10 setObject:v11 forKeyedSubscript:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v6);
    }

    return [dictionary copy];
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