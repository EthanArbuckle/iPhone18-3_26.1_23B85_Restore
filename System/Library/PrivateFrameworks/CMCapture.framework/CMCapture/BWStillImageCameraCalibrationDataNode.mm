@interface BWStillImageCameraCalibrationDataNode
- (BWStillImageCameraCalibrationDataNode)initWithSensorConfigurationsByPortType:(id)type;
- (uint64_t)_clearCaptureRequestState;
- (uint64_t)_computeCameraCalibrationDataBetweenReferenceSampleBuffer:(opaqueCMSampleBuffer *)buffer auxiliarySampleBuffer:;
- (uint64_t)_loadAndConfigureCalibrationBundle;
- (uint64_t)_propagateDetectedObjects;
- (uint64_t)_receivedExpectedInputsForCaptureRequest;
- (uint64_t)_resolveProcessingMode;
- (uint64_t)processorOptions;
- (void)_sensorConfigurationWithPortraitTuningParameters;
- (void)dealloc;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWStillImageCameraCalibrationDataNode

- (BWStillImageCameraCalibrationDataNode)initWithSensorConfigurationsByPortType:(id)type
{
  v8.receiver = self;
  v8.super_class = BWStillImageCameraCalibrationDataNode;
  v4 = [(BWNode *)&v8 init];
  if (v4)
  {
    v4->_sensorConfigurationsByPortType = type;
    v5 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v4];
    [(BWNodeInput *)v5 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInput *)v5 setPassthroughMode:1];
    -[BWNodeInput setRetainedBufferCount:](v5, "setRetainedBufferCount:", [type count] - 1);
    [(BWNode *)v4 addInput:v5];

    v6 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v4];
    [(BWNodeOutput *)v6 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutput *)v6 setPassthroughMode:1];
    [(BWNode *)v4 addOutput:v6];

    v4->_inputSbufsByPortType = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v4;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3.receiver = self;
  v3.super_class = BWStillImageCameraCalibrationDataNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  if ([(BWStillImageCameraCalibrationDataNode *)self _loadAndConfigureCalibrationBundle])
  {
    [BWStillImageCameraCalibrationDataNode prepareForCurrentConfigurationToBecomeLive];
  }
}

- (void)dealloc
{
  if (self)
  {
    [-[FigCalibration metalContext](self->_calibrationProcessor "metalContext")];
  }

  [(BWStillImageCameraCalibrationDataNode *)self _clearCaptureRequestState];
  v3.receiver = self;
  v3.super_class = BWStillImageCameraCalibrationDataNode;
  [(BWNode *)&v3 dealloc];
}

- (uint64_t)_clearCaptureRequestState
{
  if (result)
  {
    v1 = result;

    *(v1 + 160) = 0;
    *(v1 + 152) = 0;
    allValues = [*(v1 + 176) allValues];
    OUTLINED_FUNCTION_43();
    v4 = [v3 countByEnumeratingWithState:? objects:? count:?];
    if (v4)
    {
      v5 = v4;
      v6 = MEMORY[0];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (MEMORY[0] != v6)
          {
            objc_enumerationMutation(allValues);
          }

          [*(v1 + 16) emitSampleBuffer:*(8 * i)];
        }

        OUTLINED_FUNCTION_43();
        v5 = [allValues countByEnumeratingWithState:? objects:? count:?];
      }

      while (v5);
    }

    result = [*(v1 + 176) removeAllObjects];
    *(v1 + 168) = 0;
  }

  return result;
}

- (uint64_t)_loadAndConfigureCalibrationBundle
{
  if (result)
  {
    v1 = result;
    v16 = 0;
    processorOptions = [(BWStillImageCameraCalibrationDataNode *)result processorOptions];
    if (processorOptions && (v3 = processorOptions, v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@V%d.bundle", @"/System/Library/VideoProcessors", @"Calibration", 1], (v5 = objc_msgSend(MEMORY[0x1E696AAE8], "bundleWithPath:", v4)) != 0))
    {
      v6 = v5;
      if (![v5 loadAndReturnError:&v16])
      {
        return 4294954510;
      }

      v7 = objc_alloc_init([v6 principalClass]);
      *(v1 + 184) = v7;
      if (v7)
      {
        [v7 setOptions:v3];
        v8 = [objc_msgSend(*(v1 + 8) "videoFormat")];
        v9 = [objc_msgSend(*(v1 + 8) "videoFormat")];
        v10 = *(v1 + 184);
        v12[0] = v8;
        v12[1] = v9;
        v13 = 1067030938;
        v14 = 0x1800000020;
        v15 = 0;
        [v10 setCalibrationConfig:v12];
        v11 = [*(v1 + 184) prepareToProcess:0];
        result = 0;
        if (!v11)
        {
          return result;
        }

        fig_log_get_emitter();
      }

      else
      {
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_0_2();
        FigDebugAssert3();
        OUTLINED_FUNCTION_2();
      }
    }

    else
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_0_2();
      FigDebugAssert3();
      OUTLINED_FUNCTION_2();
    }

    return FigSignalErrorAtGM();
  }

  return result;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (!buffer)
  {
    FigCaptureGetFrameworkRadarComponent();
    v21 = OUTLINED_FUNCTION_2_59();
    v22 = OUTLINED_FUNCTION_8_30(v21);
    if (OUTLINED_FUNCTION_12(v22))
    {
      v50 = 136315138;
      OUTLINED_FUNCTION_3_49("[BWStillImageCameraCalibrationDataNode renderSampleBuffer:forInput:]");
      OUTLINED_FUNCTION_7_36();
      OUTLINED_FUNCTION_15_17();
    }

    OUTLINED_FUNCTION_0_52();
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_5_45();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_13_2();
    v32 = OUTLINED_FUNCTION_4_5();
    v39 = 175;
    goto LABEL_49;
  }

  v8 = [CMGetAttachment(buffer *off_1E798A3C8];
  if (!v8)
  {
    FigCaptureGetFrameworkRadarComponent();
    v23 = OUTLINED_FUNCTION_2_59();
    v24 = OUTLINED_FUNCTION_8_30(v23);
    if (OUTLINED_FUNCTION_12(v24))
    {
      v50 = 136315138;
      OUTLINED_FUNCTION_3_49("[BWStillImageCameraCalibrationDataNode renderSampleBuffer:forInput:]");
      OUTLINED_FUNCTION_7_36();
      OUTLINED_FUNCTION_15_17();
    }

    OUTLINED_FUNCTION_0_52();
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_5_45();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_13_2();
    v32 = OUTLINED_FUNCTION_4_5();
    v39 = 178;
    goto LABEL_49;
  }

  v9 = v8;
  v10 = CMGetAttachment(buffer, @"StillImageSettings", 0);
  if (!v10)
  {
    FigCaptureGetFrameworkRadarComponent();
    v25 = OUTLINED_FUNCTION_2_59();
    v26 = OUTLINED_FUNCTION_8_30(v25);
    if (OUTLINED_FUNCTION_12(v26))
    {
      v50 = 136315138;
      OUTLINED_FUNCTION_3_49("[BWStillImageCameraCalibrationDataNode renderSampleBuffer:forInput:]");
      OUTLINED_FUNCTION_7_36();
      OUTLINED_FUNCTION_15_17();
    }

    OUTLINED_FUNCTION_0_52();
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_5_45();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_13_2();
    v32 = OUTLINED_FUNCTION_4_5();
    v39 = 181;
    goto LABEL_49;
  }

  if (![v10 cameraCalibrationDataDeliveryEnabled])
  {
LABEL_24:
    v5 = 1;
    goto LABEL_26;
  }

  v11 = CMGetAttachment(buffer, @"BWStillImageCaptureSettings", 0);
  if (!v11)
  {
    FigCaptureGetFrameworkRadarComponent();
    v27 = OUTLINED_FUNCTION_2_59();
    v28 = OUTLINED_FUNCTION_8_30(v27);
    if (OUTLINED_FUNCTION_12(v28))
    {
      v50 = 136315138;
      OUTLINED_FUNCTION_3_49("[BWStillImageCameraCalibrationDataNode renderSampleBuffer:forInput:]");
      OUTLINED_FUNCTION_7_36();
      OUTLINED_FUNCTION_15_17();
    }

    OUTLINED_FUNCTION_0_52();
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_5_45();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_13_2();
    v32 = OUTLINED_FUNCTION_4_5();
    v39 = 186;
LABEL_49:
    FigCapturePleaseFileRadar(v32, v33, v34, v35, v36, v39, v37, v38, v43);
    v40 = v4;
LABEL_50:
    free(v40);
    goto LABEL_26;
  }

  v12 = v11;
  captureSettings = self->_captureSettings;
  if (!captureSettings || (v14 = -[BWStillImageCaptureSettings settingsID](captureSettings, "settingsID"), v14 != [v12 settingsID]))
  {
    [(BWStillImageCameraCalibrationDataNode *)self _clearCaptureRequestState];
    self->_captureSettings = v12;
    [(BWStillImageCameraCalibrationDataNode *)self _resolveProcessingMode];
  }

  if ([(NSMutableDictionary *)self->_inputSbufsByPortType objectForKeyedSubscript:v9])
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v29 = OUTLINED_FUNCTION_2_59();
    v5 = v29;
    if (os_log_type_enabled(v29, v56))
    {
      v31 = v57;
    }

    else
    {
      v31 = v57 & 0xFFFFFFFE;
    }

    if (v31)
    {
      v50 = 136315394;
      v51 = "[BWStillImageCameraCalibrationDataNode renderSampleBuffer:forInput:]";
      v52 = 2112;
      v53 = BWPortTypeToDisplayString(v9, v30);
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_0_52();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v54 = 138412290;
    v55 = BWPortTypeToDisplayString(v9, v41);
    v42 = OUTLINED_FUNCTION_6_0();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v42, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageCameraCalibrationDataNode.m", 196, @"LastShownDate:BWStillImageCameraCalibrationDataNode.m:196", @"LastShownBuild:BWStillImageCameraCalibrationDataNode.m:196", 0);
    v40 = v42;
    goto LABEL_50;
  }

  [(NSMutableDictionary *)self->_inputSbufsByPortType setObject:buffer forKeyedSubscript:v9];
  if ([(BWStillImageCameraCalibrationDataNode *)self _receivedExpectedInputsForCaptureRequest])
  {
    processingMode = self->_processingMode;
    if ((processingMode | 2) == 3)
    {
      [(BWStillImageCameraCalibrationDataNode *)self _computeCameraCalibrationDataBetweenReferenceSampleBuffer:[(NSMutableDictionary *)self->_inputSbufsByPortType objectForKeyedSubscript:*off_1E798A0D0] auxiliarySampleBuffer:?];
      processingMode = self->_processingMode;
    }

    if ((processingMode & 0xFFFFFFFE) == 2)
    {
      [(BWStillImageCameraCalibrationDataNode *)self _computeCameraCalibrationDataBetweenReferenceSampleBuffer:[(NSMutableDictionary *)self->_inputSbufsByPortType objectForKeyedSubscript:*off_1E798A0C0] auxiliarySampleBuffer:?];
    }

    if (self->_propagatesDetectedObjects)
    {
      [(BWStillImageCameraCalibrationDataNode *)self _propagateDetectedObjects];
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    allValues = [(NSMutableDictionary *)self->_inputSbufsByPortType allValues];
    v17 = [allValues countByEnumeratingWithState:&v46 objects:v45 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v47;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v47 != v19)
          {
            objc_enumerationMutation(allValues);
          }

          [(BWNodeOutput *)self->super._output emitSampleBuffer:*(*(&v46 + 1) + 8 * i)];
        }

        v18 = [allValues countByEnumeratingWithState:&v46 objects:v45 count:16];
      }

      while (v18);
    }

    [(NSMutableDictionary *)self->_inputSbufsByPortType removeAllObjects];
    goto LABEL_24;
  }

  v5 = 0;
LABEL_26:
  if (!self->_processingMode)
  {
    [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
  }

  if (v5)
  {
    [(BWStillImageCameraCalibrationDataNode *)self _clearCaptureRequestState];
  }
}

- (uint64_t)_resolveProcessingMode
{
  if (result)
  {
    v1 = result;
    v2 = [MEMORY[0x1E695DFA8] set];
    captureStreamSettings = [*(v1 + 160) captureStreamSettings];
    OUTLINED_FUNCTION_43();
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (MEMORY[0] != v7)
          {
            objc_enumerationMutation(captureStreamSettings);
          }

          [v2 addObject:{objc_msgSend(*(8 * i), "portType")}];
        }

        OUTLINED_FUNCTION_43();
        v6 = [captureStreamSettings countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }

    *(v1 + 152) = v2;
    v9 = [v2 containsObject:*off_1E798A0D0];
    v10 = *off_1E798A0C0;
    if (v9)
    {
      v11 = [v2 containsObject:*off_1E798A0C0];
    }

    else
    {
      v11 = 0;
    }

    result = [v2 containsObject:v10];
    if (result)
    {
      result = [v2 containsObject:*off_1E798A0D8];
      if (result)
      {
        v12 = 2;
      }

      else
      {
        v12 = 0;
      }

      if ((result & 1 & v11) != 0)
      {
        v13 = 3;
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v12 = 0;
      v13 = 1;
    }

    if (v11)
    {
      v12 = v13;
    }

    *(v1 + 168) = v12;
  }

  return result;
}

- (uint64_t)_receivedExpectedInputsForCaptureRequest
{
  if (result)
  {
    v1 = result;
    v2 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(*(result + 176), "allKeys")}];
    v3 = *(v1 + 152);

    return [v2 isEqualToSet:v3];
  }

  return result;
}

- (uint64_t)_computeCameraCalibrationDataBetweenReferenceSampleBuffer:(opaqueCMSampleBuffer *)buffer auxiliarySampleBuffer:
{
  if (result)
  {
    [*(result + 184) setReferenceSampleBuffer:a2];
    [OUTLINED_FUNCTION_13_22() setAuxiliarySampleBuffer:buffer];
    process = [OUTLINED_FUNCTION_13_22() process];
    if (process <= 3 && process != 1)
    {
      calibrationMetadata = [OUTLINED_FUNCTION_13_22() calibrationMetadata];
      if (calibrationMetadata)
      {
        v8 = calibrationMetadata;
        v9 = sicn_cameraCalibrationDataMetadataAttachmentDictionaryFromCalibrationMetadata(calibrationMetadata, a2, 1);
        CMSetAttachment(a2, @"CameraCalibrationDataMetadata", v9, 1u);
        v10 = sicn_cameraCalibrationDataMetadataAttachmentDictionaryFromCalibrationMetadata(v8, buffer, 0);
        CMSetAttachment(buffer, @"CameraCalibrationDataMetadata", v10, 1u);
      }
    }

    [OUTLINED_FUNCTION_13_22() setReferenceSampleBuffer:0];
    v11 = OUTLINED_FUNCTION_13_22();

    return [v11 setAuxiliarySampleBuffer:0];
  }

  return result;
}

- (uint64_t)_propagateDetectedObjects
{
  if (result)
  {
    v1 = result;
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = [*(v1 + 176) allValues];
    result = [obj countByEnumeratingWithState:&v73 objects:v72 count:16];
    if (result)
    {
      v3 = result;
      v40 = array2;
      v42 = 0;
      v4 = 0;
      v5 = *v74;
      v6 = *off_1E798A3C8;
      v7 = *off_1E798B540;
      v8 = *off_1E798B710;
      do
      {
        v9 = 0;
        do
        {
          if (*v74 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v73 + 1) + 8 * v9);
          v11 = [CMGetAttachment(v10 v6];
          if ([objc_msgSend(CMGetAttachment(v10 v6])
          {
            v4 = [*(v1 + 144) objectForKeyedSubscript:v11];
            v42 = v10;
          }

          else
          {
            [array addObject:v10];
            [v40 addObject:{objc_msgSend(*(v1 + 144), "objectForKeyedSubscript:", v11)}];
          }

          ++v9;
        }

        while (v3 != v9);
        result = [obj countByEnumeratingWithState:&v73 objects:v72 count:16];
        v3 = result;
      }

      while (result);
      v19 = v40;
      v20 = v42;
      if (v42)
      {
        if (v4)
        {
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          result = OUTLINED_FUNCTION_16_19(0, v12, v13, v14, v15, v16, v17, v18, v40, v42, obj, array, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, 0);
          if (result)
          {
            v21 = result;
            LODWORD(v22) = 0;
            v23 = *v69;
            do
            {
              v24 = 0;
              v22 = v22;
              do
              {
                if (*v69 != v23)
                {
                  objc_enumerationMutation(v47);
                }

                v25 = *(*(&v68 + 1) + 8 * v24);
                [v4 floatValue];
                v27 = v26;
                [objc_msgSend(v19 objectAtIndexedSubscript:{v22), "floatValue"}];
                if (v27 >= v28)
                {
                  v48 = v4;
                  v49 = [v19 objectAtIndexedSubscript:v22];
                  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:2];
                  v30 = v25;
                  v31 = v20;
                }

                else
                {
                  v50 = v4;
                  v51 = [v19 objectAtIndexedSubscript:v22];
                  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:2];
                  v30 = v20;
                  v31 = v25;
                }

                v32 = BWProcessWiderAndNarrowerFOVBuffersForFacePropagation(v30, v31, v29);
                ++v22;
                ++v24;
              }

              while (v21 != v24);
              result = OUTLINED_FUNCTION_16_19(v32, v33, v34, v35, v36, v37, v38, v39, v41, v43, obja, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
              v21 = result;
            }

            while (result);
          }
        }
      }
    }
  }

  return result;
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  [(BWStillImageCameraCalibrationDataNode *)self _clearCaptureRequestState];
  output = self->super._output;

  [(BWNodeOutput *)output emitNodeError:error];
}

- (uint64_t)processorOptions
{
  if (result)
  {
    v1 = result;
    stereoDisparityParameters = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters stereoDisparityParameters];
    if (!stereoDisparityParameters)
    {
      _sensorConfigurationWithPortraitTuningParameters = [(BWStillImageCameraCalibrationDataNode *)v1 _sensorConfigurationWithPortraitTuningParameters];
      if (!_sensorConfigurationWithPortraitTuningParameters || (stereoDisparityParameters = [objc_msgSend(_sensorConfigurationWithPortraitTuningParameters "sensorIDDictionary")]) == 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_11();
LABEL_17:
        FigDebugAssert3();
        return 0;
      }
    }

    v3 = stereoDisparityParameters;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    allValues = [*(v1 + 128) allValues];
    v6 = [allValues countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          [dictionary setObject:objc_msgSend(*(*(&v15 + 1) + 8 * i) forKeyedSubscript:{"cameraInfo"), objc_msgSend(*(*(&v15 + 1) + 8 * i), "portType")}];
        }

        v7 = [allValues countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v7);
    }

    if (![dictionary count])
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      goto LABEL_17;
    }

    v10 = *off_1E798A970;
    v12[0] = *off_1E798A9D0;
    v12[1] = v10;
    v13[0] = v3;
    v13[1] = dictionary;
    return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  }

  return result;
}

- (void)_sensorConfigurationWithPortraitTuningParameters
{
  if (!self)
  {
    return 0;
  }

  v2 = +[FigCaptureCameraParameters sharedInstance];
  if ([(FigCaptureCameraParameters *)v2 stereoDisparityParameters])
  {
    return 0;
  }

  allValues = [*(self + 128) allValues];
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
      objc_enumerationMutation(allValues);
    }

    v9 = *(8 * v8);
    if (-[FigCaptureCameraParameters disparityVersionForPortType:sensorIDString:](v2, "disparityVersionForPortType:sensorIDString:", [v9 portType], objc_msgSend(v9, "sensorIDString")))
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      OUTLINED_FUNCTION_43();
      v6 = [allValues countByEnumeratingWithState:? objects:? count:?];
      if (v6)
      {
        goto LABEL_5;
      }

      return 0;
    }
  }
}

@end